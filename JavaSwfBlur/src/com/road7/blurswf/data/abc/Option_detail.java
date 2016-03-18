package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.EncodedU32;

public class Option_detail extends BaseData {

	public static final Map<Integer, String> KINDS = new HashMap<Integer, String>()
	{
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		{put(0x03,"Int");put(0x04,"UInt");put(0x06,"Double");put(0x01,"Utf8");
		put(0x0B,"True");put(0x0A,"False");put(0x0C,"Null");put(0x00,"Undefined");
		put(0x08,"Namespace");put(0x16,"PackageNamespace");put(0x17,"PackageInternalNs");
		put(0x18,"ProtectedNamespace");put(0x19,"ExplicitNamespace");put(0x1A,"StaticProtectedNs");
		put(0x05,"PrivateNs");
		};
	};
		
	public int val;
	public int kind;
	
	public Option_detail(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		val = EncodedU32.read(buffer);
		kind = ByteTools.getByte(buffer);
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, val);
		buffer.put((byte)kind);
	}
}
