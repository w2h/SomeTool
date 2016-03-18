package com.road7.blurswf.data.tags;

import com.road7.blurswf.tool.Tools;

public class FileAttributesTag extends Tag {

	public int reserved;
	public int useDirectBlit;
	public int useGPU;
	public int gasMetadata;
	public int actionScript3;
	public int reserved1;
	public int useNetwork;
	public int reserved2;
	public FileAttributesTag() {
		// TODO Auto-generated constructor stub
	}
	
	public void parse(){
		super.parse();
		
		if(!allowChildParse){
			return;
		}
		reserved = Tools.readUBits(buffer, 0, 1);//0
		useDirectBlit = Tools.readUBits(buffer, 1, 1);//0
		useGPU = Tools.readUBits(buffer, 2, 1);//0
		gasMetadata = Tools.readUBits(buffer, 3, 1);//1
		actionScript3 = Tools.readUBits(buffer, 4, 1);//1
		reserved1 = Tools.readUBits(buffer, 5, 2);//0
		useNetwork = Tools.readUBits(buffer, 7, 1);//1
		reserved2 = Tools.readUBits(buffer, 8, 24);//0
		buffer.position(4);
	}
	public void encode(){
		if(allowChildEncode){
			Tools.wirteBits(buffer, 0, 1, reserved);
			Tools.wirteBits(buffer, 1, 1, useDirectBlit);
			Tools.wirteBits(buffer, 2, 1, useGPU);
			Tools.wirteBits(buffer, 3, 1, gasMetadata);
			Tools.wirteBits(buffer, 4, 1, actionScript3);
			Tools.wirteBits(buffer, 5, 2, reserved1);
			Tools.wirteBits(buffer, 7, 1, useNetwork);
			Tools.wirteBits(buffer, 8, 24, reserved2);
			buffer.position(4);
		}
		super.encode();
	}

}
