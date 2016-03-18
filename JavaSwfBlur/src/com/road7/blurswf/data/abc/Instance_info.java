package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.EncodedU32;
import com.road7.blurswf.tool.Tools;

public class Instance_info extends BaseData {

	public static final int CONSTANT_ClassSealed = 0x01;
	public static final int CONSTANT_ClassFinal = 0x02;
	public static final int CONSTANT_ClassInterface = 0x04;
	public static final int CONSTANT_ClassProtectedNs = 0x08;
	
	public int name;
	public static String name_S = "";
	public int super_name;
	public int flags;
	public int protectedNs = -1;
	public int intrf_count;
	public List<Integer> arrInterface;
	public static List<String> arrInterface_S;
	public int iinit;
	public int trait_count;
	public List<Traits_info> arrTraits;
	
	public Instance_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		name = EncodedU32.read(buffer);
		name_S = Tools.abcFile.cpool_info.arrMultiname_S.get(name - 1);
		super_name = EncodedU32.read(buffer);
		flags = ByteTools.getByte(buffer);
		if((flags & CONSTANT_ClassProtectedNs) != 0){
			protectedNs = EncodedU32.read(buffer);
		}
		intrf_count = EncodedU32.read(buffer);
		int i = 0;
		
		arrInterface = new ArrayList<Integer>();
		arrInterface_S = new ArrayList<String>();
		for(i = 0; i < intrf_count; i++){
			arrInterface.add(EncodedU32.read(buffer));
			arrInterface_S.add(Tools.abcFile.cpool_info.arrMultiname_S.get(arrInterface.get(i) - 1));
		}
		iinit = EncodedU32.read(buffer);
		arrTraits = new ArrayList<Traits_info>();
		trait_count = EncodedU32.read(buffer);
		for(i = 0; i < trait_count; i++){
			Traits_info traits_info = new Traits_info(buffer,_name);
			traits_info.read();
			arrTraits.add(traits_info);
		}
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, name);
		EncodedU32.write(buffer, super_name);
		buffer.put((byte)flags);
		if((flags & CONSTANT_ClassProtectedNs) != 0){
			EncodedU32.write(buffer, protectedNs);
		}
		EncodedU32.write(buffer, intrf_count);
		int i = 0;
		for(i = 0; i < intrf_count; i++){
			EncodedU32.write(buffer, arrInterface.get(i));
		}
		EncodedU32.write(buffer, iinit);
		EncodedU32.write(buffer, trait_count);
		for(i = 0; i < trait_count; i++){
			((Traits_info)arrTraits.get(i)).write(buffer);
		}
	}
	public String toString(){
		return "arrTraits" + arrTraits;
	}
}
