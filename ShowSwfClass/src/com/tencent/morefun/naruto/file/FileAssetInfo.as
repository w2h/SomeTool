package com.tencent.morefun.naruto.file
{
   public class FileAssetInfo
   {
       
      public var url:String;
      
      public var ver:uint;
      
      public var size:uint;
      
      public var tag:String;
      
      public var belong:String;
      
      public function FileAssetInfo()
      {
         super();
		 this.toString()
      }
	  
	  public function toString(addString:String = ""):String
	  {
		  return "<FileAssetInfo url:" + url +" ver:" + ver +" size:"+size +" tag:"+ tag +" belong:"+belong+ " "+addString+"/>";
	  }
	  
   }
}
