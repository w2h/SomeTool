package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.EncodedU32;

public class Ns_set_info extends BaseData {

	public int count;
	public List<Integer> arrNS;
	public Ns_set_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	 public void read(){
		count = EncodedU32.read(buffer);
		int i = 0;
		arrNS = new ArrayList<Integer>();
		for(i = 0; i < count; i++){
			arrNS.add(EncodedU32.read(buffer));
		}
	}
	 @Override
	 public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, count);
		int i = 0;
		for(i = 0; i < count; i++){
			EncodedU32.write(buffer, arrNS.get(i));
		}
	}
	 public String toString(){
		return "count" + count + ",arrNS" + arrNS;
	}
	public String toFullString(List<String> arrNamespace)
	{
		String fullString = "count" + count;
		int i = 0;
		for(i = 0; i < count; i++)
		{
			fullString += "\n\t\t" + arrNamespace.get(arrNS.get(i) - 1) + ";";
		}
		return fullString;
	}
	public void addToEncryptWords(){
		
	}

}
