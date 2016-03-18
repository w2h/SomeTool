package com.road7.blurswf.data.tags;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

import com.road7.blurswf.data.KeyWords;
import com.road7.blurswf.tool.ByteTools;
import com.road7.blurswf.tool.DString;


public class SymbolClassTag extends Tag {

	public int NumSymbols;
	public List<Symbol> arrSymbols;
	@Override
	public void parse() {
		// TODO Auto-generated method stub
		super.parse();
		
		if(!allowChildParse){
			return;
		}
		NumSymbols = ByteTools.getUnsignedShort(buffer);
		int i = 0;
		arrSymbols = new ArrayList<Symbol>();
		for(i = 0; i < NumSymbols; i++){
			Symbol symbol = new Symbol();
			symbol.tag = ByteTools.getUnsignedShort(buffer);
			symbol.Name = DString.read(buffer);
			arrSymbols.add(symbol);
		}
	}

	@Override
	public void encode() {
		if(allowChildEncode){
			int i = 0;
			int count = 0;
			for(i = 0; i < NumSymbols; i++){
				Symbol symbol = arrSymbols.get(i);
				count += (3 + symbol.Name.getBytes().length);
			}
			buffer = ByteBuffer.allocate(count + 2);
			buffer.order(ByteOrder.LITTLE_ENDIAN);
			buffer.putShort((short)NumSymbols);
			for(i = 0; i < NumSymbols; i++){
				Symbol symbol = arrSymbols.get(i);
				buffer.putShort((short)symbol.tag);
				DString.write(buffer, symbol.Name);
			}
		}
		super.encode();
	}

	@Override
	public void encrypt() {
		if(!allowChildEncrypt){
			return;
		}
		int i = 0;
		for(i = 0; i < NumSymbols; i++){
			Symbol symbol = arrSymbols.get(i);
			int dotLastIndex = symbol.Name.lastIndexOf(".");
			String str1 = symbol.Name.substring(0, (dotLastIndex < 0 ? 0 : dotLastIndex));
			String str2 = symbol.Name.substring(dotLastIndex + 1);
			
			str1 = KeyWords.encryptStr(str1);
			str2 = KeyWords.encryptStr(str2);
			str1 = (str1.equals("")? str1 : str1 + ".");
			symbol.Name = str1 + str2;
		}
	}
}
class Symbol{
	public int tag;
	public String Name;
	
	public String toString(){
		return "tag:" + tag
			+ ",Name:" + Name;
	}
}
