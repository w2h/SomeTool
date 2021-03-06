package controller
{
	import com.tencent.morefun.naruto.file.FileAssetInfo;
	import com.tencent.morefun.naruto.utils.registerAlias;
	
	import flash.desktop.NativeApplication;
	import flash.desktop.NativeProcess;
	import flash.desktop.NativeProcessStartupInfo;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.utils.ByteArray;
	import flash.utils.CompressionAlgorithm;
	import flash.utils.Dictionary;
	
	import nochump.util.zip.ZipEntry;
	import nochump.util.zip.ZipFile;
	
	import org.aswing.JOptionPane;
	
	import ru.inspirit.lzma.LZMAEncoder;
	
	import utils.FileUtils;
	import utils.LZMA;
	

	public class BytesToolsController
	{
		public static const COMPRESSHEAD_1:String = "FWS";
		public static const COMPRESSHEAD_2:String = "CWS";
		public static const COMPRESSHEAD_3:String = "ZWS";
		
		
		private var _file:File;
		private var _bytes:ByteArray;
		public function BytesToolsController(file:File)
		{
			_file = file;
			init();
		}
		
		private function init():void
		{
//			_file.load();
//			_bytes = _file.data;
			var stream:FileStream = new FileStream();
			stream.open(_file, FileMode.READ);
			
			_bytes = new ByteArray();
			
			stream.readBytes(_bytes);
			stream.close();
		}
		
		public function compress(algorithm:String):void
		{
			_bytes.compress(algorithm);
			var file:File = new File(FileUtils.creatTempFilePath(_file,"compress"));
			var stream:FileStream = new FileStream();
			stream.open(file, FileMode.WRITE);
			stream.writeBytes(_bytes);
			stream.close();
		}
		
		public function uncompress(algorithm:String):void
		{
			_bytes.uncompress(algorithm);
			var file:File = new File(FileUtils.creatTempFilePath(_file,"uncompress"));
			var stream:FileStream = new FileStream();
			stream.open(file, FileMode.WRITE);
			stream.writeBytes(_bytes);
			stream.close();
		}
		
		public function zipFile():void
		{
			JOptionPane.showMessageDialog("提示", "暂时不可用");
		}
		
		public function unzipFile():void
		{
			var zipFile:ZipFile = new ZipFile(_bytes);
			var zipEntrys:Array = zipFile.entries;
			var resultBytes:ByteArray;
			//创建一个空文件夹，存放
			var folderPath:String = FileUtils.getFileFolderPath(_file) + "\\unzipFile";
			var stream:FileStream = new FileStream();
			var file:File;
			for each(var zipEntey:ZipEntry in zipEntrys)
			{
				file = new File(folderPath + "\\" + zipEntey.name);
				stream.open(file, FileMode.WRITE);
				resultBytes = zipFile.getInput(zipEntey);
				stream.writeBytes(resultBytes);
				stream.close();
			}
			
		}
		
		public function zwsSwf():void
		{
			NativeApplication.nativeApplication.autoExit=true;
			var nativeProcessStartupInfo:NativeProcessStartupInfo;
			var file:File = File.applicationDirectory;
			file=file.resolvePath("zswf.exe");
			var v:Vector.<String> = new Vector.<String>();
			v.push(_file.nativePath,"-f",FileUtils.creatTempFilePath(_file,"zws"));
			nativeProcessStartupInfo=new NativeProcessStartupInfo();
			nativeProcessStartupInfo.executable=file;
			nativeProcessStartupInfo.arguments = v;
			var process:NativeProcess=new NativeProcess();
			if(NativeProcess.isSupported){
				process.start(nativeProcessStartupInfo);
			}else{
				JOptionPane.showMessageDialog("提示", "当前配置不允许启动本机程序");
			}
		}
		
		public function unzwsSwf():void
		{
			var resultBytes:ByteArray = LZMA.decodeSWF(_bytes);
			var file:File = new File(FileUtils.creatTempFilePath(_file,"unzws"));
			var stream:FileStream = new FileStream();
			stream.open(file, FileMode.WRITE);
			stream.writeBytes(resultBytes);
			stream.close();
		}
		
		public function lzmaFile():void
		{
			var lzmaEnc:LZMAEncoder = new LZMAEncoder();
			var resultBytes:ByteArray = new ByteArray();
			lzmaEnc.encode(_bytes, resultBytes);
			var file:File = new File(FileUtils.creatTempFilePath(_file,"lzma"));
			var stream:FileStream = new FileStream();
			stream.open(file, FileMode.WRITE);
			stream.writeBytes(resultBytes);
			stream.close();
		}
		
		public function unlzmaFile():void
		{
			var resultBytes:ByteArray = LZMA.decode(_bytes);
			var file:File = new File(FileUtils.creatTempFilePath(_file,"unlzma"));
			var stream:FileStream = new FileStream();
			stream.open(file, FileMode.WRITE);
			stream.writeBytes(resultBytes);
			stream.close();
		}
		
		public function resolveResourceCfg():void
		{
			var _loc3_:XML = null;
			var _loc4_:uint = 0;
			var _loc5_:uint = 0;
			_bytes.uncompress("lzma");
			registerAlias(FileAssetInfo);
			var len:int = _bytes.readUnsignedInt();
			_loc5_ = _bytes.position;
			var dic:Dictionary = _bytes.readObject();
			if(_bytes.position - _loc5_ != len)
			{
				throw new Error("resource.cfg版本号配置解析失败！");
			}
			_loc5_ = _bytes.position;
			if(_bytes.readUnsignedByte())
			{
				len = _bytes.readUnsignedInt();
				if(_bytes.bytesAvailable >= len)
				{
					_loc3_ = new XML(_bytes.readMultiByte(len,"utf-8"));
				}
			}
			var resultBytes:ByteArray = new ByteArray();
			for (var key:* in dic)
			{
				var fileInfo:FileAssetInfo = dic[key] as FileAssetInfo;
				if(fileInfo){
					resultBytes.writeMultiByte(fileInfo.toString("key:" + key) + "\r\n", "utf-8");
				}else{
					var str:String = "<" +key+" "+dic[key]+ "/>\r\n";
					resultBytes.writeMultiByte(str, "utf-8");
				}
			}
			resultBytes.writeMultiByte(_loc3_.toXMLString(), "utf-8");
			var file:File = new File(FileUtils.creatTempFilePath(_file,"_resolve"));
			var stream:FileStream = new FileStream();
			stream.open(file, FileMode.WRITE);
			stream.writeBytes(resultBytes);
			stream.close();
		}
		
		public function descryptShenqu():void
		{
			var resultBytes:ByteArray = decry(_bytes);
			var file:File = new File(FileUtils.creatTempFilePath(_file,"descrypt"));
			var stream:FileStream = new FileStream();
			stream.open(file, FileMode.WRITE);
			stream.writeBytes(resultBytes);
			stream.close();
		}
		
		private static function decry(src:ByteArray):ByteArray
		{
			var bytes:ByteArray = new ByteArray();
			bytes.writeByte(67);
			bytes.writeByte(87);
			bytes.writeByte(83);
			src.position = 21;
			src.readBytes(bytes,124,src.bytesAvailable -121);
			src.readBytes(bytes,3);
			return bytes;
		}
		
		public function uncompressswf():void
		{
			var bytes:ByteArray = new ByteArray();
			_bytes.position = 0;
			_bytes.readBytes(bytes, 0, 8);
			var tempBytes:ByteArray = new ByteArray();
			_bytes.readBytes(tempBytes);
			if(_bytes[0] == 67){
				tempBytes.uncompress();
			}else if(_bytes[0] == 90){
				tempBytes.uncompress(CompressionAlgorithm.LZMA);
			}
			tempBytes.position = 0;
			tempBytes.readBytes(bytes, 8);
			bytes[0] = 70;
			var file:File = new File(FileUtils.creatTempFilePath(_file,"uncpressswf"));
			var stream:FileStream = new FileStream();
			stream.open(file, FileMode.WRITE);
			stream.writeBytes(bytes);
			stream.close();
		}
		
		public function compressswf_zws():void
		{
			
			var swfBytes:ByteArray=new ByteArray();
			swfBytes.writeBytes(_bytes,8);
			
			var FileLength:int=swfBytes.length+8;
			
			//ByteArray.compress(CompressionAlgorithm.LZMA)没法像 lzma.exe 那样传"-eos"（或其它参数）进去，只好FileLength多加8
			FileLength+=8;//不加8，SWF文件就不能运行；加8，SWF文件的 stage.loaderInfo.bytes 后面就多8个0
			
			var zwsData:ByteArray=new ByteArray();
			zwsData.writeUTFBytes("ZWS");
			zwsData[3]=_bytes[3];
			zwsData[4]=FileLength;
			zwsData[5]=FileLength>>8;
			zwsData[6]=FileLength>>16;
			zwsData[7]=FileLength>>24;
			
			swfBytes.compress(CompressionAlgorithm.LZMA);
			
			var compressed_size:int=swfBytes.length-13;
			zwsData[8]=compressed_size;
			zwsData[9]=compressed_size>>8;
			zwsData[10]=compressed_size>>16;
			zwsData[11]=compressed_size>>24;
			
			zwsData.position=12;
			zwsData.writeBytes(swfBytes,0,5);//貌似都是 5d 00 00 10 00
			zwsData.writeBytes(swfBytes,13);
			
			var file:File = new File(FileUtils.creatTempFilePath(_file,"zws"));
			var stream:FileStream = new FileStream();
			stream.open(file, FileMode.WRITE);
			stream.writeBytes(zwsData);
			stream.close();
		}
		
		/**
		 * 解密火影 
		 * 
		 */		
		public function descryptHuoYing():void
		{
			var resultBytes:ByteArray = decryptSWF(_bytes);
			var file:File = new File(FileUtils.creatTempFilePath(_file,"descrypt"));
			var stream:FileStream = new FileStream();
			stream.open(file, FileMode.WRITE);
			stream.writeBytes(resultBytes);
			stream.close();
		}
		
		private function decryptSWF(param1:ByteArray) : ByteArray
		{
			var _loc5_:* = 0;
			var _loc7_:uint = 0;
			if(param1)
			{
				param1.position = 0;
			}
			if(!param1 || param1.bytesAvailable <= 8)
			{
				return param1;
			}
			var _loc2_:ByteArray = new ByteArray();
			var _loc3_:ByteArray = new ByteArray();
			var _loc4_:ByteArray = new ByteArray();
			param1.position = 0;
			if(param1.readMultiByte(3,"utf-8") != "ZWS")
			{
				return param1;
			}
			if(param1.readUnsignedByte())
			{
				return param1;
			}
			if(~param1.readUnsignedInt())
			{
				return param1;
			}
			var _loc6_:uint = 1;
			_loc5_ = 0;
			while(_loc5_ < 11)
			{
				if(_loc6_)
				{
					_loc3_.writeByte(param1.readUnsignedByte());
				}
				else
				{
					_loc4_.writeByte(param1.readUnsignedByte());
				}
				_loc6_ = _loc6_ ^ 1;
				_loc5_++;
			}
			_loc3_.position = 0;
			while(_loc3_.bytesAvailable)
			{
				_loc7_ = _loc3_.readUnsignedByte() & 15 | (_loc3_.readUnsignedByte() & 15) << 4;
				_loc2_.writeByte(_loc7_);
			}
			_loc2_.writeBytes(_loc4_);
			var _loc8_:uint = Math.min(128,param1.bytesAvailable);
			_loc5_ = 0;
			while(_loc5_ < _loc8_)
			{
				if(_loc5_ & 1)
				{
					_loc2_.writeByte(~param1.readUnsignedByte());
				}
				else
				{
					_loc2_.writeByte(param1.readUnsignedByte());
				}
				_loc5_++;
			}
			_loc2_.writeBytes(param1,param1.position);
			return _loc2_;
		}
		
	}
}