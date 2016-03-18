package com.road7.blurswf.data.tags;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

import com.road7.blurswf.data.KeyWords;
import com.road7.blurswf.data.abc.AbcFile;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.DString;

public class DoAbcTag  extends Tag{

	public long Flags  = 1;
	public String Name = "frame2";
	public AbcFile abcFile;
	public DoAbcTag() {
		super();
		this.tagType = TagTypes.TAG_DOABC;
	}

	public void parse()
	{
		super.parse();

		if(!allowChildParse)
		{
			return;
		}
		Flags = ByteTools.getUnsignedInt(buffer);
		Name = DString.read(buffer);
		abcFile = new AbcFile(buffer,Name);
		abcFile.read();
	}
	
	public void encode()
	{
		if(allowChildEncode)
		{
			byte [] arr = Arrays.copyOfRange(buffer.array(), buffer.position(),buffer.limit());
			ByteBuffer btRemain  = ByteBuffer.allocate(arr.length);
			btRemain.put(arr);
			btRemain.position(0);
			
			ByteBuffer tbuffer = ByteBuffer.allocate(5 * 1024 * 1024);
			tbuffer.order(ByteOrder.LITTLE_ENDIAN);
			tbuffer.putInt((int)Flags);//4
			DString.write(tbuffer, Name);//30
			abcFile.write(tbuffer);//1829
			
			tbuffer.put(btRemain);//1829
			tbuffer.limit(tbuffer.position());
			tbuffer.position(0);
			buffer = ByteBuffer.allocate(tbuffer.limit());
			buffer.put(tbuffer);
		}

		super.encode();
	}

	public void encrypt()
	{
		if(!allowChildEncrypt)
		{
			return;
		}
		Name = KeyWords.encryptStr(Name);
		abcFile.encrypt();
	}

}
