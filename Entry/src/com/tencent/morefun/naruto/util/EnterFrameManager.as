package com.tencent.morefun.naruto.util
{
   import flash.display.Stage;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class EnterFrameManager
   {
      
      private static var stage:Stage;
      
      private static const infos:Array = [];
      
      private static var time:uint;
       
      public function EnterFrameManager()
      {
         super();
      }
      
      public static function init(param1:Stage) : void
      {
         stage = param1;
         resume();
      }
      
      public static function pause() : void
      {
         stage.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
      }
      
      public static function resume() : void
      {
         time = getTimer();
         stage.addEventListener(Event.ENTER_FRAME,onEnterFrame);
      }
      
      private static function onEnterFrame(param1:Event) : void
      {
         var _loc2_:uint = getTimer();
         var _loc3_:int = (_loc2_ - time) / stage.frameRate;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            call();
            _loc4_++;
         }
         time = _loc2_;
      }
      
      private static function call() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = infos.length;
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            infos[_loc1_].fun();
            if(infos[_loc1_].count > 1)
            {
               infos[_loc1_].count--;
            }
            else if(infos[_loc1_].count == 1)
            {
               infos[_loc1_].count = -1;
            }
            _loc1_++;
         }
         _loc1_ = _loc2_ - 1;
         while(_loc1_ >= 0)
         {
            if(infos[_loc1_].count == -1)
            {
               infos.splice(_loc1_,1);
            }
            _loc1_--;
         }
      }
      
      public static function addCallback(param1:Function, param2:int = 0, param3:int = 0) : void
      {
         var _loc4_:EnterFrameInfo = null;
         var _loc5_:* = 0;
         for each(_loc4_ in infos)
         {
            if(_loc4_.fun == param1)
            {
               _loc4_.count = param2;
               _loc4_.priority = param3;
               return;
            }
         }
         _loc4_ = new EnterFrameInfo();
         _loc4_.fun = param1;
         _loc4_.count = param2;
         _loc4_.priority;
         _loc5_ = 0;
         while(_loc5_ < infos.length)
         {
            if(_loc4_.priority > infos[_loc5_].priority)
            {
               infos.splice(_loc5_,0,_loc4_);
               return;
            }
            _loc5_++;
         }
         infos.push(_loc4_);
      }
      
      public static function removeCallback(param1:Function) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < infos.length)
         {
            if(param1 == infos[_loc2_].fun)
            {
               infos[_loc2_].count = -1;
               break;
            }
            _loc2_++;
         }
      }
      
      public function autoSetNull() : void
      {
         stage = null;
      }
   }
}

class EnterFrameInfo
{
    
   public var fun:Function;
   
   public var count:int;
   
   public var priority:int;
   
   function EnterFrameInfo()
   {
      super();
   }
   
   public function autoSetNull() : void
   {
      this.fun = null;
   }
}
