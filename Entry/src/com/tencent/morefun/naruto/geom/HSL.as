package com.tencent.morefun.naruto.geom
{
   public class HSL
   {
       
      public var h:Number;
      
      public var s:Number;
      
      public var l:Number;
      
      public function HSL(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.h = param1;
         this.s = param2;
         this.l = param3;
      }
      
      public function toTint() : Tint
      {
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc7_:Array = null;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         var _loc6_:Tint = new Tint();
         _loc1_ = this.h / 360;
         _loc2_ = this.s / 100;
         _loc3_ = this.l / 100;
         if(_loc2_ == 0)
         {
            _loc6_.r = _loc6_.g = _loc6_.b = _loc3_ * 255;
         }
         else
         {
            _loc4_ = _loc3_ < 0.5?_loc3_ * (1 + _loc2_):_loc3_ + _loc2_ - _loc3_ * _loc2_;
            _loc5_ = 2 * _loc3_ - _loc4_;
            _loc7_ = new Array(3);
            _loc7_[0] = _loc1_ + 1 / 3;
            _loc7_[1] = _loc1_;
            _loc7_[2] = _loc1_ - 1 / 3;
            _loc8_ = 0;
            while(_loc8_ < 3)
            {
               _loc9_ = _loc7_[_loc8_];
               if(_loc9_ < 0)
               {
                  _loc9_ = _loc9_ + 1;
               }
               if(_loc9_ > 1)
               {
                  _loc9_ = _loc9_ - 1;
               }
               if(_loc9_ < 1 / 6)
               {
                  _loc9_ = _loc5_ + (_loc4_ - _loc5_) * 6 * _loc9_;
               }
               else if(_loc9_ < 1 / 2)
               {
                  _loc9_ = _loc4_;
               }
               else if(_loc9_ < 2 / 3)
               {
                  _loc9_ = _loc5_ + (_loc4_ - _loc5_) * (2 / 3 - _loc9_) * 6;
               }
               else
               {
                  _loc9_ = _loc5_;
               }
               _loc7_[_loc8_] = _loc9_;
               _loc8_++;
            }
            _loc6_.r = Math.round(_loc7_[0] * 255);
            _loc6_.g = Math.round(_loc7_[1] * 255);
            _loc6_.b = Math.round(_loc7_[2] * 255);
         }
         return _loc6_;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "HSL:{h:" + this.h + ",s:" + this.s + ",l:" + this.l + "}";
         return _loc1_;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
