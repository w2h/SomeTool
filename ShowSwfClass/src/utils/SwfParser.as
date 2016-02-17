package utils
{
	import datas.SwfInfo;
	
	import flash.utils.ByteArray;
	import flash.utils.Endian;

	public class SwfParser
	{
		
		public static const COMPRESSED:String = "CWS";
		
		public function SwfParser()
		{
		}
		
		public static function parser(bytes:ByteArray,url:String):SwfInfo
		{
			var info:SwfInfo = new SwfInfo();
			info.fullName = url;
			bytes.position = 0;
			//是否压缩
			var compress:String = bytes.readUTFBytes(3);
			//版本号
			info.version = bytes.readByte();
			//文件长度
			info.size = bytes.readUnsignedInt();
			
			var tempByte:ByteArray = new ByteArray();
			
			bytes.readBytes(tempByte);
			
			if(compress == COMPRESSED){
				tempByte.uncompress();
			}
			
			tempByte.endian = Endian.LITTLE_ENDIAN;
			
			//读取宽高长度定义位数
			var bits:int = tempByte.readUnsignedByte()>>3;
			
//			var xmin:int = tempByte.readbyte
			//开始读取帧频的位置	
			var fpsPosition:int = Math.ceil((bits * 4 + 5)/8);
			
			tempByte.position = fpsPosition;
			
			info.fps = tempByte.readShort()/256;
			
			info.totalFrames = tempByte.readShort();
			
			info.bytes = bytes;
			
			
			//---------开始读取tag------//
			while(tempByte.bytesAvailable){
				var tagHead:int = tempByte.readShort();
				
				var tagType:int = tagHead >> 6;
				
				var tagLength:int = tagHead & 0x3f;
				if(tagLength == 63){
					//长类型
					tagLength = tempByte.readUnsignedInt();
				}
				
				if(tagType == 76){
					if(info.clsArr != null){
						throw new Error("存在多余的导出类标签");
					}
					//导出类
					info.clsArr = parseSymbolClass(tempByte, tagLength);
				}else{
					tempByte.position += tagLength;
				}
			}
			
			return info;
			
		}
		
		
		private static function parseSymbolClass(bytes:ByteArray, len:int):Array
		{
			var clsArr:Array = [];
			
			var clsNum:int = bytes.readShort();
			var name:String;
			while(clsNum --)
			{
				var classId:int = bytes.readUnsignedShort();
				
				var char:int = bytes.readByte();
			
				name = "";
				
				while(char)
				{
					name += String.fromCharCode(char);
					
					char = bytes.readByte();
				}
				
				clsArr.push(name);
			}
			
			return clsArr;
			
		}
		
	}
}