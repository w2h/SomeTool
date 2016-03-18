package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.EncodedU32;

public class Method_info extends BaseData {

	public static final int NEED_ARGUMENTS = 0x01;
	public static final int NEED_ACTIVATION = 0x02;
	public static final int NEED_REST = 0x04;
	public static final int HAS_OPTIONAL = 0x08;
	public static final int SET_DXNS = 0x40;
	public static final int HAS_PARAM_NAMES = 0x80;
	
	public int param_count;
	public int return_type;
	public List<Integer> arrParam_type;
	public int name;
	public String strName = "";
	public int flags;
	public Option_info options;
	public List<Integer> arrParam_names;
	
	public Method_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
	}
	@Override
	public void read(){
		param_count = EncodedU32.read(buffer);
		return_type = EncodedU32.read(buffer);
		int i = 0;
		arrParam_type = new ArrayList<Integer>();
		for(i = 0; i < param_count; i++){
			arrParam_type.add(EncodedU32.read(buffer));
		}
		name = EncodedU32.read(buffer);
		flags = ByteTools.getByte(buffer);
		if((flags & HAS_OPTIONAL) == HAS_OPTIONAL){
			options = new Option_info(buffer,_name);
			options.read();
		}
		arrParam_names= new ArrayList<Integer>();
		if((flags & HAS_PARAM_NAMES) == HAS_PARAM_NAMES){
			for(i = 0; i < param_count; i++){
				arrParam_names.add(EncodedU32.read(buffer));
			}
		}
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, param_count);
		EncodedU32.write(buffer, return_type);
		int i = 0;
		for(i = 0; i < param_count; i++){
			EncodedU32.write(buffer, arrParam_type.get(i));
		}
		EncodedU32.write(buffer, name);
		buffer.put((byte)flags);
		if((flags & HAS_OPTIONAL) == HAS_OPTIONAL){
			options.write(buffer);
		}
		if((flags & HAS_PARAM_NAMES) == HAS_PARAM_NAMES){
			for(i = 0; i < param_count; i++){
				EncodedU32.write(buffer, arrParam_names.get(i));
			}
		}
	}
	public void encrypt(){
		this.name = 0;
	}

}
