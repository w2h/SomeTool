package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.data.abc.Option_detail;
import com.road7.blurswf.tool.EncodedU32;

public class Option_info extends BaseData {

	public int option_count;
	public List<Option_detail> arrOption;
	public Option_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		option_count = EncodedU32.read(buffer);
		int i = 0;
		arrOption = new ArrayList<Option_detail>();
		for(i = 0; i < option_count; i++){
			Option_detail option_detail = new Option_detail(buffer,_name);
			option_detail.read();
			arrOption.add(option_detail);
		}
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, option_count);
		int i = 0;
		for(i = 0; i < option_count; i++){
			arrOption.get(i).write(buffer);
		}
	}

}
