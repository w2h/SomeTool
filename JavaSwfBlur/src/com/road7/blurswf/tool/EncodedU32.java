package com.road7.blurswf.tool;

import java.nio.ByteBuffer;

public class EncodedU32 {

	public static int read(ByteBuffer buffer){
		int position = buffer.position();
		int result = ByteTools.getUnsignedByte(buffer);
		buffer.position(position);
		
		if((result & 0x00000080) == 0){
			buffer.position(buffer.position() + 1);
			return result;
		}
		result = (result & 0x0000007f) | ByteTools.getByteByIndex(buffer,buffer.position() + 1)<<7;
		if((result & 0x00004000) == 0){
			buffer.position(buffer.position() + 2);
			return result;
		}
		result = (result & 0x00003fff) | ByteTools.getByteByIndex(buffer,buffer.position() + 2)<<14;
		if((result & 0x00200000) == 0){
			buffer.position(buffer.position() + 3);
			return result;
		}
		result = (result & 0x001fffff) | ByteTools.getByteByIndex(buffer,buffer.position() + 3)<<21;
		if((result & 0x10000000) == 0){
			buffer.position(buffer.position() + 4);
			return result;
		}
		result = (result & 0x0fffffff) | ByteTools.getByteByIndex(buffer,buffer.position() + 4)<<28;
		buffer.position(buffer.position() + 5);
		return result;
	}
	
	public static void write(ByteBuffer buffer, int v)
	{
		byte[] btTmp = new byte[5];
		int int_7_bit;
		int index = 0;
		
		int_7_bit = v & 0x0000007f;
		v >>>= 7;
		btTmp[index] = (byte)((v != 0) ? (int_7_bit | 0x00000080) : int_7_bit);
		index ++;
		while(v != 0){
			int_7_bit = v & 0x0000007f;
			v >>>= 7;
			btTmp[index] = (byte)((v!= 0) ? (int_7_bit | 0x00000080) : int_7_bit);
			index ++;
		}
		buffer.put(btTmp, 0, index);
	}
}
