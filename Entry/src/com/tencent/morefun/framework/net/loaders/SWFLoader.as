package com.tencent.morefun.framework.net.loaders
{
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import flash.system.ApplicationDomain;
   import flash.utils.getDefinitionByName;
   import flash.display.Loader;
   import com.tencent.morefun.framework.net.events.LoadEvent;
   import flash.system.LoaderContext;
   import flash.system.ImageDecodingPolicy;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import com.tencent.morefun.framework.log.logger;
   
   public class SWFLoader extends EventDispatcher implements IFileLoader
   {
       
      private var _raw:com.tencent.morefun.framework.net.loaders.RAWLoader;
      
      private var _loader:Loader;
      
      protected var _data:ByteArray;
      
      protected var _domain:ApplicationDomain;
      
      protected var _loading:Boolean;
      
      protected var _timer:uint;
      
      public function SWFLoader(param1:ApplicationDomain = null)
      {
         super();
         this._domain = param1;
         this._raw = new com.tencent.morefun.framework.net.loaders.RAWLoader();
      }
      
      protected static function decryptSWF(param1:ByteArray) : ByteArray
      {
         if(ApplicationDomain.currentDomain.hasDefinition("util.decryptSWF"))
         {
            return (getDefinitionByName("util.decryptSWF") as Function).call(null,param1);
         }
         return param1;
      }
      
      public function load(param1:String) : void
      {
         if(!param1)
         {
            return;
         }
         this.dispose();
         this._loading = true;
         this._raw.addEventListener(LoadEvent.FINISH,this.finishHandler);
         this._raw.addEventListener(LoadEvent.PROGRESS,this.progressHandler);
         this._raw.load(param1);
      }
      
      private function progressHandler(param1:LoadEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function finishHandler(param1:LoadEvent) : void
      {
         this._raw.removeEventListener(LoadEvent.FINISH,this.finishHandler);
         this._raw.removeEventListener(LoadEvent.PROGRESS,this.progressHandler);
         if(!this._raw.data || this._raw.status == 404)
         {
            dispatchEvent(new LoadEvent(LoadEvent.FINISH,this._raw.url));
         }
         else
         {
            this._data = this._raw.data;
            this.loadSWF();
         }
      }
      
      protected function loadSWF() : void
      {
         var _loc1_:LoaderContext = new LoaderContext(false,this._domain);
         _loc1_.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
         if("allowCodeImport" in _loc1_)
         {
            _loc1_["allowCodeImport"] = true;
         }
         clearTimeout(this._timer);
         this._timer = setTimeout(this.responseTimeout,RAWLoader.TIME_OUT * 2);
         this._loader = new Loader();
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.completeHandler);
         this._loader.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.uncaughtErrorHandler);
         this._loader.loadBytes(decryptSWF(this._data),_loc1_);
      }
      
      private function responseTimeout() : void
      {
         clearTimeout(this._timer);
         logger.output("[SWFLoader]虚拟机处理SWF二进制超时: " + this._raw.url);
         if(this._loader)
         {
            this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,arguments.callee);
            this._loader.uncaughtErrorEvents.removeEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.uncaughtErrorHandler);
            this._loader = null;
         }
         this._raw.dispose();
         this._data = null;
         dispatchEvent(new LoadEvent(LoadEvent.FINISH,this._raw.url));
      }
      
      private function uncaughtErrorHandler(param1:UncaughtErrorEvent) : void
      {
         logger.output(param1);
      }
      
      private function completeHandler(param1:Event) : void
      {
         this._loading = false;
         if(this._loader != null)
         {
            this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,arguments.callee);
            this._loader.uncaughtErrorEvents.removeEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.uncaughtErrorHandler);
         }
         if(!this._domain)
         {
            this._domain = this._loader.contentLoaderInfo.applicationDomain;
         }
         if(this._raw)
         {
            this._raw.dispose();
         }
         this._data = null;
         clearTimeout(this._timer);
         dispatchEvent(new LoadEvent(LoadEvent.COMPLETE,this._raw.url));
         dispatchEvent(new LoadEvent(LoadEvent.FINISH,this._raw.url));
      }
      
      public function abort() : void
      {
         if(this._raw.loading && this._raw.status == 0)
         {
            this._raw.abort();
            dispatchEvent(new LoadEvent(LoadEvent.ABORT,this._raw.url));
         }
      }
      
      public function dispose() : void
      {
         clearTimeout(this._timer);
         this._loading = false;
         if(this._raw)
         {
            this._raw.removeEventListener(LoadEvent.FINISH,this.finishHandler);
            this._raw.removeEventListener(LoadEvent.PROGRESS,this.progressHandler);
            this._raw.dispose();
         }
         if(this._loader)
         {
            this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.completeHandler);
            this._loader.uncaughtErrorEvents.removeEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.uncaughtErrorHandler);
            try
            {
               this._loader.unloadAndStop(true);
            }
            catch(error:Error)
            {
               _loader.unload();
            }
            this._loader = null;
         }
         this._data = null;
      }
      
      public function loadBytes(param1:ByteArray, param2:String) : void
      {
         this._raw.loadBytes.apply(null,arguments);
         this._data = this._raw.data;
         this.loadSWF();
      }
      
      public function get domain() : ApplicationDomain
      {
         return this._domain;
      }
      
      public function get url() : String
      {
         return this._raw.url;
      }
      
      public function get loading() : Boolean
      {
         return this._loading;
      }
      
      public function get loader() : Loader
      {
         return this._loader;
      }
      
      public function autoSetNull() : void
      {
         if(this._loader != null)
         {
            if(this._loader["hasOwnProperty"]("unload"))
            {
               this._loader["unload"]();
            }
         }
         this._raw = null;
         this._loader = null;
         this._data = null;
         this._domain = null;
      }
   }
}
