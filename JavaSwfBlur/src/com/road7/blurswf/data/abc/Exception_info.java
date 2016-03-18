package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.EncodedU32;

public class Exception_info extends BaseData {

	public int from = 0;
	public int to = 0;
	public int target = 0;
	public int exc_type = 0;
	public int var_name = 0;
	public Exception_info(ByteBuffer buffer ,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		from = EncodedU32.read(buffer);
		to = EncodedU32.read(buffer);
		target = EncodedU32.read(buffer);
		exc_type = EncodedU32.read(buffer);
		var_name = EncodedU32.read(buffer);
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, from);
		EncodedU32.write(buffer, to);
		EncodedU32.write(buffer, target);
		EncodedU32.write(buffer, exc_type);
		EncodedU32.write(buffer, var_name);
	}

}
