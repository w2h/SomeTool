package com.tencent.morefun.naruto.util
{
   import flash.geom.Point;
   
   public class MathUtil
   {
      
      public static const ZERO_POINT:Point = new Point();
       
      public function MathUtil()
      {
         super();
      }
      
      public static function crossPointOfCircleAndLine(param1:Point, param2:int, param3:Point, param4:Point) : Point
      {
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc13_:Point = null;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc10_:Number = (param4.y - param3.y) / (param4.x - param3.x);
         var _loc11_:Number = param3.y - _loc10_ * param3.x;
         var _loc12_:Number = param2;
         if(param2 == 0)
         {
            return null;
         }
         if(_loc10_ != Infinity && _loc10_ != -Infinity)
         {
            _loc14_ = 1 + _loc10_ * _loc10_;
            _loc15_ = -2 * param1.x + 2 * _loc10_ * _loc11_ - 2 * _loc10_ * param1.y;
            _loc16_ = param1.x * param1.x + (_loc11_ - param1.y) * (_loc11_ - param1.y) - _loc12_ * _loc12_;
            _loc9_ = _loc15_ * _loc15_ - 4 * _loc14_ * _loc16_;
            _loc5_ = (-_loc15_ + Math.sqrt(_loc9_)) / (2 * _loc14_);
            _loc6_ = (-_loc15_ - Math.sqrt(_loc9_)) / (2 * _loc14_);
            _loc7_ = _loc10_ * _loc5_ + _loc11_;
            _loc8_ = _loc10_ * _loc6_ + _loc11_;
         }
         else
         {
            _loc5_ = param3.x;
            _loc6_ = param3.x;
            _loc9_ = _loc12_ * _loc12_ - (_loc5_ - param1.x) * (_loc5_ - param1.x);
            _loc7_ = Math.sqrt(_loc9_) + param1.y;
            _loc8_ = -Math.sqrt(_loc9_) + param1.y;
         }
         _loc9_ >= 0 && (_loc13_ = Point.distance(param3,new Point(_loc5_,_loc7_)) < Point.distance(param3,new Point(_loc6_,_loc8_))?new Point(_loc5_,_loc7_):new Point(_loc6_,_loc8_));
         if(_loc9_ < 0 || pointOnLine(param3,param4,_loc13_) == false)
         {
            _loc13_ = null;
         }
         return _loc13_;
      }
      
      private static function pointOnLine(param1:Point, param2:Point, param3:Point) : Boolean
      {
         var _loc4_:Number = Math.min(param1.x,param2.x);
         var _loc5_:Number = Math.min(param1.y,param2.y);
         var _loc6_:Number = Math.max(param1.x,param2.x);
         var _loc7_:Number = Math.max(param1.y,param2.y);
         if(param3.x >= _loc4_ && param3.x <= _loc6_ && param3.y >= _loc5_ && param3.y <= _loc7_)
         {
            return true;
         }
         return false;
      }
      
      public static function pointInCircle(param1:Point, param2:Number, param3:Point) : Boolean
      {
         if(param2 == 0)
         {
            return false;
         }
         return Point.distance(param1,param3) <= param2;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
