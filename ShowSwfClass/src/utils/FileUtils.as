package utils
{
	import flash.filesystem.File;
	import sample.MurmurHash.CModule;
	import sample.MurmurHash.MurmurHash3;

	public class FileUtils
	{
		public function FileUtils()
		{
			CModule.startAsync(this)
			MurmurHash3("abc12345");
		}
		
		public static function getFileShortName(file:File):String
		{
			var fullName:String = file.nativePath;
			if(fullName != null && fullName.length > 0){
				var index:int = fullName.lastIndexOf("\\");
				index = index >= 0?index:0;
				return fullName.slice(index + 1);
			}
			return "none";
		}
		
		public static function getFileFolderPath(file:File):String
		{
			var fullName:String = file.nativePath;
			if(fullName != null && fullName.length > 0){
				var index:int = fullName.lastIndexOf("\\");
				index = index >= 0?index:0;
				return fullName.slice(0,index);
			}
			return "none";
		}
		
		public static function creatTempFilePath(file:File,exterName:String = "temp"):String
		{
			var fullName:String = file.nativePath;
			if(fullName != null && fullName.length > 0){
				var index:int = fullName.lastIndexOf("\.");
				index = index >= 0?index:0;
				return fullName.slice(0,index) +"_"+ exterName + fullName.slice(index);
			}
			return "none";
		}
		
	}
}