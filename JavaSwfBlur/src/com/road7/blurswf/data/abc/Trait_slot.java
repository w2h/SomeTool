package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.EncodedU32;
import com.road7.blurswf.tool.Tools;

public class Trait_slot extends BaseData {

	public int slot_id;
	public int type_name;
	public int vindex;
	public int vkind;
	public static String getConstantKind(int kind){
		switch(kind){
			case 0x03:	return "integer";
			case 0x04:	return "uinteger";
			case 0x06:	return "double";
			case 0x01:	return "string";
			case 0x0B:	return "True";
			case 0x0A:	return "False";
			case 0x0C:	return "Null";
			case 0x00:	return "Undefined";
			case 0x08:
			case 0x16:
			case 0x17:
			case 0x18:
			case 0x19:
			case 0x1A:
			case 0x15:	return "Namespace";
	}
	return "";
}
	public Trait_slot(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		slot_id = EncodedU32.read(buffer);
		type_name = EncodedU32.read(buffer);
		vindex = EncodedU32.read(buffer);
		if(vindex != 0){
			vkind = ByteTools.getByte(buffer);
		}
	}
	@Override
	public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, slot_id);
		EncodedU32.write(buffer, type_name);
		EncodedU32.write(buffer, vindex);
		if(vindex != 0){
			buffer.put((byte)vkind);
		}
	}
	public void encrypt(){
//		type_name = 1;
	}
	public String toString(){
		if(vkind == 0x03){
			return "\t Trait_slot"
				+ "\n\t\t  slot_id:" + slot_id
				+ "\n\t\t  type_name:" + Tools.abcFile.cpool_info.arrMultiname_S.get(type_name - 1)
				+ "\n\t\t  vindex:" + vindex
				+ "\n\t\t  vkind:" + getConstantKind(vkind);
		}
		return "";
	}

}
