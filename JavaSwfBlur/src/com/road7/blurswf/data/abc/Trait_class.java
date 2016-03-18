package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.EncodedU32;

public class Trait_class extends BaseData {

	public int slot_id;
	public int classi;
	public Trait_class(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		slot_id = EncodedU32.read(buffer);
		classi = EncodedU32.read(buffer);
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, slot_id);
		EncodedU32.write(buffer, classi);
	}
	public void encrypt(){
//		classi = 1;
	}
	public String toString(){
		return "\t Trait_class:"
			+ "\n\t\t  slot_id:" + slot_id
			+ "\n\t\t  classi:" + classi;
	}
}
