package com.road7.blurswf.data.tags;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import com.road7.blurswf.tool.ByteTools;

public class DefineBinaryDataTag extends Tag {

	public int tag;
	public int Reserved;
	public ByteBuffer Data;
	public DefineBinaryDataTag() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public void parse(){
		super.parse();
		
		if(!allowChildParse){
			return;
		}
		tag = ByteTools.getUnsignedShort(buffer);
		Reserved = (int)ByteTools.getUnsignedInt(buffer);
		Data = ByteBuffer.allocate(buffer.limit() - buffer.position());
		Data.put(buffer);
	}
	@Override
	public void encode(){
		if(allowChildEncode){
			Data.position(0);
			buffer = ByteBuffer.allocate(buffer.capacity());
			buffer.order(ByteOrder.LITTLE_ENDIAN);
			buffer.putShort((short)tag);
			buffer.putInt(Reserved);
			buffer.put(Data);
			Data.clear();
		}
		super.encode();
	}

}
