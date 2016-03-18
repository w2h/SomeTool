package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.EncodedU32;

public class Method_body_info extends BaseData {

	public int method = 0;
	public int max_stack = 0;
	public int local_count = 0;
	public int init_scope_depth = 0;
	public int max_scope_depth = 0;
	public int code_length = 0;
	public ByteBuffer bufferCode;
	public int exception_count = 0;
	public List<Exception_info> arrException;
	public int trait_count = 0;
	public List<Traits_info> arrTrait;
	public Method_body_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void read(){
		method = EncodedU32.read(buffer);
		max_stack = EncodedU32.read(buffer);
		local_count = EncodedU32.read(buffer);
		init_scope_depth = EncodedU32.read(buffer);
		max_scope_depth = EncodedU32.read(buffer);
		
		int i = 0;
		
		code_length = EncodedU32.read(buffer);
		
		bufferCode = ByteBuffer.allocate(code_length);
//		bufferCode.order(ByteOrder.LITTLE_ENDIAN);
		byte[] codByte = new byte[code_length];
		buffer.get(codByte, 0, code_length);
		bufferCode.put(codByte);
		bufferCode.position(0);
		
		exception_count = EncodedU32.read(buffer);
		arrException = new ArrayList<Exception_info>();
		for(i = 0; i < exception_count; i++){
			Exception_info exception_info = new Exception_info(buffer,_name);
			exception_info.read();
			arrException.add(exception_info);
		}
		trait_count = EncodedU32.read(buffer);
		arrTrait = new ArrayList<Traits_info>();
		for(i = 0; i < trait_count; i++){
			Traits_info traits_info = new Traits_info(buffer,_name);
			traits_info.read();
			arrTrait.add(traits_info);
		}
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, method);
		EncodedU32.write(buffer, max_stack);
		EncodedU32.write(buffer, local_count);
		EncodedU32.write(buffer, init_scope_depth);
		EncodedU32.write(buffer, max_scope_depth);
		
		int i = 0;
		
		EncodedU32.write(buffer, bufferCode.capacity());
		buffer.put(bufferCode);
		
		EncodedU32.write(buffer, exception_count);
		for(i = 0; i < exception_count; i++){
			arrException.get(i).write(buffer);
		}
		
		EncodedU32.write(buffer, trait_count);
		for(i = 0; i < trait_count; i++){
			arrTrait.get(i).write(buffer);
		}
	}
	public void encrypt(){
		
	}

}
