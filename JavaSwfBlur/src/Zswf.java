import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream.GetField;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import SevenZip.LzmaAlone.CommandLine;

import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.FilesUtil;
import com.road7.blurswf.tool.ZLibUtils;


public class Zswf {

	private static String _inputPath = "C:/Users/honghui.wu/Desktop/mystar.swf";
	
	private static String _outPutPath="C:/Users/honghui.wu/Desktop/mystar_lzma.swf";
	
	public static String signature;
	public static byte version;
	public static int fileLength;
	public static int zwfLength = 0;
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		if(args.length <= 0)
		{
			try {
				init();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else 
		{
			if(args.length >= 1)
			{
				_inputPath = args[0];
			}
			if(args.length >= 2)
			{
				_outPutPath =  args[1];
			}
			try {
				init();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	private static void init() throws Exception
	{
		ByteBuffer buffer = FilesUtil.getByteBufferFromeFile(_inputPath);
		signature = ByteTools.getStrFromBuf(buffer, 3);
		version = ByteTools.getByte(buffer);
		fileLength = ByteTools.getInt(buffer);
		
		ByteArrayInputStream inStream = new ByteArrayInputStream(buffer.array(),8,buffer.array().length) ;
		ByteBuffer tempByte = ZLibUtils.decompress(inStream);
		
		zwfLength = tempByte.array().length;
		inStream = new ByteArrayInputStream(tempByte.array(),0,tempByte.array().length);
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
			fileSize = zwfLength;
		for (int j = 0; j < 8; j++)
			outStream.write((int)(fileSize >>> (8 * j)) & 0xFF);
		try {
			encoder.Code(inStream, outStream, -1, -1, null);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		byte[] bytea = outStream.toByteArray();
		int compressLen = bytea.length;
		short ver = 14;
		ByteBuffer temp = ByteBuffer.allocate(compressLen);
		temp = ByteBuffer.wrap(bytea);
		
		ByteBuffer resultebuffer = ByteBuffer.allocate(compressLen + 3 + 1 + 4);
		resultebuffer.order(ByteOrder.LITTLE_ENDIAN);
		resultebuffer.put("ZWS".getBytes());//3
		resultebuffer.putShort(ver);//1
		resultebuffer.putInt(zwfLength);
		resultebuffer.position(8);
		resultebuffer.put(temp);
		
		FilesUtil.saveBytes(_outPutPath, resultebuffer);

		
	}

}
