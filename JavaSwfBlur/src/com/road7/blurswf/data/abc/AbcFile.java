package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.EncodedU32;
import com.road7.blurswf.tool.Tools;

public class AbcFile extends BaseData {

	public long minor_version = 16;
	public long major_version = 46;
	public Cpool_info cpool_info;
	public int method_count = 0;
	public List<Method_info> arrMethod;
	/** The metadata_info entry provides
	 *  a means of embedding arbitrary key /value
	 *  pairs into the ABC file. The
	 * AVM2 will ignore all such entries. */
	public int metadata_count = 0;
	public List<Metadata_info> arrMetadata;
	public int class_count = 0;
	public List<Instance_info> arrInstance;
	public List<Class_info> arrClass;
	public int script_count = 0;
	public List<Script_info> arrScript;
	public int method_body_count = 0;
	public List<Method_body_info> arrMethodBody;
	public AbcFile(ByteBuffer buffer ,String Name) {
		super(buffer,Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		Tools.abcFile = this;
		minor_version = ByteTools.getUnsignedShort(buffer);
		major_version = ByteTools.getUnsignedShort(buffer);
		cpool_info = new Cpool_info(buffer,_name);
		cpool_info.read();
		method_count = EncodedU32.read(buffer);
		int i = 0;
		
		arrMethod = new ArrayList<Method_info>();
		for(i = 0; i < method_count; i++){
			Method_info method_info = new Method_info(buffer,_name);
			method_info.read();
			arrMethod.add(method_info);
		}
		metadata_count = EncodedU32.read(buffer);
		arrMetadata = new ArrayList<Metadata_info>();
		for(i = 0; i < metadata_count; i++){
			Metadata_info metadata_info = new Metadata_info(buffer,_name);
			metadata_info.read();
			arrMetadata.add(metadata_info);
		}
		arrInstance = new ArrayList<Instance_info>();
		class_count = EncodedU32.read(buffer);
		for(i = 0; i < class_count; i++){
			Instance_info instance_info = new Instance_info(buffer,_name);
			instance_info.read();
			arrInstance.add(instance_info);
		}
		arrClass = new ArrayList<Class_info>();
		for(i = 0; i < class_count; i++){
			Class_info class_info = new Class_info(buffer,_name);
			class_info.read();
			arrClass.add(class_info);
		}
		arrScript =  new ArrayList<Script_info>();
		script_count = EncodedU32.read(buffer);
		for(i = 0; i < script_count; i++){
			Script_info script_info = new Script_info(buffer,_name);
			script_info.read();
			arrScript.add(script_info);
		}
		arrMethodBody = new ArrayList<Method_body_info>();
		method_body_count = EncodedU32.read(buffer);
		for(i = 0; i < method_body_count; i++){
			Method_body_info method_body_info = new Method_body_info(buffer,_name);
			method_body_info.read();
			arrMethodBody.add(method_body_info);
		}
		if(buffer.capacity() - buffer.position() > 0){
			throw new Error("AbcFile not read to end");
		}
	}
	@Override
	public void write(ByteBuffer buffer){
		Tools.abcFile = this;
		buffer.putShort((short)minor_version);
		buffer.putShort((short)major_version);
		cpool_info.write(buffer);
		EncodedU32.write(buffer, method_count);
		int i = 0;
		for(i = 0; i < method_count; i++){
			Method_info method_info = arrMethod.get(i);
			method_info.write(buffer);
		}
		EncodedU32.write(buffer, metadata_count);
		for(i = 0; i < arrMetadata.size(); i++){
			Metadata_info metadata_info = arrMetadata.get(i);
			metadata_info.write(buffer);
		}
		EncodedU32.write(buffer, class_count);
		for(i = 0; i < class_count; i++){
			Instance_info instance_info = arrInstance.get(i);
			instance_info.write(buffer);
		}
		for(i = 0; i < class_count; i++){
			Class_info class_info = arrClass.get(i);
			class_info.write(buffer);
		}
		EncodedU32.write(buffer, script_count);
		for(i = 0; i < script_count; i++){
			Script_info script_info = arrScript.get(i);
			script_info.write(buffer);
		}
		EncodedU32.write(buffer, method_body_count);
		for(i = 0; i < method_body_count; i++){
			Method_body_info method_body_info = arrMethodBody.get(i);
			method_body_info.write(buffer);
		}
	}
	public void encrypt()
	{
		Tools.abcFile = this;
		cpool_info.encrypt();
	}
}
