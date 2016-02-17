package com.tencent.morefun.framework.net
{
   import com.tencent.morefun.framework.loader.FileManager;
   import com.tencent.morefun.framework.log.logger;
   import com.tencent.morefun.framework.net.data.LoadTaskAssetInfo;
   import com.tencent.morefun.framework.net.def.FileTypeDef;
   import com.tencent.morefun.framework.net.def.LoadStatusDef;
   import com.tencent.morefun.framework.net.events.LoadEvent;
   import com.tencent.morefun.framework.net.loaders.IFileLoader;
   import com.tencent.morefun.framework.net.loaders.PKGLoader;
   import com.tencent.morefun.framework.net.loaders.RAWLoader;
   import com.tencent.morefun.framework.net.loaders.SWCLoader;
   import com.tencent.morefun.framework.net.loaders.SWFLoader;
   import com.tencent.morefun.framework.net.loaders.TXTLoader;
   import com.tencent.morefun.framework.net.loaders.XMLLoader;
   import com.tencent.morefun.framework.net.loaders.ZIPLoader;
   
   import flash.errors.IllegalOperationError;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   
   class MultiThreadLoader extends EventDispatcher
   {
      
      private static const MAX_THREAD_COUNT:uint = 4;
      
      private static const STATUS_PRINT_INTERVAL:uint = 5 * 1000;
      
      private static const _resources:Dictionary = new Dictionary(false);
      
      private static const _bytes:Dictionary = new Dictionary(false);
      
      private static const _map:Dictionary = new Dictionary(false);
      
      private static const _waitings:Vector.<LoadTaskAssetInfo> = new Vector.<LoadTaskAssetInfo>();
       
      private var _currents:Vector.<LoadTaskAssetInfo>;
      
      private var _queue:Vector.<LoadTaskAssetInfo>;
      
      private var _running:Boolean;
      
      private var _name:String;
      
      private var _record:PrintRecord;
      
      private var _timer:Timer;
      
      public var lazyType:Boolean = false;
      
      function MultiThreadLoader(param1:String = null)
      {
         super();
         this._name = param1;
         this._currents = new Vector.<LoadTaskAssetInfo>();
         this._queue = new Vector.<LoadTaskAssetInfo>();
         this._record = new PrintRecord();
         this._timer = new Timer(STATUS_PRINT_INTERVAL);
         this._timer.addEventListener(TimerEvent.TIMER,this.logLoadingStatus);
         this._timer.start();
      }
      
      public static function create(param1:String, param2:ApplicationDomain = null, param3:String = "utf-8") : IFileLoader
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new IllegalOperationError("Not decompiled due to error");
      }
      
      public static function dispose(param1:String) : void
      {
         var _loc2_:LoadTaskAssetInfo = _map[param1] as LoadTaskAssetInfo;
         if(_loc2_)
         {
            _loc2_.dispose();
            if(!_loc2_.referCount)
            {
               delete _resources[param1];
               delete _map[param1];
            }
         }
      }
      
      public static function kill(param1:String) : void
      {
         var _loc2_:LoadTaskAssetInfo = _map[param1] as LoadTaskAssetInfo;
         if(_loc2_)
         {
            while(_loc2_.referCount)
            {
               _loc2_.release();
            }
            _loc2_.dispose();
            if(!_loc2_.referCount)
            {
               delete _resources[param1];
               delete _map[param1];
            }
         }
      }
      
      public static function disposeAll() : void
      {
         var _loc2_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in _map)
         {
            _loc1_.push(_loc2_);
         }
         MemoryDisposeRunner.start(_loc1_,dispose);
      }
      
      public static function gc() : void
      {
         var _loc1_:LoadTaskAssetInfo = null;
         var _loc2_:String = null;
         for(_loc2_ in _map)
         {
            _loc1_ = _map[_loc2_];
            if(_loc1_ && !_loc1_.referCount && _resources[_loc2_])
            {
               if(_loc1_.callbacks && !_loc1_.callbacks.length)
               {
                  dispose(_loc2_);
               }
            }
         }
      }
      
      public static function retainAsset(param1:String) : int
      {
         var _loc2_:LoadTaskAssetInfo = _map[param1] as LoadTaskAssetInfo;
         return _loc2_?_loc2_.retain():-1;
      }
      
      public static function releaseAsset(param1:String) : int
      {
         var _loc2_:LoadTaskAssetInfo = _map[param1] as LoadTaskAssetInfo;
         return _loc2_?_loc2_.release():-1;
      }
      
      public static function getReferCount(param1:String) : int
      {
         var _loc2_:LoadTaskAssetInfo = _map[param1] as LoadTaskAssetInfo;
         return _loc2_?_loc2_.referCount:-1;
      }
      
      public static function collectResourceRefer() : Vector.<Object>
      {
         var asset:LoadTaskAssetInfo = null;
         var url:String = null;
         var result:Vector.<Object> = new Vector.<Object>();
         for(url in _map)
         {
            asset = _map[url] as LoadTaskAssetInfo;
            result.push({
               "url":asset.url,
               "referCount":asset.referCount
            });
         }
         result.sort(function(param1:Object, param2:Object):int
         {
            if(param1.referCount != param2.referCount)
            {
               return param1.referCount > param2.referCount?-1:1;
            }
            return param1.url > param2.url?-1:1;
         });
         return result;
      }
      
      public static function hasResource(param1:String) : Boolean
      {
         return _resources[param1] != null;
      }
      
      public static function getResource(param1:String) : *
      {
         var _loc3_:LoadTaskAssetInfo = null;
         var _loc2_:* = _resources[param1];
         if(_loc2_)
         {
            _loc3_ = _map[param1] as LoadTaskAssetInfo;
            if(!_loc3_)
            {
               throw new Error("[MultiThreadLoader]资源管理异常: " + param1);
            }
            _loc3_.retain();
         }
         return _loc2_;
      }
      
      public function hasTask(param1:String) : Boolean
      {
         var _loc2_:LoadTaskAssetInfo = _map[param1] as LoadTaskAssetInfo;
         return _loc2_ && (_loc2_.status == LoadStatusDef.LOADING || _loc2_.status == LoadStatusDef.WAIT);
      }
      
      public function pushTask(param1:String, param2:Function = null, param3:ApplicationDomain = null, param4:String = "utf-8", param5:int = 0) : Boolean
      {
         var _loc7_:* = false;
         var _loc6_:LoadTaskAssetInfo = _map[param1] as LoadTaskAssetInfo;
         if(_loc6_ && _loc6_.status == LoadStatusDef.COMPLETE)
         {
            if(_resources[param1])
            {
               if(param2 != null)
               {
                  if(_loc6_.callbacks.indexOf(param2) < 0)
                  {
                     _loc6_.callbacks.push(param2);
                  }
               }
               _loc6_.callbacks.length && this.finishTask(_loc6_);
               return false;
            }
            kill(param1);
         }
         _loc6_ = _map[param1] as LoadTaskAssetInfo;
         if(!_loc6_)
         {
            _loc6_ = new LoadTaskAssetInfo();
            _loc6_.loader = MultiThreadLoader.create(param1,param3,param4);
            _loc6_.url = param1;
            _loc6_.sortLevel = param5;
         }
         if(param2 != null)
         {
            if(_loc6_.callbacks.indexOf(param2) < 0)
            {
               _loc6_.callbacks.push(param2);
            }
         }
         _loc6_.mirror = FileManager.getArchiveUrl(param1);
         if(!_map[param1])
         {
            _loc7_ = true;
            _map[param1] = _loc6_;
            if(_loc6_.mirror)
            {
               if(_bytes[param1])
               {
                  this._queue.push(_loc6_);
               }
               else
               {
                  _waitings.push(_loc6_);
                  this.pushTask(_loc6_.mirror,this.processArchive,null,"utf-8");
               }
            }
            else
            {
               this._queue.push(_loc6_);
               if(this.lazyType == true)
               {
                  this._queue = this._queue.sort(this.sortLevelfun);
               }
            }
         }
         else
         {
            this.log("pushTask->skip:" + param1 + ", cause:" + _loc6_.status);
         }
         this.update();
         return _loc7_;
      }
      
      private function sortLevelfun(param1:LoadTaskAssetInfo, param2:LoadTaskAssetInfo) : int
      {
         if(param1.sortLevel > param2.sortLevel)
         {
            return 1;
         }
         if(param1.sortLevel < param2.sortLevel)
         {
            return -1;
         }
         return 0;
      }
      
      private function processArchive(param1:PKGLoader, param2:String) : void
      {
         var _loc3_:LoadTaskAssetInfo = null;
         this.log(">>=" + param2);
         var _loc4_:int = 0;
         while(_loc4_ < _waitings.length)
         {
            _loc3_ = _waitings[_loc4_];
            if(_loc3_.mirror == param2)
            {
               if(!_bytes[_loc3_.url])
               {
                  _loc3_.mirror = null;
               }
               this._queue.push(_loc3_);
               _waitings.splice(_loc4_--,1);
            }
            _loc4_++;
         }
         dispose(param2);
         this.update();
      }
      
      public function removeTask(param1:String) : void
      {
         var _loc2_:LoadTaskAssetInfo = _map[param1];
         var _loc3_:int = this._queue.indexOf(_loc2_);
         if(_loc3_ >= 0)
         {
            this._queue.splice(_loc3_,1);
         }
         _loc3_ = this._currents.indexOf(_loc2_);
         if(_loc3_ >= 0)
         {
            _loc2_ = this._currents.splice(_loc3_,1).pop();
            this.unlisten(_loc2_.loader);
         }
         dispose(param1);
         this.update();
      }
      
      private function listen(param1:IFileLoader) : void
      {
         param1.addEventListener(LoadEvent.FINISH,this.finishHandler);
         param1.addEventListener(LoadEvent.PROGRESS,this.progressHandler);
      }
      
      private function unlisten(param1:IFileLoader) : void
      {
         param1.removeEventListener(LoadEvent.FINISH,this.finishHandler);
         param1.removeEventListener(LoadEvent.PROGRESS,this.progressHandler);
      }
      
      private function progressHandler(param1:LoadEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function finishHandler(param1:LoadEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new IllegalOperationError("Not decompiled due to error");
      }
      
      private function finishTask(param1:LoadTaskAssetInfo) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function start() : void
      {
         this._queue.length && this.update();
      }
      
      private function logLoadingStatus(param1:Boolean = false) : void
      {
         var _loc3_:* = 0;
         var _loc2_:Boolean = this._queue.length > 0 || this._currents.length > 0;
         if(!_loc2_)
         {
            _loc2_ = _loc2_ || ++this._record.count % Math.round(30 * 1000 / STATUS_PRINT_INTERVAL) == 0;
            _loc2_ = _loc2_ && ++this._record.freeCount <= 2;
         }
         else
         {
            this._record.freeCount = 0;
         }
         _loc2_ = _loc2_ && param1;
         if(_loc2_)
         {
            this.log("--------------------<LoadingStatus>--------------------");
            _loc3_ = 0;
            while(_loc3_ < this._currents.length)
            {
               this.log(_loc3_ + 1 + "." + this._currents[_loc3_].toString());
               _loc3_++;
            }
            this.log("idle:" + (MAX_THREAD_COUNT - this._currents.length) + ", queue:" + this._queue.length);
         }
      }
      
      public function update() : void
      {
         var _loc1_:LoadTaskAssetInfo = null;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._currents.length)
         {
            if(this._currents[_loc2_].status != LoadStatusDef.LOADING)
            {
               this._currents.splice(_loc2_--,1);
            }
            _loc2_++;
         }
         while(this._currents.length < MAX_THREAD_COUNT && this._queue.length)
         {
            _loc1_ = this._queue.shift();
            if(_loc1_.loader)
            {
               this.listen(_loc1_.loader);
               _loc1_.status = LoadStatusDef.LOADING;
               dispatchEvent(new LoadEvent(LoadEvent.START,_loc1_.url));
               if(!_loc1_.mirror)
               {
                  _loc1_.loader.load(_loc1_.url);
               }
               else
               {
                  _loc1_.loader.loadBytes(this.duplicateFileBytes(_bytes[_loc1_.url]),_loc1_.url);
               }
               if(_loc1_.status == LoadStatusDef.LOADING)
               {
                  this._currents.push(_loc1_);
               }
               this._running = true;
            }
         }
      }
      
      private function duplicateFileBytes(param1:ByteArray) : ByteArray
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeBytes(param1);
         _loc2_.position = 0;
         return _loc2_;
      }
      
      public function stop() : void
      {
         var _loc1_:LoadTaskAssetInfo = null;
         this._running = false;
         while(this._currents.length)
         {
            _loc1_ = this._currents.pop();
            _loc1_.loader.abort();
            _loc1_.status = LoadStatusDef.WAIT;
            this.unlisten(_loc1_.loader);
            this._queue.unshift(_loc1_);
         }
         if(this.lazyType == true)
         {
            this._queue = this._queue.sort(this.sortLevelfun);
         }
      }
      
      private function log(... rest) : void
      {
         logger.output("[thread::" + this._name + "]",rest.join(", "));
      }
      
      public function get running() : Boolean
      {
         return this._running;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get length() : uint
      {
         return this._queue.length;
      }
      
      public function autoSetNull() : void
      {
         this._name = null;
         this._record = null;
      }
   }
}

class PrintRecord
{
    
   public var count:uint;
   
   public var timer:uint;
   
   public var freeCount:uint;
   
   function PrintRecord()
   {
      super();
   }
   
   public function autoSetNull() : void
   {
   }
}
