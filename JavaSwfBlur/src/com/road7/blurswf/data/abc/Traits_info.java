package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.data.KeyWords;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.EncodedU32;
import com.road7.blurswf.tool.Tools;

public class Traits_info extends BaseData {

	public static final int Trait_Slot   = 0;
	public static final int Trait_Method  = 1;
	public static final int Trait_Getter  = 2;
	public static final int Trait_Setter  = 3;
	public static final int Trait_Class  = 4;
	public static final int Trait_Function  = 5;
	public static final int Trait_Const  = 6;

	public static final int ATTR_Final   = 0x1;
	public static final int ATTR_Override   = 0x2;
	public static final int ATTR_Metadata  = 0x4;

	public int name  ;
	public int kind ;
	public BaseData trait;
	public int metadata_count ;
	public List<Integer> arrMetadata;
	public static Boolean isReadingClass = false;
	
	public Traits_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated finalructor stub
	}

	public int getTraitType()
	{
		return kind & 0xF;
	}
	@Override
	 public void read()  
	{
		name = EncodedU32.read(buffer);
		kind = ByteTools.getByte(buffer);
		int _traitType = getTraitType();

		switch(_traitType)
		{
			case Trait_Slot:
			case Trait_Const:
				trait = new Trait_slot(buffer,_name);
				trait.read();
				if(KeyWords.isEncryptVariable)
				{
					//TODO删除下面一行，针对doswf加密同名方法
//					(Tools.abcFile.cpool_info.arrMultiname[name - 1] as Multiname_info).name = Tools.getRandom(1, Tools.abcFile.cpool_info.string_count);
					Tools.abcFile.cpool_info.arrMultiname.get(name - 1).addToEncryptWords();
				}
				break;
			case Trait_Method:
				if(KeyWords.isEncryptMethod)
				{
					//TODO删除下面一行，针对doswf加密同名方法
					Tools.abcFile.cpool_info.arrMultiname.get(name - 1).addToEncryptWords();
				}
			case Trait_Getter:
			case Trait_Setter:
				trait = new Trait_method(buffer,_name);
				trait.read();
				int method_index = ((Trait_method)trait).method_v;
				Tools.abcFile.arrMethod.get(method_index).strName = Instance_info.name_S + "." + Tools.abcFile.cpool_info.arrMultiname_S.get(name - 1);
				break;
			case Trait_Class:
				isReadingClass = true;
				trait = new Trait_class(buffer,_name);
				trait.read();
				if(KeyWords.isEncryptClass || KeyWords.isEncryptPackage)
				{
					//排除fl包内的类和包被混淆，因为要和fla中资源对应
					if(Tools.abcFile.cpool_info.arrMultiname_S.get(name - 1).indexOf("fl.") != 0)
					{
						Tools.abcFile.cpool_info.arrMultiname.get(name - 1).addToEncryptWords();
					}
				}
				isReadingClass = false;
				break;
			case Trait_Function:
				trait = new Trait_function(buffer,_name);
				trait.read();
				break;
		}

		metadata_count = 0;
		int traitAttributes = kind >> 4;

		if((traitAttributes & ATTR_Metadata) != 0)
		{
			metadata_count = EncodedU32.read(buffer);
			int i = 0;
			arrMetadata = new ArrayList<Integer>();
			for(i = 0; i < metadata_count; i++)
			{
				arrMetadata.add(EncodedU32.read(buffer));
			}
		}
	}

	 public void collectEncryptName()  
	{
		 int _traitType = getTraitType();

		switch(_traitType)
		{
			case Trait_Slot:
			case Trait_Const:
				Tools.abcFile.cpool_info.arrMultiname.get(name - 1).addToEncryptWords();
				break;
			case Trait_Method:
				Tools.abcFile.cpool_info.arrMultiname.get(name - 1).addToEncryptWords();
			case Trait_Getter:
			case Trait_Setter:
				int method_index   = ((Trait_method)trait).method_v;
				Tools.abcFile.arrMethod.get(method_index).strName = Instance_info.name_S + "." + Tools.abcFile.cpool_info.arrMultiname_S.get(name - 1);
				break;
			case Trait_Class:
				if(Tools.abcFile.cpool_info.arrMultiname_S.get(name - 1).indexOf("fl.") != 0)
				{
					Tools.abcFile.cpool_info.arrMultiname.get(name - 1).addToEncryptWords();
				}
				break;
			case Trait_Function:
				break;
		}
	}
	 @Override
	 public void write(ByteBuffer buffer)  
	{
		EncodedU32.write(buffer, name);
		buffer.put((byte)kind);
		int traitType   = kind & 0xF;

		switch(traitType)
		{
			case Trait_Slot:
			case Trait_Const:
				((Trait_slot)trait).write(buffer);
				break;
			case Trait_Method:
			case Trait_Getter:
			case Trait_Setter:
				((Trait_method)trait).write(buffer);
				break;
			case Trait_Class:
				((Trait_class)trait).write(buffer);
				break;
			case Trait_Function:
				((Trait_function)trait).write(buffer);
				break;
		}
		int traitAttributes = kind >> 4;

		if((traitAttributes & ATTR_Metadata) != 0)
		{
			EncodedU32.write(buffer, metadata_count);
			int i = 0;

			for(i = 0; i < metadata_count; i++)
			{
				EncodedU32.write(buffer, arrMetadata.get(i));
			}
		}
	}

	 public void encrypt()  
	{
		trait.encrypt();
	}

	 public String toString()  
	{
		 int traitType = kind & 0xF;

		if(traitType != Trait_Const)
			return "";
		return "\n name" + Tools.abcFile.cpool_info.arrMultiname_S.get(name - 1) + "\n trait" + trait.toString();
	}
}
