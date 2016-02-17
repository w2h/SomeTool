package com.tencent.morefun.framework.loader.mission
{
   import flash.utils.ByteArray;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import nochump.util.zip.ZipFile;
   import nochump.util.zip.ZipEntry;
   import flash.system.LoaderContext;
   
   public class LibraryMission extends LoaderMission
   {
       
      public function LibraryMission(param1:String, param2:String, param3:Boolean = true, param4:uint = 1, param5:String = null, param6:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function convert(param1:ByteArray) : void
      {
         original = param1;
         var _loc2_:ByteArray = bytes;
         uncompress(_loc2_);
         loader = new Loader();
         loader.contentLoaderInfo.addEventListener(Event.COMPLETE,handler);
         loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,handler);
         _loc2_.position = 0;
         var _loc3_:ZipFile = new ZipFile(_loc2_);
         var _loc4_:ZipEntry = _loc3_.getEntry("library.swf");
         _loc2_ = _loc3_.getInput(_loc4_);
         loader.loadBytes(_loc2_,new LoaderContext(false,applicationDomain));
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
