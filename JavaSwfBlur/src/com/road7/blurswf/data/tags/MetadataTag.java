package com.road7.blurswf.data.tags;

import java.nio.ByteBuffer;

import com.road7.blurswf.tool.DString;

public class MetadataTag extends Tag {

	public String v = "";
	public MetadataTag() {
		// TODO Auto-generated constructor stub
		this.tagType = TagTypes.TAG_METADATA;
	}
	@Override
	public void parse(){
		super.parse();
		
		if(!allowChildParse){
			return;
		}
		v = DString.read(buffer);
	}
	@Override
	public void encode(){
		if(allowChildEncode){
			buffer = ByteBuffer.allocate(v.getBytes().length + 1);
			DString.write(buffer, v);
		}
		
		super.encode();
	}

}
