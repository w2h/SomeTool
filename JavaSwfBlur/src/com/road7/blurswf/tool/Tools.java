package com.road7.blurswf.tool;

import java.nio.ByteBuffer;

import com.road7.blurswf.data.abc.AbcFile;

public class Tools {

	public static AbcFile abcFile;
	/**
	 * 读取一定长度的位 
	 * 无符号的
	 * 
	 * @param bytes 二进制序列
	 * @param bitStartPosition 开始读取的位置，从0开始算
	 * @param bitLength     读取长度
	 * @return 无符号数字
	 * 
	 */ 
	public static int readUBits(ByteBuffer buffer, int bitStartPosition, int bitLength){
		int bitBuffer;
		int bitCursor;
		int remainLength;
		int result=0;
		
		bitCursor= bitStartPosition % 8;//4
		buffer.position(bitStartPosition / 8);
		
		if (bitCursor == 0){
			bitBuffer = ByteTools.getUnsignedByte(buffer);
			bitCursor = 8;
		}else{
			bitBuffer = ByteTools.getUnsignedByte(buffer);//4
			bitBuffer = bitBuffer & (0xFF >> bitCursor);
			bitCursor = 8 - bitCursor;
		}
		
		while(buffer.capacity() - buffer.position() > 0){
			remainLength = bitLength - bitCursor;//11
			if (remainLength > 0){
				result = result | (bitBuffer << remainLength);//8192
				bitLength -= bitCursor;
				bitBuffer = ByteTools.getUnsignedByte(buffer);//-30
				bitCursor = 8;
			}else{
				result = result | (bitBuffer >> -remainLength);
				return result;
			}
		}
		return 0;
	}
	
	/**
	 * 读取一定长度的位 
	 * 有符号的
	 * 
	 * @param bytes 二进制序列
	 * @param bitStartPosition 开始读取的位置，从0开始算
	 * @param bitLength 读取长度
	 * @return 有符号数字
	 * 
	 */     
		
	public static int readSBits(ByteBuffer buffer, int bitStartPosition, int bitLength){
		int result = readUBits(buffer, bitStartPosition, bitLength);
		
		int offset = (32 - bitLength);
		// 补齐符号位
		result = ((result << offset) >> offset);
		
		return result;
	}
	
	public static void wirteBits(ByteBuffer bytes,int bitStartPosition,long bitLength, int v){
		int bitBuffer;//bytes中取出的值
		int bitCursor;//bytes的填入起始位
		long v_startIndex = 0;//取v的v_len位的起始，从左到右递增
		long v_len = 0;//对v取多长
		long v_value = 0;//从v中取的值
		
		bitCursor = bitStartPosition % 8;
		bytes.position(bitStartPosition / 8);
		
		while(bitLength > v_startIndex){
			v_len = 8 - bitCursor;
			v_len = v_len > (bitLength - v_startIndex) ? (bitLength - v_startIndex) : v_len;
			
			bitBuffer = ByteTools.getUnsignedByte(bytes);
			bitBuffer &= getAndPar(bitCursor, 8 - bitCursor);
			
			v_value = v & getAndPar(v_len, bitLength - v_startIndex - v_len);
			v -= v_value;
			
			v_value >>= (bitLength - v_startIndex - v_len);
			v_value <<= (8 - (bitCursor + v_len));
			
			bytes.put(bytes.position() - 1, (byte)(bitBuffer | v_value));
			
			bitCursor = 0;
			v_startIndex += v_len;
		}
	}
	/**
	 * 获得与参数
	 * 比如getAndPar(5, 3)则返回二进制的（11111000）
	 * 
	 */		
	private static long getAndPar(long num, long leftCount){
		long v = (long)Math.pow(2, num) - 1;
		return v << leftCount;
	}
}
