package utils
{
	import datas.CompareClsInfo;
	import datas.SwfInfo;

	public class SwfCompare
	{
		public function SwfCompare()
		{
		}
		
		/**
		 * 比较两个资源是否一样 
		 * @param cls1
		 * @param cls2
		 * @return 
		 * 
		 */		
		public static function compare(cls1:Class, cls2:Class):Boolean
		{
			return false;
		}
		
		
		public static function compareSwfCls(swf1:SwfInfo, swf2:SwfInfo):void
		{
			var arr1:Array = swf1.clsArr;
			var arr2:Array = swf2.clsArr;
			
			var resultArr1:Array = [];
			var resultArr2:Array = [];
			var info:CompareClsInfo;
			for each(var name:String in arr1)
			{
				info = new CompareClsInfo();
				info.name = name;
				if(arr2.indexOf(name) == -1){
					info.isDifferent = true;
				}
				resultArr1.push(info);
			}
			
			
			for each(name in arr2)
			{
				info = new CompareClsInfo();
				info.name = name;
				if(arr1.indexOf(name) == -1){
					info.isDifferent = true;
				}
				resultArr2.push(info);
			}
			swf1.clsArr = resultArr1;
			swf2.clsArr = resultArr2;
		}
		
		
	}
}