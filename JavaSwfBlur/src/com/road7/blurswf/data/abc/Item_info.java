package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.EncodedU32;
import com.road7.blurswf.tool.Tools;

public class Item_info extends BaseData {

	public int key;
	public int value;
	public Item_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		key = EncodedU32.read(buffer);
		value = EncodedU32.read(buffer);
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, key);
		EncodedU32.write(buffer, value);
	}
	public String toString(){
//		return "key:" + key
//			+ ",value:" + value
		return "[" +
		Tools.abcFile.cpool_info.arrString.get(key == 0 ? 0 : key - 1)
		+ ":" + Tools.abcFile.cpool_info.arrString.get(value - 1) + "]";
	}

}
