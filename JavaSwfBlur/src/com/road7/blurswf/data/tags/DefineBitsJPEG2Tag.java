package com.road7.blurswf.data.tags;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class DefineBitsJPEG2Tag extends Tag {

	public short CharacterID = 0;
	public DefineBitsJPEG2Tag() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public void parse(){
		super.parse();
		if(!allowChildParse){
			return;
		}
		CharacterID = buffer.getShort();
	}
	@Override
	public void encode(){
		if(allowChildEncode){
			ByteBuffer temp = ByteBuffer.allocate(buffer.capacity());
			temp.put(buffer);
			temp.position(0);
			buffer.clear();
			buffer.order(ByteOrder.LITTLE_ENDIAN);
			buffer.putShort(CharacterID);
			buffer.put(temp);
		}
		super.encode();
	}
}
