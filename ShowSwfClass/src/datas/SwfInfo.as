package datas
{
	import flash.utils.ByteArray;

	public class SwfInfo
	{
		
		public var fullName:String;
		
		public var fps:int;
		
		public var width:int;
		
		public var height:int;
		
		public var totalFrames:int;
		
		public var size:int;
		
		public var version:int;
		
		public var clsArr:Array;
		
		public var bytes:ByteArray;
		
		public function SwfInfo()
		{
		}
		
		public function get name():String
		{
			if(fullName != null && fullName.length > 0){
				var index:int = fullName.lastIndexOf("\\");
				index = index >= 0?index:0;
				return fullName.slice(index + 1);
			}
			return "";
		}
		
	}
}