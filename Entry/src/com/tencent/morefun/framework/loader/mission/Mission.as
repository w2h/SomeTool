package com.tencent.morefun.framework.loader.mission
{
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import com.adobe.crypto.MD5;
   import flash.utils.getDefinitionByName;
   import flash.display.Sprite;
   import flash.system.ApplicationDomain;
   import flash.utils.Timer;
   import flash.events.Event;
   import com.tencent.morefun.framework.loader.LoaderEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import com.tencent.morefun.framework.loader.FileManager;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class Mission extends EventDispatcher
   {
      
      public static var MAX_RETRY_COUNT:uint = 3;
       
      public var path:String;
      
      public var useCache:Boolean;
      
      public var cacheType:uint;
      
      public var key:String;
      
      public var data:Object;
      
      public var bytesLoaded:uint;
      
      public var bytesTotal:uint;
      
      public var name:String;
      
      public var priority:uint;
      
      protected var sprite:Sprite;
      
      public var retryTime:uint = 0;
      
      public var destroyed:Boolean;
      
      public var completed:Boolean;
      
      public var base:String = "";
      
      public var applicationDomain:ApplicationDomain;
      
      protected var original:ByteArray;
      
      protected var clock:Timer;
      
      protected var ldr:URLLoader;
      
      public function Mission(param1:String, param2:String, param3:Boolean = true, param4:uint = 1, param5:String = null, param6:Object = null)
      {
         super();
         this.name = param1;
         this.path = param2;
         this.useCache = param3;
         this.cacheType = param4;
         this.key = param5;
         this.data = param6;
      }
      
      public static function getKey(param1:ByteArray) : String
      {
         var _loc2_:ByteArray = null;
         if(!param1)
         {
            return null;
         }
         if(param1.length < 1024 * 15)
         {
            return MD5.hashBytes(param1);
         }
         _loc2_ = new ByteArray();
         param1.position = 0;
         param1.readBytes(_loc2_,0,10 * 1024);
         param1.position = param1.length - 5 * 1024;
         param1.readBytes(_loc2_,_loc2_.length,0);
         return MD5.hashBytes(_loc2_);
      }
      
      public static function copyBytes(param1:ByteArray) : ByteArray
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:ByteArray = new ByteArray();
         param1.position = 0;
         param1.readBytes(_loc2_);
         return _loc2_;
      }
      
      public static function decryptSWF(param1:ByteArray) : ByteArray
      {
         return (getDefinitionByName("util.decryptSWF") as Function).call(null,param1);
      }
      
      public static function uncompress(param1:ByteArray) : void
      {
         try
         {
            param1.uncompress();
            return;
         }
         catch(error:Error)
         {
            return;
         }
      }
      
      override public function toString() : String
      {
         return "[Mission(name=\"" + this.name + "\",path=\"" + this.path + "\",useCache=\"" + this.useCache + "\",cacheType=\"" + this.cacheType + "\",key=\"" + this.key + "\",data=\"" + (this.data?"<object>":"null") + "\",bytes=\"" + (this.original?"<object>":"null") + "\")]";
      }
      
      public function get bytes() : ByteArray
      {
         return this.original;
      }
      
      public function convert(param1:ByteArray) : void
      {
         if(this.destroyed)
         {
            return;
         }
         this.original = param1;
         this.complete();
      }
      
      protected function error() : void
      {
         this.loaderStart(false);
      }
      
      protected function complete() : void
      {
         this.completed = true;
         if(!this.sprite)
         {
            this.sprite = new Sprite();
            this.sprite.addEventListener(Event.ENTER_FRAME,this.frame);
         }
      }
      
      protected function frame(param1:Event) : void
      {
         this.sprite.removeEventListener(Event.ENTER_FRAME,this.frame);
         dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_PROGRESS,this.bytes.length,this.bytes.length,this));
         dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_COMPLETE,this.bytes.length,this.bytes.length,this));
      }
      
      public function destroy() : void
      {
         if(this.destroyed)
         {
            return;
         }
         this.destroyed = true;
         this.applicationDomain = null;
         this.original = null;
         this.data = null;
         this.loaderAbort();
         if(this.ldr)
         {
            this.ldr.data.clear();
            this.ldr.data = null;
            this.ldr.removeEventListener(Event.COMPLETE,this.loaderHandler);
            this.ldr.removeEventListener(IOErrorEvent.IO_ERROR,this.loaderHandler);
            this.ldr.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.loaderHandler);
            this.ldr.removeEventListener(ProgressEvent.PROGRESS,this.loaderHandler);
            this.ldr = null;
            this.clock.reset();
            this.clock.removeEventListener(TimerEvent.TIMER_COMPLETE,this.timeOut);
            this.clock = null;
         }
         if(this.sprite)
         {
            this.sprite.removeEventListener(Event.ENTER_FRAME,this.frame);
            this.sprite = null;
         }
         this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_DESTROY));
      }
      
      public function getClass(param1:String) : Class
      {
         var _loc2_:Class = null;
         if(this.destroyed)
         {
            return null;
         }
         try
         {
            _loc2_ = this.applicationDomain.getDefinition(param1) as Class;
         }
         catch(error:Error)
         {
         }
         return _loc2_;
      }
      
      public function createObject(param1:String) : Object
      {
         var _loc2_:Class = this.getClass(param1);
         return _loc2_?new _loc2_():null;
      }
      
      public function start(param1:ByteArray) : void
      {
         if(this.destroyed)
         {
            return;
         }
         this.retryTime = 0;
         dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_START,0,0,this));
         dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_PROGRESS,0,0,this));
         this.validate(param1);
      }
      
      public function abort() : void
      {
         if(this.destroyed)
         {
            return;
         }
         if(this.sprite)
         {
            this.sprite.removeEventListener(Event.ENTER_FRAME,this.frame);
         }
         this.loaderAbort();
         dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_ABORT,0,0,this));
      }
      
      protected function getQaulifiedUrl(param1:String) : String
      {
         return FileManager.getQualifiedUrl(param1);
      }
      
      protected function loaderStart(param1:Boolean) : void
      {
         this.loaderAbort();
         this.retryTime++;
         if(this.retryTime > MAX_RETRY_COUNT)
         {
            dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_ERROR,0,0,this));
            return;
         }
         if(!this.ldr)
         {
            this.ldr = new URLLoader();
            this.ldr.addEventListener(Event.COMPLETE,this.loaderHandler);
            this.ldr.addEventListener(IOErrorEvent.IO_ERROR,this.loaderHandler);
            this.ldr.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.loaderHandler);
            this.ldr.addEventListener(ProgressEvent.PROGRESS,this.loaderHandler);
            this.ldr.dataFormat = URLLoaderDataFormat.BINARY;
            this.clock = new Timer(2000,1);
            this.clock.addEventListener(TimerEvent.TIMER_COMPLETE,this.timeOut);
         }
         if(this.retryTime == MAX_RETRY_COUNT)
         {
            this.clock.delay = 5000;
         }
         this.path = this.getQaulifiedUrl(this.path);
         this.ldr.load(new URLRequest(this.path));
         this.clock.reset();
         this.clock.start();
      }
      
      protected function timeOut(param1:TimerEvent) : void
      {
         this.ldr.dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"connect timeout"));
      }
      
      protected function loaderAbort() : void
      {
         if(this.ldr)
         {
            this.clock.stop();
            try
            {
               this.ldr.close();
               return;
            }
            catch(error:Error)
            {
               return;
            }
         }
      }
      
      protected function validate(param1:ByteArray) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            this.loaderStart(this.useCache);
            return;
         }
         if(this.key)
         {
            _loc2_ = getKey(param1);
            if(_loc2_ == this.key)
            {
               this.convert(param1);
            }
            else
            {
               this.loaderStart(false);
            }
         }
         else
         {
            this.convert(param1);
         }
      }
      
      protected function loaderHandler(param1:Event) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function autoSetNull() : void
      {
         this.path = null;
         this.key = null;
         this.data = null;
         this.name = null;
         this.sprite = null;
         this.base = null;
         this.applicationDomain = null;
         this.original = null;
         this.clock = null;
         this.ldr = null;
      }
   }
}
