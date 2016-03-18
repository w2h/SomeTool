package com.road7.blurswf.data.tags;

import java.nio.ByteBuffer;

import com.road7.blurswf.data.RGB;

public class SetBackgroundColorTag extends Tag {

	public RGB rgb;
	public SetBackgroundColorTag() {
		// TODO Auto-generated method stub
	}

	@Override
	public void parse() {
		super.parse();
		
		if(!allowChildParse){
			return;
		}
		rgb = new RGB(buffer,null);
		rgb.read();
	}

	@Override
	public void encode() {
		if(allowChildEncode){
			buffer = ByteBuffer.allocate(3);;
			rgb.write(buffer);
		}
		super.encode();
	}

	@Override
	public void encrypt() {
		super.encrypt();
	}

}
