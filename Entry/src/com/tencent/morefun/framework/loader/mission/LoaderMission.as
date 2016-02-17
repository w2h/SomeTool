package com.tencent.morefun.framework.loader.mission
{
   import flash.display.Loader;
   import flash.utils.ByteArray;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.system.LoaderContext;
   import flash.system.ImageDecodingPolicy;
   import flash.display.DisplayObjectContainer;
   
   public class LoaderMission extends Mission
   {
       
      public var loader:Loader;
      
      public function LoaderMission(param1:String, param2:String, param3:Boolean = true, param4:uint = 1, param5:String = null, param6:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function convert(param1:ByteArray) : void
      {
         if(destroyed)
         {
            return;
         }
         original = param1;
         var _loc2_:ByteArray = bytes;
         uncompress(_loc2_);
         this.loader = new Loader();
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.handler);
         this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.handler);
         var _loc3_:LoaderContext = new LoaderContext(false,applicationDomain);
         _loc3_.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
         _loc3_.allowCodeImport = true;
         this.loader.loadBytes(decryptSWF(_loc2_),_loc3_);
      }
      
      protected function handler(param1:Event) : void
      {
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.handler);
         this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.handler);
         if(param1.type == Event.COMPLETE)
         {
            if(this.loader.content is DisplayObjectContainer && (this.loader.content as DisplayObjectContainer).numChildren != 0)
            {
               throw new Error(path + "资源有问题 舞台对象不为空");
            }
            complete();
         }
         else
         {
            error();
         }
      }
      
      override public function destroy() : void
      {
         this.loader.unloadAndStop();
         this.loader = null;
         super.destroy();
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         if(this.loader != null)
         {
            if(this.loader["hasOwnProperty"]("unload"))
            {
               this.loader["unload"]();
            }
         }
         this.loader = null;
      }
   }
}
