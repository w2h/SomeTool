package com.tencent.morefun.framework.net.loaders
{
   import nochump.util.zip.ZipFile;
   import flash.system.ApplicationDomain;
   
   public class SWCLoader extends SWFLoader
   {
       
      public function SWCLoader(param1:ApplicationDomain = null)
      {
         super(param1);
      }
      
      override protected function loadSWF() : void
      {
         var _loc1_:ZipFile = new ZipFile(_data);
         _data = _loc1_.getInput(_loc1_.getEntry("library.swf"));
         super.loadSWF();
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
      }
   }
}
