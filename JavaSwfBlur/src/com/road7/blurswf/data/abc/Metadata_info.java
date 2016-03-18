package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.EncodedU32;
import com.road7.blurswf.tool.Tools;

public class Metadata_info extends BaseData {

	public int name;
	public int item_count;
	public List<Item_info> arrItem_infos;
	public Metadata_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		name = EncodedU32.read(buffer);
		item_count = EncodedU32.read(buffer);
		int i = 0;
		arrItem_infos = new ArrayList<Item_info>();
		for(i = 0; i < item_count; i++){
			Item_info item_info = new Item_info(buffer,_name);
			item_info.read();
			arrItem_infos.add(item_info);
		}
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, name);
		EncodedU32.write(buffer, item_count);
//		EncodedU32.write(buffer, 99);
		int i = 0;
		for(i = 0; i < item_count; i++){
			arrItem_infos.get(i).write(buffer);
		}
	}
	public String toString(){
		return "name:" + Tools.abcFile.cpool_info.arrString.get(name - 1)
			+ ",item_count:" + item_count
			+ ",arrItem:" + arrItem_infos;
	}

}
