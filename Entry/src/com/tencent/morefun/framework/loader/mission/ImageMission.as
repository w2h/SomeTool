package com.tencent.morefun.framework.loader.mission
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.utils.ByteArray;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.system.LoaderContext;
   import flash.system.ImageDecodingPolicy;
   
   public class ImageMission extends Mission
   {
       
      public var bitmap:Bitmap;
      
      private var loader:Loader;
      
      public function ImageMission(param1:String, param2:String, param3:Boolean = true, param4:uint = 1, param5:String = null, param6:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function convert(param1:ByteArray) : void
      {
         var _loc4_:BitmapData = null;
         if(destroyed)
         {
            return;
         }
         if(original)
         {
            _loc4_ = original.readObject() as BitmapData;
            this.bitmap = new Bitmap(_loc4_);
            complete();
            return;
         }
         var _loc2_:ByteArray = copyBytes(param1);
         uncompress(_loc2_);
         this.loader = new Loader();
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.handler);
         this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.handler);
         var _loc3_:LoaderContext = new LoaderContext(false,applicationDomain);
         _loc3_.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
         _loc3_.allowCodeImport = true;
         this.loader.loadBytes(_loc2_,_loc3_);
      }
      
      override public function get bytes() : ByteArray
      {
         return original;
      }
      
      protected function handler(param1:Event) : void
      {
         var _loc2_:ByteArray = null;
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.handler);
         this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.handler);
         if(param1.type == Event.COMPLETE)
         {
            this.bitmap = this.loader.content as Bitmap;
            _loc2_ = new ByteArray();
            _loc2_.writeObject(this.bitmap.bitmapData);
            original = _loc2_;
            complete();
         }
         else
         {
            error();
         }
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
         this.bitmap = null;
         this.loader = null;
      }
   }
}
