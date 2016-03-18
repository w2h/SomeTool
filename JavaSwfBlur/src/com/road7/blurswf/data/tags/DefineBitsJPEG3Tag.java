package com.road7.blurswf.data.tags;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class DefineBitsJPEG3Tag extends Tag {

	public short CharacterID = 0;
	public int AlphaDataOffset = 0;
	public ByteBuffer ImageData;
	public ByteBuffer BitmapAlphaData;
	public DefineBitsJPEG3Tag() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public void parse(){
		super.parse();
		if(!allowChildParse){
			return;
		}
		CharacterID = buffer.getShort();
		AlphaDataOffset = buffer.getInt();
		
		ImageData = ByteBuffer.allocate(AlphaDataOffset - buffer.position());
		byte []byteArr = new byte[AlphaDataOffset - buffer.position()];
		buffer.get(byteArr, 0, byteArr.length);
		ImageData.put(byteArr);
		
		BitmapAlphaData = ByteBuffer.allocate(buffer.position());
		byteArr= new byte[buffer.position()];
		buffer.get(byteArr, 0, byteArr.length);
		BitmapAlphaData.put(byteArr);
	}
	@Override
	public void encode(){
		if(allowChildEncode){
			buffer = ByteBuffer.allocate(2 + 4 + ImageData.capacity() + BitmapAlphaData.capacity());
			buffer.order(ByteOrder.LITTLE_ENDIAN);
			buffer.putShort(CharacterID);
			buffer.putInt(AlphaDataOffset);
			buffer.put(ImageData);
			buffer.put(BitmapAlphaData);
		}
		super.encode();
	}

}
