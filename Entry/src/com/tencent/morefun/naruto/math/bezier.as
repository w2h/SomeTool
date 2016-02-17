package com.tencent.morefun.naruto.math
{
   import flash.geom.Point;
   
   public function bezier(param1:Array, param2:Number) : Point
   {
      var _loc3_:Point = null;
      var _loc4_:Object = null;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      if(param1.length > 1)
      {
         _loc5_ = param1.length;
         _loc6_ = 0;
         while(_loc6_ < _loc5_ - 1)
         {
            _loc4_ = param1[_loc6_];
            param1[_loc6_] = {
               "x":0,
               "y":0
            };
            param1[_loc6_].x = (1 - param2) * _loc4_.x + param2 * param1[_loc6_ + 1].x;
            param1[_loc6_].y = (1 - param2) * _loc4_.y + param2 * param1[_loc6_ + 1].y;
            _loc6_++;
         }
         param1.pop();
         _loc3_ = bezier(param1,param2);
      }
      else
      {
         _loc3_ = new Point(param1[0].x,param1[0].y);
      }
      return _loc3_;
   }
}
