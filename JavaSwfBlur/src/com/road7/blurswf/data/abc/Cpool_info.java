package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.data.KeyWords;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.EncodedU32;

public class Cpool_info extends BaseData {

	public int int_count = 0;
	public List<Integer> arrInt;
	
	public int uint_count  = 0;
	public List<Integer> arrUint;
	
	public int double_count  = 0;
	public List<Double> arrDouble;
	
	public int string_count  = 0;
	public List<String_info> arrString;
	
	public int namespace_count  = 0;
	public List<Namespace_info> arrNamespace;
	public List<String> arrNamespace_S;
	
	public int ns_set_count  = 0;
	public List<Ns_set_info> arrNs_set;
	public List<String> arrNs_set_S;
	
	public int multiname_count  = 0;
	public List<Multiname_info> arrMultiname;
	public List<String> arrMultiname_S;
	
	public Cpool_info(ByteBuffer buffer,String Name) {
		super(buffer,Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	 public void read() {
		int i  = 0;
		arrInt  = new ArrayList<Integer>();
		int_count = EncodedU32.read(buffer);
		for(i = 1; i < int_count; i++){
			arrInt.add(EncodedU32.read(buffer));
		}
		
		arrUint = new ArrayList<Integer>();
		uint_count = EncodedU32.read(buffer);
		for(i = 1; i < uint_count; i++){
			arrUint.add(EncodedU32.read(buffer));
		}
		
		arrDouble  = new ArrayList<Double>();
		double_count = EncodedU32.read(buffer);
		for(i = 1; i < double_count; i++){
			arrDouble.add(ByteTools.getDouble(buffer));
		}
		
		arrString = new ArrayList<String_info>();
		string_count = EncodedU32.read(buffer);
		for(i = 1; i < string_count; i++){
			String_info string_info = new String_info(buffer,_name);
			string_info.read();
			arrString.add(string_info);
		}
		
		arrNamespace  = new ArrayList<Namespace_info>();
		arrNamespace_S  = new ArrayList<String>();
		namespace_count = EncodedU32.read(buffer);
		for(i = 1; i < namespace_count; i++){
			Namespace_info namespace_info = new Namespace_info(buffer,_name);
			namespace_info.read();
			arrNamespace.add(namespace_info);
			arrNamespace_S.add(arrNamespace.get(i - 1).toFullString(arrString));
		}
		
		arrNs_set_S = new ArrayList<String>();
		arrNs_set  = new ArrayList<Ns_set_info>();
		ns_set_count = EncodedU32.read(buffer);
		for(i = 1; i < ns_set_count; i++){
			Ns_set_info ns_set_info = new Ns_set_info(buffer,_name);
			ns_set_info.read();
			arrNs_set.add(ns_set_info);
			arrNs_set_S.add(arrNs_set.get(i - 1).toFullString(arrNamespace_S));
		}
		
		arrMultiname  = new ArrayList<Multiname_info>();
		arrMultiname_S  = new ArrayList<String>();
		multiname_count = EncodedU32.read(buffer);
		for(i = 1; i < multiname_count; i++){
			Multiname_info Multiname_infom = new Multiname_info(buffer,_name);
			Multiname_infom.read();
			arrMultiname.add(Multiname_infom);
			arrMultiname_S.add(arrMultiname.get(i - 1).toFullString(arrString, arrNamespace_S, arrNs_set_S));
		}
	}
	 @Override
	 public void write(ByteBuffer buffer) {
		int i = 0;
		EncodedU32.write(buffer, int_count);
		for(i = 1; i < int_count; i++){
			EncodedU32.write(buffer, arrInt.get(i - 1));
		}
		
		EncodedU32.write(buffer, uint_count);
		for(i = 1; i < uint_count; i++){
			EncodedU32.write(buffer, arrUint.get(i - 1));
		}
		
		EncodedU32.write(buffer, double_count);
		for(i = 1; i < double_count; i++){
			buffer.putDouble(arrDouble.get(i - 1));
		}
		EncodedU32.write(buffer, string_count);
		for(i = 1; i < string_count; i++){
			arrString.get(i - 1).write(buffer);
		}
		
		EncodedU32.write(buffer, namespace_count);
		for(i = 1; i < namespace_count; i++){
			arrNamespace.get(i - 1).write(buffer);
		}
		
		EncodedU32.write(buffer, ns_set_count);
		for(i = 1; i < ns_set_count; i++){
			arrNs_set.get(i - 1).write(buffer);
		}
		
		EncodedU32.write(buffer, multiname_count);
		for(i = 1; i < multiname_count; i++){
			arrMultiname.get(i - 1).write(buffer);
		}
	}
	 public void encrypt() {
		int i  = 0;
		for(i = 1; i < string_count; i++){
			String_info strInfo  = arrString.get(i - 1);
			strInfo.setStr(KeyWords.encryptStr(strInfo.getStr()));
		}
	}
}
