package com.road7.blurswf.tool;

import java.nio.ByteBuffer;

public class DString {
	public DString()
	{
	}
	/**
	 *String UI8[zero or more] Non-null string character data
	 *StringEnd UI8 Marks end of string; always zero
	 */		
	public static String read(ByteBuffer buffer){
		String str = "";
		int position = buffer.position();
		int btLen = buffer.capacity();
		int strLen = 0;
		while(btLen > position + strLen){
			int temp = ByteTools.getByteByIndex(buffer, position + strLen);
			if(temp == 0){
				break;
			}
			strLen ++;
		}
		if(strLen > 0){
			str = ByteTools.getStrFromBuf(buffer,strLen);
		}
		buffer.position(buffer.position() + 1);
		return str;
	}
	
	public static void write(ByteBuffer buffer, String v){
		buffer.put(v.getBytes());
		buffer.put((byte)0);
	}
}
