package com.road7.blurswf.data.abc;

import java.nio.ByteBuffer;

import com.road7.blurswf.data.BaseData;
import com.road7.blurswf.data.KeyWords;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.EncodedU32;

public class String_info extends BaseData {

	private int _size;
	private String _str;
	public Boolean needEncrypt = false;
	public String_info(ByteBuffer buffer,String Name) {
		super(buffer, Name);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void read(){
		_size = EncodedU32.read(buffer);
		_str = ByteTools.getStrFromBuf(buffer, _size);
	}
	@Override
	 public void write(ByteBuffer buffer){
		EncodedU32.write(buffer, _size);
		buffer.put(_str.getBytes());
	}
	 public String toString(){
		return _str;
	}
	public int getSize(){
		return _size;
	}
	public void setStr(String v){
		_str = v;
		byte[] strByte = _str.getBytes();
		ByteBuffer btTmp = ByteBuffer.allocate(strByte.length);
		btTmp.put(strByte);
		_size = btTmp.position();
		btTmp.clear();
	}
	public String getStr(){
		return _str;
	}
	public Boolean addToEncryptWords(){
		//排除fl包内的类和包被混淆，因为要和fla中资源对应
		if(_str.indexOf("fl.") != 0){
			needEncrypt = KeyWords.addNeedEncryptStr(_str);
		}
		return needEncrypt;
	}

}
