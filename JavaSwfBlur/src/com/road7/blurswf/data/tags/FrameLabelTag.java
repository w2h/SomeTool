package com.road7.blurswf.data.tags;

import java.nio.ByteBuffer;

import com.road7.blurswf.data.KeyWords;
import com.road7.blurswf.tool.DString;

public class FrameLabelTag extends Tag {

	public String Name;
	public FrameLabelTag() {
		// TODO Auto-generated constructor stub
	}
	public void parse(){
		super.parse();
		if(!allowChildParse){
			return;
		}
		Name = DString.read(buffer);
	}
	public void encode(){
		if(allowChildEncode){
			buffer = ByteBuffer.allocate(Name.getBytes().length + 1);
			DString.write(buffer, Name);
		}
		super.encode();
	}
	public void encrypt(){
		if(!allowChildEncrypt){
			return;
		}
		Name = KeyWords.encryptStr(Name);
	}

}
