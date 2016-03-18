package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.EncodedU32;

public class Trait_method extends BaseData {

	public int disp_id;
	public int method_v;
	public Trait_method(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		disp_id = EncodedU32.read(buffer);
		method_v = EncodedU32.read(buffer);
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, disp_id);
		EncodedU32.write(buffer, method_v);
	}
	public String toString(){
		return "\t Trait_method"
			+ "\n\t\t  disp_id:" + disp_id
			+ "\n\t\t  method_v:" + method_v;
	}

}
