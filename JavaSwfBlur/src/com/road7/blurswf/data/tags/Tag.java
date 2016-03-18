package com.road7.blurswf.data.tags;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class Tag{
	/**
	 * 是否允许子类反序列化
	 */		
	public static Boolean allowChildParse = true;
	/**
	 * 是否允许子类序列化
	 */		
	public static Boolean allowChildEncode = true;
	/**
	 * 是否允许子类加密
	 */		
	public static Boolean allowChildEncrypt = true;
	
	public ByteBuffer buffer;
	public int tagType;
	public int tagLength;
	public Tag()
	{
		
	}
	public void parse(){
		if(buffer != null)buffer.position(0);
	}
	public String tagName(){
		return TagTypes.getTagNameByTagType(tagType);
	}
	public void encode(){
		if(buffer == null) buffer = ByteBuffer.allocate(0);
		ByteBuffer btTmp = ByteBuffer.allocate(buffer.capacity());
		buffer.position(0);
		btTmp.put(buffer);
		btTmp.position(0);
		int tmpLen = btTmp.capacity();
		if(tmpLen != tagLength){
			//trace(tagName + ":" + tmpLen + "," + tagLength);
		}
		tagLength = tmpLen;
		if(btTmp.capacity() >= 0x3F){
			buffer = ByteBuffer.allocate(tmpLen + 2 + 4);
			buffer.order(ByteOrder.LITTLE_ENDIAN);
			buffer.putShort((short)((tagType << 6) | 0x3F));
			buffer.putInt(tagLength);
		}else{
			buffer = ByteBuffer.allocate(tmpLen + 2);
			buffer.order(ByteOrder.LITTLE_ENDIAN);
			buffer.putShort((short)((tagType << 6) | tagLength));
		}
		buffer.put(btTmp);
		btTmp.clear();
	}
	public void encrypt(){
		
	}
}
