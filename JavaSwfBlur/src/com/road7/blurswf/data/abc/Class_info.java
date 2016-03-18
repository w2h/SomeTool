package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.EncodedU32;

public class Class_info extends BaseData {

	public int cinit;
	public int trait_count;
	/**
	 * 静态变量 
	 */
	public List<Traits_info> arrTraits;
	public Class_info(ByteBuffer buffer ,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		cinit = EncodedU32.read(buffer);
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
		EncodedU32.write(buffer, cinit);
		EncodedU32.write(buffer, trait_count);
		int i = 0;
		for(i = 0; i < trait_count; i++){
			((Traits_info)arrTraits.get(i)).write(buffer);
		}
	}
}
