package com.tencent.morefun.framework.net
{
   import com.tencent.morefun.framework.net.events.LoadEvent;
   import com.tencent.morefun.framework.net.events.LoadNotifyEvent;
   
   import flash.errors.IllegalOperationError;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   [Event(name="error",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="queueComplete",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="complete",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="progress",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="start",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="error",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="queueComplete",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="complete",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="progress",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="start",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   public class LoadManager extends EventDispatcher
   {
      
      public static const LOADER_STATE_IDEL:int = 0;
      
      public static const LOADER_STATE_RUNNING:int = 1;
      
      public static const notifier:com.tencent.morefun.framework.net.LoaderNotifier = new com.tencent.morefun.framework.net.LoaderNotifier();
      
      public static const globeErrorDispatcher:EventDispatcher = new EventDispatcher();
      
      private static const _main:MultiThreadLoader = new MultiThreadLoader("main");
      
      private static const _lazy:MultiThreadLoader = new MultiThreadLoader("lazy");
      
      private static const _manager:Dictionary = new Dictionary(false);
      
      private static var _initialized:Boolean;
      
      public static var CURRENT_LOAD_BYTES:Number;
      
      public static var LAST_UPDATE_TIME:Number;
      
      public static var START_UPDATE_TIME:Number;
      
      public static var SPEED_TEST_FLAG:Boolean;
      
      public static var LOAD_COUNT_TIMER:Timer;
      
      public static var loadState:int = 0;
       
      private var _urls:Vector.<String>;
      
      private var _domain:ApplicationDomain;
      
      private var _progressMap:Dictionary;
      
      private var _map:Dictionary;
      
      private var _name:String;
      
      private var _queue:Vector.<String>;
      
      pub var log:Function;
      
      public function LoadManager(param1:String = null, param2:ApplicationDomain = null)
      {
         super();
         this._name = param1 || Math.random().toFixed(6).substr(2);
         this._domain = param2 || ApplicationDomain.currentDomain;
         this._queue = new Vector.<String>();
         this._urls = new Vector.<String>();
         this._progressMap = new Dictionary(false);
         this._map = new Dictionary(false);
         if(!_initialized)
         {
            setup();
         }
         _main.addEventListener(LoadEvent.PROGRESS,this.loadEventHandler);
         _lazy.addEventListener(LoadEvent.PROGRESS,this.loadEventHandler);
         _main.addEventListener(LoadEvent.START,this.loadEventHandler);
         _lazy.addEventListener(LoadEvent.START,this.loadEventHandler);
         register(this);
      }
      
      public static function StartTestSpeed(param1:int, param2:Function) : int
      {
         var countTimer:int = param1;
         var callBackFunc:Function = param2;
         if(SPEED_TEST_FLAG)
         {
            return 1;
         }
         START_UPDATE_TIME = 0;
         LAST_UPDATE_TIME = 0;
         CURRENT_LOAD_BYTES = 0;
         SPEED_TEST_FLAG = true;
         LOAD_COUNT_TIMER = new Timer(countTimer,1);
         LOAD_COUNT_TIMER.addEventListener(TimerEvent.TIMER_COMPLETE,function(param1:TimerEvent):void
         {
            LOAD_COUNT_TIMER.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments.callee);
            if(!SPEED_TEST_FLAG)
            {
               return;
            }
            LOAD_COUNT_TIMER = null;
            SPEED_TEST_FLAG = false;
            if(callBackFunc != null)
            {
               callBackFunc();
            }
         });
         LOAD_COUNT_TIMER.start();
         return 0;
      }
      
      public static function EndTestSpeed(param1:Function) : void
      {
         if(!SPEED_TEST_FLAG)
         {
            return;
         }
         SPEED_TEST_FLAG = false;
         if(param1 != null)
         {
            param1();
         }
      }
      
      private static function setup() : void
      {
         _lazy.lazyType = true;
         _main.addEventListener(LoadEvent.COMPLETE,priorityHandler);
         _lazy.addEventListener(LoadEvent.COMPLETE,priorityHandler);
         _main.addEventListener(LoadEvent.START,priorityHandler);
         _lazy.addEventListener(LoadEvent.START,priorityHandler);
      }
      
      private static function priorityHandler(param1:LoadEvent) : void
      {
         if(param1.type == LoadEvent.COMPLETE)
         {
            if(param1.currentTarget == _main)
            {
               if(_lazy.length)
               {
                  if(!_lazy.running)
                  {
                     _lazy.start();
                  }
                  else
                  {
                     _lazy.update();
                  }
               }
               notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.MAIN_TASK_COMPLETE));
               if(!_lazy.running)
               {
                  notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.ALL_TASK_COMPLETE));
               }
               loadState = LOADER_STATE_IDEL;
               notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.LOADER_IDLE));
            }
            else if(param1.currentTarget == _lazy)
            {
               notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.LAZY_TASK_COMPLETE));
               if(!_main.running)
               {
                  notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.ALL_TASK_COMPLETE));
               }
            }
         }
         else if(param1.type == LoadEvent.START)
         {
            if(param1.currentTarget == _lazy)
            {
               notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.LAZY_TASK_START));
            }
            else if(param1.currentTarget == _main)
            {
               loadState = LOADER_STATE_RUNNING;
               notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.MAIN_TASK_START));
               notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.LOADER_RUNNING));
            }
         }
      }
      
      private static function register(param1:LoadManager) : void
      {
         if(param1)
         {
            if(_manager[param1.name])
            {
               throw new Error("[LoadManager]加载管理器名字不能重复！");
            }
            _manager[param1.name] = param1;
         }
      }
      
      public static function get running() : Boolean
      {
         return _main.running || _lazy.running;
      }
      
      public static function getManager(param1:String = "default") : LoadManager
      {
         if(!_manager[param1])
         {
            _manager[param1] = new LoadManager(param1);
         }
         return _manager[param1] as LoadManager;
      }
      
      pub static function dispose(param1:String) : void
      {
         MultiThreadLoader.dispose(param1);
      }
      
      pub static function getResource(param1:String) : *
      {
         return MultiThreadLoader.getResource(param1);
      }
      
      pub static function gc(param1:LoadManager) : void
      {
         if(param1)
         {
            _main.removeEventListener(LoadEvent.PROGRESS,param1.loadEventHandler);
            _lazy.removeEventListener(LoadEvent.PROGRESS,param1.loadEventHandler);
            _main.removeEventListener(LoadEvent.START,param1.loadEventHandler);
            _lazy.removeEventListener(LoadEvent.START,param1.loadEventHandler);
            param1.disposeAll();
            delete _manager[param1.name];
         }
      }
      
      pub static function toString() : String
      {
         var _loc3_:uint = 0;
         var _loc4_:Object = null;
         var _loc1_:Vector.<Object> = MultiThreadLoader.collectResourceRefer();
         var _loc2_:String = "[LoaderManager]pub::toString()";
         while(_loc1_.length)
         {
            _loc4_ = _loc1_.shift();
            _loc2_ = _loc2_ + ("\n[" + ++_loc3_ + "]" + _loc4_.url + ", " + _loc4_.referCount);
         }
         return _loc2_;
      }
      
      public static function gc() : void
      {
         MultiThreadLoader.gc();
      }
      
      private function loadEventHandler(param1:LoadEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new IllegalOperationError("Not decompiled due to error");
      }
      
      private function log(... rest) : void
      {
         if(pub::log != null)
         {
            pub::log.call(null,"[" + this._name + "]","[LoadManager]" + rest.join(", ") + getTimer());
         }
      }
      
      public function registerProgressListener(param1:String, param2:Function) : void
      {
         if(this._urls.indexOf(param1) >= 0)
         {
            return;
         }
         if(!this._progressMap[param1])
         {
            this._progressMap[param1] = new Vector.<Function>();
         }
         var _loc3_:Vector.<Function> = this._progressMap[param1] as Vector.<Function>;
         if(param2 != null && _loc3_.indexOf(param2) < 0)
         {
            _loc3_.push(param2);
         }
      }
      
      public function unregisterProgressListener(param1:String, param2:Function) : void
      {
         var _loc3_:Vector.<Function> = null;
         var _loc4_:* = 0;
         if(param2 != null && this._progressMap[param1])
         {
            _loc3_ = this._progressMap[param1] as Vector.<Function>;
            _loc4_ = _loc3_.indexOf(param2);
            if(_loc4_ >= 0)
            {
               _loc3_.splice(_loc4_,1);
            }
         }
      }
      
      public function createObject(param1:String) : Object
      {
         if(this._domain.hasDefinition(param1))
         {
            return new (this._domain.getDefinition(param1) as Class)();
         }
         return null;
      }
      
      public function loadTask(param1:String, param2:Function = null, param3:* = null, param4:ApplicationDomain = null, param5:Boolean = true) : void
      {
         this.log("[load]" + param1);
         this.registerTask(param1,param2,param3);
         if(_main.pushTask(param1,this.processTask,param5?param4 || this._domain:param4,"utf-8"))
         {
            this._queue.push(param1);
         }
         if(_main.length)
         {
            _lazy.running && _lazy.stop();
            if(!_main.running)
            {
               _main.start();
            }
            else
            {
               _main.update();
            }
         }
         else if(!_lazy.running)
         {
            _lazy.start();
         }
      }
      
      public function loadLazyTask(param1:String, param2:Function = null, param3:* = null, param4:ApplicationDomain = null, param5:Boolean = true, param6:int = 0) : void
      {
         this.log("[load::lazy]" + param1);
         this.registerTask(param1,param2,param3,param6);
         if(_lazy.pushTask(param1,this.processTask,param5?param4 || this._domain:param4,"utf-8",param6))
         {
            this._queue.push(param1);
         }
         if(_main.running)
         {
            return;
         }
         if(_lazy.length)
         {
            if(!_lazy.running)
            {
               _lazy.start();
            }
            else
            {
               _lazy.update();
            }
         }
      }
      
      private function registerTask(param1:String, param2:Function = null, param3:* = null, param4:int = 0) : void
      {
         if(!param1)
         {
            throw new Error(this + "URL非法，不能加载！");
         }
         var _loc5_:LoadTaskInfo = this._map[param1] as LoadTaskInfo;
         if(!_loc5_)
         {
            _loc5_ = new LoadTaskInfo();
            _loc5_.url = param1;
         }
         if(param2 != null && !_loc5_.callbacks[param2])
         {
            _loc5_.callbacks[param2] = param3;
         }
         this._map[param1] = _loc5_;
      }
      
      private function processTask(param1:*, param2:String) : void
      {
         this.log((param1?"[complete]":"[error]") + param2);
         var _loc3_:LoadTaskInfo = this._map[param2];
         if(!_loc3_)
         {
            this.log("[LoadManager][" + param2 + "]加载任务已经被清除，不再处理相关回调");
            return;
         }
         _loc3_.complete = true;
         this.finishTask(_loc3_,param1);
         var _loc4_:int = this._queue.indexOf(param2);
         if(_loc4_ >= 0)
         {
            this._queue.splice(_loc4_,1);
            if(this._urls.indexOf(param2) < 0)
            {
               this._urls.push(param2);
            }
         }
         delete this._progressMap[param2];
         if(param1)
         {
            dispatchEvent(new LoadEvent(LoadEvent.COMPLETE,param2,param1));
         }
         else
         {
            globeErrorDispatcher.dispatchEvent(new LoadEvent(LoadEvent.ERROR,param2));
            dispatchEvent(new LoadEvent(LoadEvent.ERROR,param2));
         }
         if(!this._queue.length)
         {
            this.log("done");
            dispatchEvent(new LoadEvent(LoadEvent.QUEUE_COMPLETE,null));
         }
      }
      
      private function finishTask(param1:LoadTaskInfo, param2:*) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function hasLoadTask(param1:String) : Boolean
      {
         var _loc2_:LoadTaskInfo = this._map[param1] as LoadTaskInfo;
         return _loc2_ && _loc2_.complete;
      }
      
      public function hasTask(param1:String) : Boolean
      {
         var _loc2_:LoadTaskInfo = this._map[param1] as LoadTaskInfo;
         return _loc2_ != null;
      }
      
      public function getResource(param1:String) : *
      {
         var _loc2_:LoadTaskInfo = this._map[param1] as LoadTaskInfo;
         if(_loc2_ && _loc2_.complete)
         {
            _loc2_.retain();
            return pub::getResource(param1);
         }
      }
      
      public function retainAsset(param1:String) : int
      {
         var _loc2_:LoadTaskInfo = this._map[param1] as LoadTaskInfo;
         if(_loc2_)
         {
            MultiThreadLoader.retainAsset(param1);
            return _loc2_.retain();
         }
         return -1;
      }
      
      public function releaseAsset(param1:String) : int
      {
         var _loc2_:LoadTaskInfo = this._map[param1] as LoadTaskInfo;
         if(_loc2_ && _loc2_.referCount)
         {
            MultiThreadLoader.releaseAsset(param1);
            return _loc2_.release();
         }
         return -1;
      }
      
      public function killCompleteCallback(param1:String, param2:Function) : void
      {
         var _loc4_:* = undefined;
         if(!param1 || param2 == null)
         {
            return;
         }
         var _loc3_:LoadTaskInfo = this._map[param1] as LoadTaskInfo;
         if(_loc3_)
         {
            for(_loc4_ in _loc3_.callbacks)
            {
               if(_loc4_ == param2)
               {
                  delete _loc3_.callbacks[_loc4_];
                  break;
               }
            }
         }
      }
      
      public function dispose(param1:String) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _loc2_ = this._queue.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this._queue.splice(_loc2_,1);
         }
         var _loc4_:LoadTaskInfo = this._map[param1] as LoadTaskInfo;
         if(_loc4_)
         {
            this.log("[dispose]" + param1);
            MultiThreadLoader.dispose(param1);
            _loc4_.release();
            if(!_loc4_.referCount)
            {
               _loc2_ = this._urls.indexOf(param1);
               _loc2_ >= 0 && this._urls.splice(_loc2_,1);
               delete this._map[param1];
            }
            _loc3_ = MultiThreadLoader.getReferCount(param1);
            if(_loc3_ <= 0)
            {
               _main.hasTask(param1) && _main.removeTask(param1);
               _lazy.hasTask(param1) && _lazy.removeTask(param1);
            }
            delete this._progressMap[param1];
         }
      }
      
      pub function dispose(param1:String) : void
      {
         var _loc2_:LoadTaskInfo = this._map[param1] as LoadTaskInfo;
         if(_loc2_.referCount)
         {
            while(_loc2_.referCount)
            {
               this.dispose(param1);
            }
         }
         else
         {
            this.dispose(param1);
         }
      }
      
      public function disposeAll(param1:Boolean = false) : void
      {
         if(param1)
         {
            while(this._urls.length)
            {
               this.pub::dispose(this._urls.shift());
            }
         }
         else
         {
            while(this._urls.length)
            {
               this.dispose(this._urls.shift());
            }
         }
         this._queue.length = 0;
         this._progressMap = new Dictionary();
         this._map = new Dictionary();
      }
      
      public function killLazyTasks() : void
      {
         var _loc2_:String = null;
         var _loc1_:Vector.<String> = this._urls.concat();
         for each(_loc2_ in _loc1_)
         {
            if(_lazy.hasTask(_loc2_))
            {
               this.dispose(_loc2_);
            }
         }
      }
      
      public function get domain() : ApplicationDomain
      {
         return this._domain;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get length() : uint
      {
         return this._queue.length;
      }
   }
}

import flash.utils.Dictionary;

class LoadTaskInfo
{
    
   public var url:String;
   
   public var callbacks:Dictionary;
   
   public var complete:Boolean;
   
   private var _referCount:uint;
   
   function LoadTaskInfo()
   {
      super();
      this.callbacks = new Dictionary(false);
   }
   
   public function retain() : uint
   {
      this._referCount++;
      return this._referCount;
   }
   
   public function release() : uint
   {
      if(this._referCount > 0)
      {
         this._referCount--;
      }
      return this._referCount;
   }
   
   public function get referCount() : uint
   {
      return this._referCount;
   }
}
