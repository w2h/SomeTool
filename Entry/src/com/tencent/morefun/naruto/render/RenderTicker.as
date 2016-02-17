package com.tencent.morefun.naruto.render
{
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import flash.events.Event;
   import com.tencent.morefun.naruto.util.CollectionClearUtil;
   
   public class RenderTicker
   {
      
      private static var _helper:Sprite = new Sprite();
      
      private static var _queue:Vector.<com.tencent.morefun.naruto.render.IRenderTickTarget> = new Vector.<IRenderTickTarget>();
      
      private static var _dict:Dictionary = new Dictionary(false);
      
      private static var _running:Boolean;
      
      private static var _buffer:uint;
      
      private static var _elapse:uint;
      
      private static var _fps:uint;
      
      private static var _count:uint;
       
      public function RenderTicker()
      {
         super();
      }
      
      public static function register(param1:com.tencent.morefun.naruto.render.IRenderTickTarget) : void
      {
         if(!_dict[param1])
         {
            _dict[param1] = new TickItem(param1.frameRate,getTimer());
            _queue.push(param1);
         }
         if(_queue.length && !_running)
         {
            _running = true;
            _elapse = getTimer();
            _buffer = 0;
            _fps = 0;
            _helper.addEventListener(Event.ENTER_FRAME,frameHandler);
         }
      }
      
      private static function frameHandler(param1:Event) : void
      {
         var _loc3_:* = 0;
         var _loc4_:uint = 0;
         var _loc5_:TickItem = null;
         var _loc6_:com.tencent.morefun.naruto.render.IRenderTickTarget = null;
         var _loc2_:uint = getTimer();
         if(_buffer < 1000)
         {
            _buffer = _buffer + (_loc2_ - _elapse);
            _count++;
         }
         else
         {
            _fps = _count;
            _buffer = _buffer - 1000;
            _count = 0;
         }
         _elapse = _loc2_;
         var _loc7_:uint = 0;
         while(_loc7_ < _queue.length)
         {
            _loc6_ = _queue[_loc7_];
            _loc5_ = _dict[_loc6_];
            if(!_loc6_)
            {
               _queue.splice(_loc7_--,1);
            }
            else if(!_loc5_.frameRate)
            {
               _loc6_.render(1);
            }
            else
            {
               _loc3_ = _loc2_ - _loc5_.timestamp;
               if(_loc3_ >= _loc5_.delta)
               {
                  _loc4_ = _loc3_ / _loc5_.delta >> 0;
                  _loc5_.timestamp = _loc5_.timestamp + (_loc4_ * _loc5_.delta + 0.5 >> 0);
                  _loc6_.render(_loc4_);
                  if(_loc5_.frameRate != _loc6_.frameRate)
                  {
                     _loc5_.frameRate = _loc6_.frameRate;
                     _loc5_.delta = 1000 / _loc5_.frameRate;
                  }
               }
            }
            _loc7_++;
         }
         if(!_queue.length)
         {
            _running = false;
            _helper.removeEventListener(Event.ENTER_FRAME,frameHandler);
         }
      }
      
      public static function unregister(param1:com.tencent.morefun.naruto.render.IRenderTickTarget) : void
      {
         var _loc2_:* = 0;
         if(_dict[param1])
         {
            _loc2_ = _queue.indexOf(param1);
            if(_loc2_ >= 0)
            {
               _queue.splice(_loc2_,1,null);
            }
            delete _dict[param1];
         }
      }
      
      public static function get running() : Boolean
      {
         return _running;
      }
      
      public static function get fps() : uint
      {
         return _fps;
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(_dict,"autoDestroy");
         _dict = null;
         _helper = null;
         _dict = null;
      }
   }
}

class TickItem
{
    
   public var timestamp:uint;
   
   public var delta:Number;
   
   public var frameRate:uint;
   
   function TickItem(param1:uint, param2:uint)
   {
      super();
      this.frameRate = param1;
      this.delta = 1000 / this.frameRate;
      this.timestamp = param2;
   }
   
   public function autoSetNull() : void
   {
   }
}
