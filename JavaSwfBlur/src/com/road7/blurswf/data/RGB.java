package com.road7.blurswf.data;

import java.nio.ByteBuffer;

import com.road7.blurswf.tool.ByteTools;

public class RGB extends BaseData {

	public int red;
	public int green;
	public int blue;
	public RGB(ByteBuffer buffer, String $name) {
		super(buffer, $name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		red = ByteTools.getUnsignedByte(buffer);
		green = ByteTools.getUnsignedByte(buffer);
		blue = ByteTools.getUnsignedByte(buffer);
	}
	@Override
	public void write(ByteBuffer buffer){
		buffer.put((byte)red);
		buffer.put((byte)green);
		buffer.put((byte)blue);
	}
}
