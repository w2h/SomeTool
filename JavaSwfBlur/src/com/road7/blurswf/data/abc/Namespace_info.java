package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.data.KeyWords;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.EncodedU32;
import com.road7.blurswf.tool.Tools;

public class Namespace_info extends BaseData {

	public static final Map<Integer, String> NAMESPACE_KIND = new HashMap<Integer, String>()
	{
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		{
			put(0x08,"Namespace");
			put(0x16,"PackageNamespace"); 
			put(0x17,"PackageInternalNs"); 
			put(0x18,"ProtectedNamespace"); 
			put(0x19,"ExplicitNamespace"); 
			put(0x1A,"StaticProtectedNs");
			put(0x05,"PrivateNs");
		};
	};

	public int kind;
	public int nameIndex;
	public Namespace_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	 public void read()  
	{
		kind = ByteTools.getUnsignedByte(buffer);
		nameIndex = EncodedU32.read(buffer);
	}
	 @Override
	 public void write(ByteBuffer buffer)
	{
		buffer.put((byte)kind);
		EncodedU32.write(buffer, nameIndex);
	}

	 public String toString()  
	{
		return "kind" + kind + ",nameIndex" + nameIndex;
	}

	public String toFullString(List<String_info> arrString)  
	{
		if(nameIndex <= 0)
		{
			return "";
		}
		return arrString.get(nameIndex - 1).getStr();
	}

	public void addToEncryptWords()  
	{
		if(KeyWords.isEncryptPackage)
		{
			if(nameIndex <= 0)
				return;
			Tools.abcFile.cpool_info.arrString.get(nameIndex - 1).addToEncryptWords();
		}
	}

	 public void collectEncryptName()  
	{
		if(nameIndex <= 0)
			return;
		Tools.abcFile.cpool_info.arrString.get(nameIndex - 1).addToEncryptWords();
	}

}
