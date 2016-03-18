package com.road7.blurswf;

import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

import SevenZip.LzmaAlone.CommandLine;

import com.road7.blurswf.data.Rect;
import com.road7.blurswf.data.tags.DoAbcTag;
import com.road7.blurswf.data.tags.MetadataTag;
import com.road7.blurswf.data.tags.Tag;
import com.road7.blurswf.data.tags.TagTypes;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.ZLibUtils;

public class SwfFile 
{
	public static final String FWS = "FWS";
	public static final String CWS  = "CWS";
	
	public static Boolean addEncryptDoABCTag  = false;
	
	public String signature;
	public byte version;
	public int fileLength;
	public Rect rect;
	public byte frameRate;
	public int frameCount;
	public List<Tag> tags = new ArrayList<Tag>();
	public ByteBuffer buffer;
	
	public SwfFile(ByteBuffer $buffer)
	{
		buffer = $buffer;
		try {
			parse();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void parse() throws Exception
	{
		if(buffer == null)
			return;
		signature = ByteTools.getStrFromBuf(buffer, 3);
		version = ByteTools.getByte(buffer);
		fileLength = ByteTools.getInt(buffer);//8232662
		
		ByteArrayInputStream inStream = new ByteArrayInputStream(buffer.array(),8,buffer.array().length) ;
		ByteArrayOutputStream outStream = new ByteArrayOutputStream();
		
		ByteBuffer tempByte;
		byte[] byteArr;
		if(signature.equals(CWS))
		{
			tempByte = ZLibUtils.decompress(inStream);
			byteArr = new byte[tempByte.capacity() + 8];
			buffer.position(0);
			buffer.get(byteArr, 0, 8);
			tempByte.get(byteArr,8,tempByte.capacity());
			buffer = ByteBuffer.wrap(byteArr);
		}else{
			int propertiesSize = 5;
			byte[] properties = new byte[propertiesSize];
			if (inStream.read(properties, 0, propertiesSize) != propertiesSize)
				throw new Exception("input .lzma file is too short");
			SevenZip.Compression.LZMA.Decoder decoder = new SevenZip.Compression.LZMA.Decoder();
			if (!decoder.SetDecoderProperties(properties))
				throw new Exception("Incorrect stream properties");
			long outSize = 0;
			for (int i = 0; i < 8; i++)
			{
				int v = inStream.read();
				if (v < 0)
					throw new Exception("Can't read stream size");
				outSize |= ((long)v) << (8 * i);
			}
//			SevenZip.Compression.LZMA.Decoder decoder = new SevenZip.Compression.LZMA.Decoder();
			try {
				decoder.Code(inStream,  outStream, outSize);
			} catch (IOException e) {
				e.printStackTrace();
			}
			byte[] bt = outStream.toByteArray();
			byteArr = new byte[bt.length + 8];
			buffer.position(0);
			buffer.get(byteArr, 0, 8);
			buffer = ByteBuffer.wrap(bt);
			buffer.get(byteArr, 8, bt.length);
			buffer = ByteBuffer.wrap(byteArr);

		}
		buffer.position(8);
		rect = new Rect(buffer,null);
		rect.read();
		buffer.position(buffer.position() + 1);
		frameRate = ByteTools.getByte(buffer);;
		frameCount = ByteTools.getUnsignedShort(buffer);
		readTags(buffer);
	}
	
	/**
	 * 读取tag列表
	 * @param bytes
	 */
	@SuppressWarnings("unchecked")
	private void readTags(ByteBuffer $buffer)
	{
		int tagType;
		int tagLength;
		Tag tag = null;
		String TagClass;
		int count  = 0;
		while($buffer.capacity() - $buffer.position() > 0)
		{
			tagType = readTagType($buffer);
			tagLength = readTagLength($buffer);
			TagClass = TagTypes.getTagClassByTagType(tagType);
			if(TagClass == null || TagClass.equals("null"))
			{
				TagClass = "Tag";
			}
			Class<Tag> cls;
			try {
				cls = (Class<Tag>) Class.forName("com.road7.blurswf.data.tags." + TagClass);
				tag = cls.newInstance(); 
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			tag.tagType = tagType;
			tag.tagLength = tagLength;
			
			if(tag.tagLength < 0 || $buffer.position() + tag.tagLength > $buffer.capacity())
			{
				//trace("error tag length:" + tag.tagLength);
				continue;
			}
			
			if(tagLength > 0)
			{
				byte[] byteArr = new byte[tagLength];
				$buffer.get(byteArr);
				tag.buffer = ByteBuffer.allocate(tagLength);
				tag.buffer.put(byteArr);
			}
			tag.parse();
			if(tagType == TagTypes.TAG_DOACTION || (tagType == TagTypes.TAG_DEFINEBITSJPEG2 || tagType == TagTypes.TAG_DEFINEBITS || tagType == TagTypes.TAG_DEFINEBITSLOSSLESS) && tagLength == 0)
			{
				continue;
			}
			tags.add(tag);
			count++;
			if(tagType == TagTypes.TAG_END)
			{
				break;
			}
		}
	}
	
	/**
	 * 读取tag类型，不移动position
	 * @param bytes
	 * @return
	 */
	private int readTagType(ByteBuffer $buffer)
	{
		long result = ByteTools.getUnsignedShort($buffer);
		result = result >> 6;
		
		$buffer.position($buffer.position() - 2);
		
		return (int)result;
	}
	
	/**
	 * 读取tag长度 不包括头本身占的长度
	 * @param bytes
	 * @return
	 *
	 */
	public int readTagLength(ByteBuffer $buffer)
	{
		int tagLength = (int)(ByteTools.getUnsignedShort($buffer) & 0x3F);
		
		if(tagLength == 0x3F)
		{
			tagLength = ByteTools.getInt($buffer);
		}
		return tagLength;
	}
	
	public void encode() throws Exception
	{
		ByteBuffer tempBytes =ByteBuffer.allocate(1002 * 1024 * 20);
		tempBytes.order(ByteOrder.LITTLE_ENDIAN);
		rect.write(tempBytes);
		tempBytes.put((byte)0);
		tempBytes.put(frameRate);
		tempBytes.putShort((short)frameCount);
		
		int i = 0;
		
		for(i = 0; i < tags.size(); i++)
		{
			Tag tag = tags.get(i);
			tag.encode();
			tag.buffer.position(0);
			tempBytes.put(tag.buffer);
			Boolean allow;
			if(tag.tagType == TagTypes.TAG_METADATA)
			{
				MetadataTag metadataTag = new MetadataTag();
				allow = Tag.allowChildEncode;
				Tag.allowChildEncode = true;
				metadataTag.encode();
				Tag.allowChildEncode = allow;
				metadataTag.buffer.position(0);
				tempBytes.put(metadataTag.buffer);
			}
			
			if(addEncryptDoABCTag && tag.tagType == TagTypes.TAG_SHOWFRAME)
			{
				DoAbcTag encryptABCTag  = new DoAbcTag();
				encryptABCTag.abcFile.metadata_count = 0xffffff;
				allow = Tag.allowChildEncode;
				Tag.allowChildEncode = true;
				encryptABCTag.encode();
				Tag.allowChildEncode = allow;
				encryptABCTag.buffer.position(0);
				tempBytes.put(encryptABCTag.buffer);
				addEncryptDoABCTag = false;
			}
		}
		int fileLen = tempBytes.position();
		tempBytes.limit(tempBytes.position());
		tempBytes.position(0);
		
		int compressLen = 0;
		ByteBuffer temp = tempBytes;
		if(signature.equals(CWS))
		{
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			ZLibUtils.compress(tempBytes.array(),bos);
			byte[] bytea = bos.toByteArray();
			compressLen = bytea.length;
			temp = ByteBuffer.allocate(compressLen);
			temp = ByteBuffer.wrap(bytea);
		}
		else
		{
			ByteArrayInputStream inStream = new ByteArrayInputStream(tempBytes.array(),0,tempBytes.array().length) ;
			ByteArrayOutputStream outStream = new ByteArrayOutputStream();
			CommandLine params = new CommandLine();

			SevenZip.Compression.LZMA.Encoder encoder = new SevenZip.Compression.LZMA.Encoder();
			if (!encoder.SetAlgorithm(params.Algorithm))
				throw new Exception("Incorrect compression mode");
			if (!encoder.SetDictionarySize(params.DictionarySize))
				throw new Exception("Incorrect dictionary size");
			if (!encoder.SetNumFastBytes(params.Fb))
				throw new Exception("Incorrect -fb value");
			if (!encoder.SetMatchFinder(params.MatchFinder))
				throw new Exception("Incorrect -mf value");
			if (!encoder.SetLcLpPb(params.Lc, params.Lp, params.Pb))
				throw new Exception("Incorrect -lc or -lp or -pb value");
			encoder.SetEndMarkerMode(false);
			encoder.WriteCoderProperties(outStream);
			long fileSize;
			boolean eos = false;
			if (params.Eos)
				eos = true;
			if (eos)
				fileSize = -1;
			else
				fileSize = 25;
			for (int j = 0; j < 8; j++)
				outStream.write((int)(fileSize >>> (8 * j)) & 0xFF);
			encoder.Code(inStream, outStream, -1, -1, null);
			
			try {
				encoder.Code(inStream, outStream, -1, -1, null);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			byte[] bytea = outStream.toByteArray();
			compressLen = bytea.length;
			temp = ByteBuffer.allocate(compressLen);
			temp = ByteBuffer.wrap(bytea);
		}
		buffer = ByteBuffer.allocate(compressLen + 3 + 1 + 4);
		buffer.order(ByteOrder.LITTLE_ENDIAN);
		buffer.put(signature.getBytes());//3
		buffer.put(version);//1
		buffer.putInt(buffer.position() + 4 + fileLen);
		buffer.put(temp);
	}
	
	public void encrypt()
	{
		int i  = 0;
		int len = tags.size();
		for(i = 0; i < len; i++)
		{
			Tag tag  = tags.get(i);
			tag.encrypt();
		}
	}
}
