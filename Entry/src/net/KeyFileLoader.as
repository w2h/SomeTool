package net
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import file.FileAssetManager;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import nochump.util.zip.ZipFile;
   import flash.display.Loader;
   import util.decryptSWF;
   import flash.system.LoaderContext;
   import flash.system.ApplicationDomain;
   
   public class KeyFileLoader extends EventDispatcher
   {
       
      private var _config:XML;
      
      private var _cfg:Dictionary;
      
      private var _byteAssets:Dictionary;
      
      private var _progress:Dictionary;
      
      private var _percent:Number;
      
      private var _total:uint;
      
      private var _queue:LoadRecord;
      
      private var _rsl:LoadRecord;
      
      public function KeyFileLoader(param1:XML)
      {
         super();
         this._config = param1;
      }
      
      public function start() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         this._percent = 0;
         this._cfg = new Dictionary(false);
         this._byteAssets = new Dictionary(false);
         this._progress = new Dictionary(false);
         this._queue = new LoadRecord();
         this._rsl = new LoadRecord();
         for each(_loc1_ in this._config.init.cfg.item)
         {
            _loc2_ = FileAssetManager.getQualifiedUrl(_loc1_.@url);
            this._cfg[String(_loc1_.@name)] = _loc2_;
            this._queue.list.push(_loc2_);
         }
         _loc3_ = [];
         for each(_loc1_ in this._config.init.rsl.item)
         {
            _loc2_ = FileAssetManager.getQualifiedUrl(_loc1_.@url);
            _loc3_.push({
               "order":parseInt(_loc1_.@order),
               "url":_loc2_
            });
         }
         _loc3_.sortOn("order",Array.NUMERIC);
         while(_loc3_.length)
         {
            this._queue.list.push(_loc3_[0].url);
            this._rsl.list.push(_loc3_[0].url);
            _loc3_.shift();
         }
         this._total = this._rsl.list.length + this._queue.length;
         var _loc4_:* = 0;
         while(_loc4_ < 4)
         {
            this.loadNextTarget();
            _loc4_++;
         }
      }
      
      private function loadNextTarget() : void
      {
         if(this._queue.index >= this._queue.length)
         {
            return;
         }
         var _loc1_:String = this._queue.list[this._queue.index++];
         var _loc2_:URLLoader = new URLLoader();
         _loc2_.dataFormat = URLLoaderDataFormat.BINARY;
         _loc2_.addEventListener(Event.COMPLETE,this.completeHandler);
         _loc2_.addEventListener(ProgressEvent.PROGRESS,this.progressHandler);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.completeHandler);
         _loc2_.load(new URLRequest(_loc1_));
         this._progress[_loc2_] = {
            "url":_loc1_,
            "percent":0
         };
      }
      
      private function progressHandler(param1:ProgressEvent) : void
      {
         var _loc3_:* = NaN;
         var _loc4_:Object = null;
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         if(param1.bytesLoaded && param1.bytesTotal)
         {
            this._progress[_loc2_].percent = param1.bytesLoaded / param1.bytesTotal;
         }
         this._percent = 0;
         for each(_loc4_ in this._progress)
         {
            _loc3_ = _loc4_.percent;
            if(!(_loc3_ == Infinity || isNaN(_loc3_)))
            {
               this._percent = this._percent + _loc3_;
            }
         }
         this._percent = 100 * this._percent / this._total;
         dispatchEvent(param1);
      }
      
      private function completeHandler(param1:Event) : void
      {
         var _loc3_:URLLoader = param1.currentTarget as URLLoader;
         _loc3_.removeEventListener(Event.COMPLETE,arguments.callee);
         _loc3_.removeEventListener(IOErrorEvent.IO_ERROR,arguments.callee);
         _loc3_.removeEventListener(ProgressEvent.PROGRESS,arguments.callee);
         var _loc4_:String = this._progress[_loc3_].url;
         var _loc5_:String = String(_loc4_.split("?").shift().match(new RegExp("[^\\.]+$"))[0]).toLowerCase();
         if(param1.type != Event.COMPLETE)
         {
            dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,_loc4_,404));
            return;
         }
         this._byteAssets[_loc4_] = {
            "bytes":_loc3_.data,
            "type":_loc5_
         };
         this.loadNextRSL();
         if(++this._queue.count < this._queue.length)
         {
            this.loadNextTarget();
         }
      }
      
      private function loadNextRSL() : void
      {
         if(this._rsl.loading)
         {
            return;
         }
         if(this._rsl.count >= this._rsl.length)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         var _loc1_:String = this._rsl.list[this._rsl.index];
         var _loc2_:Object = this._byteAssets[_loc1_];
         if(!_loc2_ || !_loc2_.bytes)
         {
            return;
         }
         this._rsl.loading = true;
         this._rsl.index++;
         if(_loc2_.type == "swc")
         {
            this.loadSWCBytes(_loc2_.bytes);
         }
         else
         {
            this.loadSWFBytes(_loc2_.bytes);
         }
      }
      
      private function loadSWCBytes(param1:ByteArray) : void
      {
         var _loc2_:ZipFile = new ZipFile(param1);
         this.loadSWFBytes(_loc2_.getInput(_loc2_.getEntry("library.swf")));
      }
      
      private function loadSWFBytes(param1:ByteArray) : void
      {
         var _loc2_:Loader = new Loader();
         _loc2_.contentLoaderInfo.addEventListener(Event.COMPLETE,this.processSWFCompleteHandler);
         _loc2_.loadBytes(decryptSWF(param1),new LoaderContext(false,ApplicationDomain.currentDomain));
      }
      
      private function processSWFCompleteHandler(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(param1.type,arguments.callee);
         this._rsl.loading = false;
         this._rsl.count++;
         dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS));
         this.loadNextRSL();
      }
      
      public function getConfig(param1:String) : XML
      {
         var _loc2_:String = this._cfg[param1];
         var _loc3_:Object = this._byteAssets[_loc2_];
         var _loc4_:ByteArray = _loc3_.bytes;
         if(_loc4_)
         {
            try
            {
               _loc4_.uncompress();
            }
            catch(err:*)
            {
            }
         }
         return _loc4_?new XML(_loc4_):null;
      }
      
      public function get percent() : Number
      {
         return this._percent + this._rsl.count / this._total * 100;
      }
   }
}

class LoadRecord
{
    
   public var index:uint;
   
   public var count:uint;
   
   public var loading:Boolean;
   
   public var list:Vector.<String>;
   
   function LoadRecord()
   {
      super();
      this.list = new Vector.<String>();
   }
   
   public function get length() : uint
   {
      return this.list.length;
   }
}
