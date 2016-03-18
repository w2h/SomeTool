package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.EncodedU32;

public class Script_info extends BaseData {

	public int init = 0;
	public int trait_count = 0;
	public List<Traits_info> arrTraits;
	public Script_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		init = EncodedU32.read(buffer);
		trait_count = EncodedU32.read(buffer);
		int i = 0;
		arrTraits = new ArrayList<Traits_info>();
		for(i = 0; i < trait_count; i++){
			Traits_info traits_info = new Traits_info(buffer,_name);
			traits_info.read();
			arrTraits.add(traits_info);
		}
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, init);
		EncodedU32.write(buffer, trait_count);
		int i = 0;
		for(i = 0; i < trait_count; i++){
			arrTraits.get(i).write(buffer);
		}
	}
	public void encrypt(){
		int i = 0;
		for(i = 0; i < trait_count; i++){
			arrTraits.get(i).encrypt();
		}
	}

}
