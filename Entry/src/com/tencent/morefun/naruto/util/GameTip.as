package com.tencent.morefun.naruto.util
{
   import com.greensock.TweenLite;
   
   public class GameTip
   {
      
      private static const MAX_NUM:int = 5;
      
      private static const PUSH_PREV_MOVE_Y:int = 30;
      
      private static const PUSH_PREV_MOVE_SPEED:Number = 0.2;
      
      private static var _arr:Array;
       
      public function GameTip()
      {
         super();
         throw new Error(GameTip + " can not be instantiated.");
      }
      
      public static function show(param1:String) : void
      {
         pushPrevTips();
         showTip(param1);
      }
      
      private static function showTip(param1:String) : void
      {
         if(_arr == null)
         {
            _arr = [];
         }
         var _loc2_:GameTipAnim = new GameTipAnim(onAnimComplete);
         _loc2_.show(param1);
         _arr.push(_loc2_);
      }
      
      private static function onAnimComplete(param1:GameTipAnim) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = _arr.indexOf(param1);
         if(_loc2_ >= 0)
         {
            _arr.splice(_loc2_,1);
         }
         param1.dispose();
         var param1:GameTipAnim = null;
      }
      
      private static function pushPrevTips() : void
      {
         var _loc2_:GameTipAnim = null;
         var _loc3_:* = 0;
         var _loc6_:* = 0;
         if(_arr == null)
         {
            return;
         }
         var _loc1_:int = _arr.length;
         var _loc4_:int = _loc1_ > MAX_NUM?_loc1_ - MAX_NUM:0;
         if(_loc4_ > 0)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc2_ = _arr.shift();
               _loc2_.dispose();
               _loc6_++;
            }
         }
         _loc1_ = _arr.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc1_)
         {
            _loc2_ = _arr[_loc5_] as GameTipAnim;
            _loc3_ = -(_loc1_ - _loc5_) * PUSH_PREV_MOVE_Y;
            TweenLite.to(_loc2_,PUSH_PREV_MOVE_SPEED,{"y":_loc3_});
            _loc5_++;
         }
      }
   }
}
