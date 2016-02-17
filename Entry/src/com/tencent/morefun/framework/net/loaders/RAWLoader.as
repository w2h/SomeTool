package com.tencent.morefun.framework.net.loaders
{
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import flash.net.URLLoader;
   import com.tencent.morefun.framework.net.LoadManager;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import flash.net.URLRequest;
   import com.tencent.morefun.framework.loader.FileManager;
   import com.tencent.morefun.framework.net.events.LoadEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.IOErrorEvent;
   import flash.events.HTTPStatusEvent;
   import flash.events.ProgressEvent;
   import flash.events.Event;
   import flash.events.ErrorEvent;
   import com.tencent.morefun.framework.log.logger;
   
   public class RAWLoader extends EventDispatcher implements IFileLoader
   {
      
      public static const TIME_OUT:uint = 5 * 1000;
      
      public static const MAX_RELOAD_COUNT:uint = 2;
       
      protected var _url:String;
      
      private var _data:ByteArray;
      
      private var _loader:URLLoader;
      
      protected var _status:int;
      
      protected var _reloadCount:uint;
      
      protected var _loading:Boolean;
      
      protected var _timer:uint;
      
      protected var _isOnSpeedTest:Boolean;
      
      public function RAWLoader()
      {
         super();
      }
      
      public function load(param1:String) : void
      {
         if(!param1)
         {
            return;
         }
         this._url = param1;
         this._reloadCount = 0;
         this._loading = true;
         this.start();
      }
      
      protected function start() : void
      {
         if(LoadManager.SPEED_TEST_FLAG)
         {
            if(LoadManager.START_UPDATE_TIME < 0.001)
            {
               LoadManager.START_UPDATE_TIME = new Date().time;
            }
            this._isOnSpeedTest = true;
         }
         this._loader && this.dispose();
         this._loader = new URLLoader();
         this._loader.dataFormat = URLLoaderDataFormat.BINARY;
         clearTimeout(this._timer);
         this.listen(this._loader);
         this._timer = setTimeout(this.timeout,TIME_OUT * (this._reloadCount + 1));
         this._loader.load(new URLRequest(FileManager.getQualifiedUrl(this._url) + this._reloadURIComponent));
      }
      
      private function get _reloadURIComponent() : String
      {
         return this._reloadCount > 0?"?reload=" + this._reloadCount:"";
      }
      
      private function reload() : void
      {
         this._reloadCount++;
         this._status = 0;
         this.start();
      }
      
      private function timeout() : void
      {
         if(this._reloadCount >= MAX_RELOAD_COUNT)
         {
            this.log("failure->timeout:",this._url + this._reloadURIComponent);
            this.dispose();
            this.finish();
            dispatchEvent(new LoadEvent(LoadEvent.TIME_OUT,this._url));
            this._isOnSpeedTest = false;
            return;
         }
         this.log("reload->timeout:",this._url + this._reloadURIComponent);
         this.reload();
      }
      
      protected function listen(param1:URLLoader) : void
      {
         if(!param1)
         {
            return;
         }
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.completeHandler);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.completeHandler);
         param1.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.statusHandler);
         param1.addEventListener(ProgressEvent.PROGRESS,this.progressHandler);
         param1.addEventListener(Event.COMPLETE,this.completeHandler);
      }
      
      protected function unlisten(param1:URLLoader) : void
      {
         if(!param1)
         {
            return;
         }
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.completeHandler);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.completeHandler);
         param1.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.statusHandler);
         param1.removeEventListener(ProgressEvent.PROGRESS,this.progressHandler);
         param1.removeEventListener(Event.COMPLETE,this.completeHandler);
      }
      
      protected function progressHandler(param1:ProgressEvent) : void
      {
         clearTimeout(this._timer);
         if(length)
         {
            if(param1.bytesTotal > param1.bytesLoaded)
            {
               this._timer = setTimeout(this.timeout,TIME_OUT * (this._reloadCount + 1));
            }
         }
         dispatchEvent(new LoadEvent(LoadEvent.PROGRESS,this._url,param1));
      }
      
      private function completeEventTimeout() : void
      {
         this.completeHandler(new Event(Event.COMPLETE));
      }
      
      protected function statusHandler(param1:HTTPStatusEvent) : void
      {
         this._status = param1.status;
      }
      
      protected function completeHandler(param1:Event) : void
      {
         if(!this._loader)
         {
            this.log("[" + this._url + "]文件已被提前垃圾回收:" + param1.toString());
            this._isOnSpeedTest = false;
            return;
         }
         if(param1 is ErrorEvent)
         {
            param1.preventDefault();
            this.log((param1 as ErrorEvent).text);
         }
         this._loading = false;
         clearTimeout(this._timer);
         this.unlisten(this._loader);
         if(param1.type == Event.COMPLETE)
         {
            this._data = this._loader.data as ByteArray;
            if(!this._data && this._reloadCount < MAX_RELOAD_COUNT)
            {
               this.log("reload->invalide:",this._url + this._reloadURIComponent);
               this.reload();
               return;
            }
            if(this._isOnSpeedTest)
            {
               LoadManager.CURRENT_LOAD_BYTES = LoadManager.CURRENT_LOAD_BYTES + this._data.length;
               LoadManager.LAST_UPDATE_TIME = new Date().time;
               this._isOnSpeedTest = false;
            }
            try
            {
               this._data.uncompress();
            }
            catch(error:Error)
            {
            }
            dispatchEvent(new LoadEvent(LoadEvent.COMPLETE,this._url));
            this.finish();
         }
         else if(this._reloadCount < MAX_RELOAD_COUNT)
         {
            this.log("reload->" + param1.type + ":",this._url + this._reloadURIComponent);
            this.reload();
         }
         else
         {
            this.log("failure->" + param1.type + ":",this._url + this._reloadURIComponent);
            dispatchEvent(new LoadEvent(LoadEvent.ERROR,this._url,param1));
            this.finish();
         }
      }
      
      public function abort() : void
      {
         clearTimeout(this._timer);
         try
         {
            this._loader.close();
         }
         catch(err:Error)
         {
         }
         if(this._loading && this._status == 0)
         {
            dispatchEvent(new LoadEvent(LoadEvent.ABORT,this._url));
         }
         this._isOnSpeedTest = false;
      }
      
      public function dispose() : void
      {
         clearTimeout(this._timer);
         if(this._loader)
         {
            try
            {
               this._loader.close();
            }
            catch(error:Error)
            {
            }
            if(this._loader.data)
            {
               this._loader.data.clear();
               this._loader.data = null;
            }
            this.unlisten(this._loader);
         }
         if(this._data)
         {
            this._data.clear();
            this._data = null;
         }
         this._loader = null;
      }
      
      public function loadBytes(param1:ByteArray, param2:String) : void
      {
         this._data = param1;
         this._url = param2;
         if(!this._data || !this._url)
         {
            throw new ArgumentError("参数不能为空: data = " + (param1?"bytes:" + param1.length:null) + ", url = " + param2);
         }
         try
         {
            this._data.uncompress();
         }
         catch(error:Error)
         {
         }
         dispatchEvent(new LoadEvent(LoadEvent.COMPLETE,this._url));
         this.finish();
      }
      
      protected function finish() : void
      {
         dispatchEvent(new LoadEvent(LoadEvent.FINISH,this._url));
         this._isOnSpeedTest = false;
      }
      
      protected function log(... rest) : void
      {
         logger.output("[RAWLoader]",rest.join(" "));
      }
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function get data() : ByteArray
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this._status;
      }
      
      public function get loading() : Boolean
      {
         return this._loading;
      }
      
      public function autoSetNull() : void
      {
         this._url = null;
         this._data = null;
         this._loader = null;
      }
   }
}
