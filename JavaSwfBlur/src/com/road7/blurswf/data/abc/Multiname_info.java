package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.data.DataVector;
import com.road7.blurswf.data.KeyWords;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.EncodedU32;
import com.road7.blurswf.tool.Tools;

public class Multiname_info extends BaseData {

	public static final Map<Integer, String> MULTINAME_KIND = new HashMap<Integer, String>()
	{
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		{
			put(0x07,"QName");
			put(0x0D,"QNameA");
			put(0x0F,"RTQName");
			put(0x10,"RTQNameA");
			put(0x11,"RTQNameL");
			put(0x12,"RTQNameLA");
			put(0x09,"Multiname");
			put(0x0E,"MultinameA");
			put(0x1B,"MultinameL");
			put(0x1C,"MultinameLA");
		}
	};
	
	public int kind;
	public DataVector dataVctr;
	public int ns;
	public int name;
	public int ns_set;
	public Multiname_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	 public void read() {
		kind = ByteTools.getByte(buffer);
		switch(kind){
			case 0x07:
			case 0x0D: //The multiname_kind_QName format is used for kinds CONSTANT_QName and CONSTANT_QNameA
				ns = EncodedU32.read(buffer);
				name = EncodedU32.read(buffer);
				break;
			case 0x0F: 
			case 0x10: //The multiname_kind_RTQName format is used for kinds CONSTANT_RTQName and CONSTANT_RTQNameA
				name = EncodedU32.read(buffer);
				break;
			case 0x11: 
			case 0x12: //The multiname_kind_RTQNameL format is used for kinds CONSTANT_RTQNameL and CONSTANT_RTQNameLA
				break;
			case 0x09: 
			case 0x0E: //The multiname_kind_Multiname format is used for kinds CONSTANT_Multiname and CONSTANT_MultinameA
				name = EncodedU32.read(buffer);
				ns_set = EncodedU32.read(buffer);
				break;
			case 0x1B: 
			case 0x1C: //The multiname_kind_MultinameL format is used for kinds CONSTANT_MultinameL and CONSTANT_MultinameLA
				ns_set = EncodedU32.read(buffer);
				break;
			case 0x1D: //sdk4.5使用vector会出现kind=1d。1d的kind多半是新增但avm还没出说明的
				/**
Vector是0x1D
type            　 u30
name_count    u30
name               u30[name_count]
				 * */
				dataVctr = new DataVector();
				dataVctr.v1 = EncodedU32.read(buffer);
				dataVctr.v2 = EncodedU32.read(buffer);
				List<Integer> arr  = new ArrayList<Integer>();
				for(int i = 0; i < dataVctr.v2; i++){
					arr.add(EncodedU32.read(buffer));
				}
				dataVctr.v3 = arr;
				break;
			default: 
				throw new Error("Multiname_info unknow kind " + kind);
		}
	}
	 @Override
	 public void write(ByteBuffer buffer) {
		buffer.put((byte)kind);
		switch(kind){
			case 0x07: 
			case 0x0D: //The multiname_kind_QName format is used for kinds CONSTANT_QName and CONSTANT_QNameA
				EncodedU32.write(buffer, ns);
				EncodedU32.write(buffer, name);
				break;
			case 0x0F: 
			case 0x10: //The multiname_kind_RTQName format is used for kinds CONSTANT_RTQName and CONSTANT_RTQNameA
				EncodedU32.write(buffer, name);
				break;
			case 0x11: 
			case 0x12: //The multiname_kind_RTQNameL format is used for kinds CONSTANT_RTQNameL and CONSTANT_RTQNameLA
				break;
			case 0x09: 
			case 0x0E: //The multiname_kind_Multiname format is used for kinds CONSTANT_Multiname and CONSTANT_MultinameA
				EncodedU32.write(buffer, name);
				EncodedU32.write(buffer, ns_set);
				break;
			case 0x1B: 
			case 0x1C: //The multiname_kind_MultinameL format is used for kinds CONSTANT_MultinameL and CONSTANT_MultinameLA
				EncodedU32.write(buffer, ns_set);
				break;
			case 0x1D: 
				EncodedU32.write(buffer, dataVctr.v1);
				EncodedU32.write(buffer, dataVctr.v2);
				List<Integer> arr  = dataVctr.v3;
				for(int i = 0; i < dataVctr.v2; i++){
					EncodedU32.write(buffer, arr.get(i));
				}
				break;
		}
	}
	 public String toString() {
		return "kind " + kind + ",data " + dataVctr;
	}
	public String toFullString(List<String_info> arrString, List<String> arrNamespace, List<String> arrNs_set) {
		return getDataString(arrString, arrNamespace, arrNs_set);
	}
	private String getDataString(List<String_info> arrString, List<String> arrNamespace, List<String> arrNs_set) 
	{
		String str  = "";
		switch(kind){
			case 0x07: 
			case 0x0D: 
				str = (ns == 0) ? "" : arrNamespace.get(ns - 1);
				if(str == null){
					str = "";
				}
				if(str != ""){
					str += ".";
				}
				str += (name == 0) ? "*" :  arrString.get(name - 1);
				break;
			case 0x0F: 
			case 0x10: 
				str = (name == 0) ? "*" :  arrString.get(name - 1).getStr();
				break;
			case 0x11: 
			case 0x12: 
				str = "*";
				break;
			case 0x09: 
			case 0x0E: 
				str = (name == 0) ? "*" :  arrString.get(name - 1).getStr()+ "." + arrNs_set.get(ns_set - 1);
				break;
			case 0x1B :
			case 0x1C :
				str = arrNs_set.get(ns_set - 1);
				break;
			case 0x1D :
				str = dataVctr.v1 + "," + dataVctr.v2 + "," + dataVctr.v3;
				break;
		}
		return str;
	}
	public void addToEncryptWords() {
		switch(kind){
			case 0x07:
			case 0x0D: //The multiname_kind_QName format is used for kinds CONSTANT_QName and CONSTANT_QNameA
				Tools.abcFile.cpool_info.arrNamespace.get(ns - 1).addToEncryptWords();
				if(Traits_info.isReadingClass){
					if(KeyWords.isEncryptClass){
						Tools.abcFile.cpool_info.arrString.get(name - 1).addToEncryptWords();
					}
				}else{
					Tools.abcFile.cpool_info.arrString.get(name - 1).addToEncryptWords();
				}
				break;
			case 0x0F: 
			case 0x10: //The multiname_kind_RTQName format is used for kinds CONSTANT_RTQName and CONSTANT_RTQNameA
				if(Traits_info.isReadingClass){
					if(KeyWords.isEncryptClass){
						Tools.abcFile.cpool_info.arrString.get(name - 1).addToEncryptWords();
					}
				}else{
					Tools.abcFile.cpool_info.arrString.get(name - 1).addToEncryptWords();
				}
				break;
			case 0x11: 
			case 0x12: //The multiname_kind_RTQNameL format is used for kinds CONSTANT_RTQNameL and CONSTANT_RTQNameLA
				break;
			case 0x09: 
			case 0x0E: //The multiname_kind_Multiname format is used for kinds CONSTANT_Multiname and CONSTANT_MultinameA
				Tools.abcFile.cpool_info.arrNs_set.get(ns_set - 1).addToEncryptWords();
				if(Traits_info.isReadingClass){
					if(KeyWords.isEncryptClass){
						Tools.abcFile.cpool_info.arrString.get(name - 1).addToEncryptWords();
					}
				}else{
					Tools.abcFile.cpool_info.arrString.get(name - 1).addToEncryptWords();
				}
				break;
			case 0x1B: 
			case 0x1C: //The multiname_kind_MultinameL format is used for kinds CONSTANT_MultinameL and CONSTANT_MultinameLA
				Tools.abcFile.cpool_info.arrNs_set.get(ns_set - 1).addToEncryptWords();
				break;
			case 0x1D: 
				break;
		}
	}

}
