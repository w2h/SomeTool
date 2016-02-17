package com.tencent.morefun.framework.loader
{
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.system.ApplicationDomain;
   import com.tencent.morefun.framework.loader.mission.Mission;
   import flash.utils.ByteArray;
   import flash.net.SharedObjectFlushStatus;
   import flash.events.NetStatusEvent;
   
   public class LoaderAssist extends EventDispatcher implements ILoader
   {
      
      protected static var isCachePanel:Boolean;
      
      protected static var sharedObjectMap:Object = {};
      
      protected static var sharedObjectTempMap:Object = {};
      
      protected static var memoryMap:Object = {};
      
      public static var version:String = "1.44";
      
      public static var NO_CACHE:uint = 0;
      
      public static var MEMORY_CACHE:uint = 1;
      
      public static var FLASH_CACHE:uint = 2;
       
      private var _applicationDomain:ApplicationDomain;
      
      private var _lazyQueue:Array;
      
      private var _lazyMission:Object;
      
      private var _currentLazyMission:Mission;
      
      protected var _queue:Array;
      
      protected var _completQueue:Array;
      
      private var _memory:Object;
      
      private var _currentMission:Mission;
      
      private var _sharedObject:SharedObject;
      
      private var _sharedObjectTemp:Object;
      
      private var _name:String;
      
      private var _traceFunction:Function;
      
      private var _base:String = "";
      
      public function LoaderAssist(param1:String)
      {
         this._applicationDomain = new ApplicationDomain();
         super();
         this._name = param1;
         this._sharedObject = getSharedObject(param1);
         this._sharedObjectTemp = getSharedObjectTemp(param1);
         this._memory = getMemory(param1);
         this._queue = [];
         this._completQueue = [];
         this._lazyQueue = [];
         this._lazyMission = {};
      }
      
      protected static function getSharedObject(param1:String) : SharedObject
      {
         var _loc2_:SharedObject = sharedObjectMap[param1];
         if(!_loc2_)
         {
            _loc2_ = sharedObjectMap[param1] = SharedObject.getLocal(param1,"/");
         }
         return _loc2_;
      }
      
      protected static function getSharedObjectTemp(param1:String) : Object
      {
         var _loc2_:Object = sharedObjectTempMap[param1];
         if(!_loc2_)
         {
            _loc2_ = sharedObjectTempMap[param1] = {};
         }
         return _loc2_;
      }
      
      protected static function getMemory(param1:String) : Object
      {
         var _loc2_:Object = memoryMap[param1];
         if(!_loc2_)
         {
            _loc2_ = memoryMap[param1] = {};
         }
         return _loc2_;
      }
      
      protected static function emptyObject(param1:Object) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         for(_loc2_ in param1)
         {
            delete param1[_loc2_];
         }
      }
      
      public function get traceFunction() : Function
      {
         return this._traceFunction;
      }
      
      public function set traceFunction(param1:Function) : void
      {
         this._traceFunction = param1;
      }
      
      public function get base() : String
      {
         return this._base;
      }
      
      public function set base(param1:String) : void
      {
         this._base = param1 || "";
      }
      
      public function get applicationDomain() : ApplicationDomain
      {
         return this._applicationDomain;
      }
      
      public function set applicationDomain(param1:ApplicationDomain) : void
      {
         this._applicationDomain = param1 || new ApplicationDomain();
      }
      
      public function getClass(param1:String) : Class
      {
         var _loc2_:Class = null;
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
      
      public function hasBytes(param1:String) : Boolean
      {
         var _loc2_:ByteArray = this._memory[param1] || this._sharedObjectTemp[param1] || this._sharedObject.data[param1];
         return _loc2_ != null;
      }
      
      public function getBytes(param1:String, param2:Boolean = false) : ByteArray
      {
         var _loc3_:ByteArray = this._memory[param1] || this._sharedObjectTemp[param1] || this._sharedObject.data[param1];
         _loc3_ = Mission.copyBytes(_loc3_);
         if(param2)
         {
            Mission.uncompress(_loc3_);
         }
         return _loc3_;
      }
      
      public function removeAllBytes() : void
      {
         emptyObject(this._memory);
         emptyObject(this._sharedObjectTemp);
         emptyObject(this._sharedObject.data);
      }
      
      public function removeBytes(param1:String) : void
      {
         delete this._sharedObject.data[param1];
         delete this._sharedObjectTemp[param1];
         delete this._memory[param1];
      }
      
      public function get missionCount() : uint
      {
         return this._queue.length;
      }
      
      public function hasMission(param1:String) : Boolean
      {
         var _loc2_:uint = 0;
         if(this.currentMission && this.currentMission.name == param1)
         {
            return true;
         }
         _loc2_ = 0;
         while(_loc2_ < this._queue.length)
         {
            if(Mission(this._queue[_loc2_]).name == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function missionIsComplete(param1:String) : Boolean
      {
         var _loc2_:uint = 0;
         _loc2_ = 0;
         while(_loc2_ < this._completQueue.length)
         {
            if(Mission(this._completQueue[_loc2_]).name == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function trace(... rest) : void
      {
         if(this.traceFunction != null)
         {
            this.traceFunction.apply(null,rest);
         }
      }
      
      public function get currentMission() : Mission
      {
         return this._currentMission;
      }
      
      protected function stopCurrentMission() : void
      {
         if(!this.currentMission)
         {
            return;
         }
         var _loc1_:Mission = this.currentMission;
         _loc1_.abort();
         this._queue.unshift(_loc1_);
         this.setCurrentMission(null);
      }
      
      public function loadMission(param1:Mission) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function loadNextMisson() : void
      {
         if(this.currentMission)
         {
            return;
         }
         if(this.missionCount < 1)
         {
            dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_EMPTY));
            this.startLazyQueue();
            return;
         }
         var _loc1_:Mission = this._queue.shift() as Mission;
         this.setCurrentMission(_loc1_);
         if(_loc1_.useCache)
         {
            _loc1_.start(this.getBytes(_loc1_.name));
         }
         else
         {
            _loc1_.start(null);
         }
      }
      
      protected function setCurrentMission(param1:Mission) : void
      {
         if(this.currentMission)
         {
            this.currentMission.removeEventListener(LoaderEvent.MISSION_START,this.missionHandler);
            this.currentMission.removeEventListener(LoaderEvent.MISSION_PROGRESS,this.missionHandler);
            this.currentMission.removeEventListener(LoaderEvent.MISSION_COMPLETE,this.missionHandler);
            this.currentMission.removeEventListener(LoaderEvent.MISSION_ERROR,this.missionHandler);
            this.currentMission.removeEventListener(LoaderEvent.MISSION_ABORT,this.missionHandler);
            this._currentMission = null;
         }
         if(!param1)
         {
            return;
         }
         this._currentMission = param1;
         param1.addEventListener(LoaderEvent.MISSION_START,this.missionHandler);
         param1.addEventListener(LoaderEvent.MISSION_PROGRESS,this.missionHandler);
         param1.addEventListener(LoaderEvent.MISSION_COMPLETE,this.missionHandler);
         param1.addEventListener(LoaderEvent.MISSION_ERROR,this.missionHandler);
         param1.addEventListener(LoaderEvent.MISSION_ABORT,this.missionHandler);
      }
      
      public function removeAllMission(param1:Boolean) : void
      {
         var _loc2_:Mission = null;
         if(param1 && this.currentMission)
         {
            this.currentMission.abort();
            _loc2_ = this.currentMission;
            this.setCurrentMission(null);
            dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,_loc2_));
         }
         while(this._queue.length > 0)
         {
            _loc2_ = this._queue.pop() as Mission;
            _loc2_.destroy();
            dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,_loc2_));
         }
         while(this._completQueue.length > 0)
         {
            _loc2_ = this._completQueue.pop() as Mission;
            _loc2_.destroy();
            dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,_loc2_));
         }
      }
      
      public function getMission(param1:String) : Mission
      {
         var _loc2_:uint = 0;
         if(this.currentMission && this.currentMission.name == param1)
         {
            return this.currentMission;
         }
         _loc2_ = 0;
         while(_loc2_ < this._queue.length)
         {
            if(Mission(this._queue[_loc2_]).name == param1)
            {
               return this._queue[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function getCompleteMission(param1:String) : Mission
      {
         var _loc2_:uint = 0;
         _loc2_ = 0;
         while(_loc2_ < this._completQueue.length)
         {
            if(Mission(this._completQueue[_loc2_]).name == param1)
            {
               return this._completQueue[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function removeMission(param1:String, param2:Boolean) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:Mission = null;
         if(!param1)
         {
            return;
         }
         _loc3_ = 0;
         while(_loc3_ < this._queue.length)
         {
            if(Mission(this._queue[_loc3_]).name == param1)
            {
               _loc4_ = this._queue.splice(_loc3_,1)[0] as Mission;
               dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,_loc4_));
               return;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this._completQueue.length)
         {
            if(Mission(this._completQueue[_loc3_]).name == param1)
            {
               _loc4_ = this._completQueue.splice(_loc3_,1)[0] as Mission;
               _loc4_.destroy();
               dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,_loc4_));
               return;
            }
            _loc3_++;
         }
         if(param2 && this.currentMission && this.currentMission.name == param1)
         {
            _loc4_ = this.currentMission;
            this.currentMission.abort();
            this.setCurrentMission(null);
            dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,_loc4_));
            this.loadNextMisson();
         }
      }
      
      protected function missionHandler(param1:LoaderEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function saveCache(param1:Mission) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function onMissionDestroy(param1:LoaderEvent) : void
      {
         var _loc2_:Mission = null;
         _loc2_ = param1.currentTarget as Mission;
         _loc2_.removeEventListener(LoaderEvent.MISSION_DESTROY,this.onMissionDestroy);
         this._completQueue.splice(this._completQueue.indexOf(_loc2_),1);
         dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,_loc2_));
      }
      
      public function hasLazyMission(param1:String) : Boolean
      {
         var _loc2_:uint = 0;
         if(this.currentLazyMission && this.currentLazyMission.name == param1)
         {
            return true;
         }
         _loc2_ = 0;
         while(_loc2_ < this._lazyQueue.length)
         {
            if(Mission(this._lazyQueue[_loc2_]).name == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function get lazyMissionCount() : uint
      {
         return this._lazyQueue.length;
      }
      
      public function get currentLazyMission() : Mission
      {
         return this._currentLazyMission;
      }
      
      protected function stopCurrentLazyMission() : void
      {
         if(!this.currentLazyMission)
         {
            return;
         }
         var _loc1_:Mission = this.currentLazyMission;
         _loc1_.abort();
         this._lazyQueue.unshift(_loc1_);
         this.setCurrentLazyMission(null);
      }
      
      protected function setCurrentLazyMission(param1:Mission) : void
      {
         if(this.currentLazyMission)
         {
            this.currentLazyMission.removeEventListener(LoaderEvent.MISSION_COMPLETE,this.lazyMissionHandler);
            this.currentLazyMission.removeEventListener(LoaderEvent.MISSION_ERROR,this.lazyMissionHandler);
            this._currentLazyMission = null;
         }
         if(!param1)
         {
            return;
         }
         this._currentLazyMission = param1;
         param1.addEventListener(LoaderEvent.MISSION_COMPLETE,this.lazyMissionHandler);
         param1.addEventListener(LoaderEvent.MISSION_ERROR,this.lazyMissionHandler);
      }
      
      public function loadLazyMission(param1:Mission) : void
      {
         if(!param1.name)
         {
            return;
         }
         if(!param1.path)
         {
            return;
         }
         if(this.hasMission(param1.name) || this.hasLazyMission(param1.name))
         {
            return;
         }
         if(!param1.key)
         {
            param1.key = "";
         }
         if(!param1.applicationDomain)
         {
            param1.applicationDomain = this.applicationDomain;
         }
         if(!param1.base)
         {
            param1.base = this.base;
         }
         this._lazyQueue.push(param1);
         this.startLazyQueue();
      }
      
      public function startLazyQueue() : void
      {
         if(this.lazyMissionCount < 1)
         {
            return;
         }
         if(this.currentMission)
         {
            return;
         }
         if(this.currentLazyMission)
         {
            return;
         }
         this.loadNextLazyMission();
      }
      
      public function stopLazyQueue() : void
      {
         if(!this.currentLazyMission)
         {
            return;
         }
         this.stopCurrentLazyMission();
      }
      
      protected function loadNextLazyMission() : void
      {
         if(this.currentMission)
         {
            return;
         }
         if(this.currentLazyMission)
         {
            return;
         }
         if(this.lazyMissionCount < 1)
         {
            dispatchEvent(new LoaderEvent(LoaderEvent.LAZY_MISSION_EMPTY));
            return;
         }
         var _loc1_:Mission = this._lazyQueue.shift() as Mission;
         this.setCurrentLazyMission(_loc1_);
         if(_loc1_.useCache)
         {
            _loc1_.start(this.getBytes(_loc1_.name));
         }
         else
         {
            _loc1_.start(null);
         }
      }
      
      protected function lazyMissionHandler(param1:LoaderEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function getLazyMission(param1:String) : Mission
      {
         return this._lazyMission[param1];
      }
      
      public function get flashCacheSize() : Number
      {
         return this._sharedObject.size;
      }
      
      public function get isCachePanel() : Boolean
      {
         return LoaderAssist.isCachePanel;
      }
      
      public function transferCache() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this._sharedObjectTemp)
         {
            this._sharedObject.data[_loc1_] = this._sharedObjectTemp[_loc1_];
         }
      }
      
      public function flushCache() : void
      {
         var _loc1_:String = null;
         if(!this.isNeedFlush)
         {
            return;
         }
         if(this.isCachePanel)
         {
            return;
         }
         try
         {
            _loc1_ = this._sharedObject.flush(1024 * 1024 * 100);
         }
         catch(err:Error)
         {
         }
         if(_loc1_ == SharedObjectFlushStatus.PENDING)
         {
            this._sharedObject.addEventListener(NetStatusEvent.NET_STATUS,this._netStatusEvent);
            LoaderAssist.isCachePanel = true;
            dispatchEvent(new LoaderEvent(LoaderEvent.SHOW_CACHE_PANEL));
         }
         else if(_loc1_ == SharedObjectFlushStatus.FLUSHED)
         {
            this.transferCache();
            emptyObject(this._sharedObjectTemp);
            this._sharedObject.flush(1024 * 1024 * 100);
         }
         else if(!_loc1_)
         {
            dispatchEvent(new LoaderEvent(LoaderEvent.DISABLED_CACHE));
         }
      }
      
      public function get isNeedFlush() : Boolean
      {
         var _loc1_:String = null;
         for(_loc1_ in this._sharedObjectTemp)
         {
            return true;
         }
         return false;
      }
      
      private function _netStatusEvent(param1:NetStatusEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function dumpCompleteMission() : void
      {
         var _loc1_:Mission = null;
         for each(_loc1_ in this._completQueue)
         {
         }
      }
      
      public function autoSetNull() : void
      {
         sharedObjectMap = null;
         sharedObjectTempMap = null;
         memoryMap = null;
         version = null;
         this._applicationDomain = null;
         this._lazyQueue = null;
         this._lazyMission = null;
         this._currentLazyMission = null;
         this._queue = null;
         this._completQueue = null;
         this._memory = null;
         this._currentMission = null;
         this._sharedObject = null;
         this._sharedObjectTemp = null;
         this._name = null;
         this._traceFunction = null;
         this._base = null;
      }
   }
}
