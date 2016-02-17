package com.tencent.morefun.naruto.render
{
   import flash.utils.Dictionary;
   
   public class TimeTicker
   {
      
      private static const map:Dictionary = new Dictionary(false);
       
      public function TimeTicker()
      {
         super();
      }
      
      public static function register(param1:Function, param2:uint, param3:uint = 1000) : void
      {
         if(param1 != null)
         {
            map[param1] && terminate(param1);
            map[param1] = new TimeKernel(param1,param2,param3).start(dispose);
         }
      }
      
      private static function dispose(param1:TimeKernel) : void
      {
         if(param1)
         {
            RenderTicker.unregister(param1);
            delete map[param1.callback];
            param1.callback = null;
            param1.dispose = null;
         }
      }
      
      public static function terminate(param1:Function) : uint
      {
         var _loc2_:uint = 0;
         var _loc3_:TimeKernel = null;
         if(map[param1])
         {
            _loc3_ = map[param1] as TimeTicker;
            _loc2_ = _loc3_.estimateTime();
            dispose(_loc3_);
         }
         return _loc2_;
      }
   }
}

import com.tencent.morefun.naruto.render.IRenderTickTarget;
import flash.utils.getTimer;
import com.tencent.morefun.naruto.render.RenderTicker;

class TimeKernel implements IRenderTickTarget
{
    
   private var timestamp:uint;
   
   private var remainTime:uint;
   
   private var interval:uint;
   
   private var callback:Function;
   
   private var dispose:Function;
   
   function TimeKernel(param1:Function, param2:uint, param3:uint)
   {
      super();
      this.callback = param1;
      this.remainTime = param2;
      this.interval = param3;
   }
   
   private function doJob() : void
   {
      if(this.callback.length)
      {
         this.callback.call(null,this.remainTime);
      }
      else
      {
         this.callback.call();
      }
   }
   
   public function start(param1:Function) : TimeKernel
   {
      this.dispose = param1;
      this.doJob();
      this.timestamp = getTimer();
      RenderTicker.register(this);
      return this;
   }
   
   public function stop() : void
   {
      RenderTicker.unregister(this);
      this.dispose.call(null,this);
   }
   
   public function estimateTime() : uint
   {
      return Math.max(0,this.remainTime - (getTimer() - this.timestamp));
   }
   
   public function render(param1:uint) : void
   {
      var _loc2_:int = getTimer() - this.timestamp;
      if(_loc2_ < this.interval)
      {
         return;
      }
      _loc2_ = _loc2_ - _loc2_ % this.interval;
      this.timestamp = this.timestamp + _loc2_;
      while(_loc2_ > 0)
      {
         if(this.remainTime > 0)
         {
            this.remainTime = this.remainTime - Math.min(this.remainTime,this.interval);
            this.doJob();
            _loc2_ = _loc2_ - this.interval;
            continue;
         }
         this.stop();
         break;
      }
   }
   
   public function get frameRate() : uint
   {
      return 10;
   }
}
