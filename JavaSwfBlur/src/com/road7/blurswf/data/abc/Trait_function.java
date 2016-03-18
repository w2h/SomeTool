package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.EncodedU32;

public class Trait_function extends BaseData {

	public int slot_id;
	public int function_v;
	public Trait_function(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		slot_id = EncodedU32.read(buffer);
		function_v = EncodedU32.read(buffer);
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, slot_id);
		EncodedU32.write(buffer, function_v);
	}
	public String toString(){
		return "\t Trait_function:"
			+ "\n\t\t  slot_id:" + slot_id
			+ "\n\t\t  function_v:" + function_v;
	}

}
