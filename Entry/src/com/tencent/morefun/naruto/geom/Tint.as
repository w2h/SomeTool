package com.tencent.morefun.naruto.geom
{
   public class Tint
   {
       
      public var a:int;
      
      public var r:int;
      
      public var g:int;
      
      public var b:int;
      
      public function Tint(param1:uint = 0)
      {
         super();
         this.parse(param1);
      }
      
      public function parse(param1:uint) : void
      {
         this.a = param1 >> 24;
         this.r = param1 >> 16 & 255;
         this.g = param1 >> 8 & 255;
         this.b = param1 & 255;
      }
      
      public function toColor() : uint
      {
         return this.round(this.a,0) << 24 | this.round(this.r,0) << 16 | this.round(this.g,0) << 8 | this.round(this.b,0);
      }
      
      public function toHSL() : HSL
      {
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         _loc1_ = this.r / 255;
         _loc2_ = this.g / 255;
         _loc3_ = this.b / 255;
         _loc4_ = Math.max(_loc1_,_loc2_,_loc3_);
         _loc5_ = Math.min(_loc1_,_loc2_,_loc3_);
         _loc6_ = _loc4_ - _loc5_;
         _loc7_ = _loc4_ + _loc5_;
         if(_loc4_ == _loc5_)
         {
            _loc8_ = 0;
         }
         else if(_loc4_ == _loc1_ && _loc2_ >= _loc3_)
         {
            _loc8_ = 60 * (_loc2_ - _loc3_) / _loc6_;
         }
         else if(_loc4_ == _loc1_ && _loc2_ < _loc3_)
         {
            _loc8_ = 60 * (_loc2_ - _loc3_) / _loc6_ + 360;
         }
         else if(_loc4_ == _loc2_)
         {
            _loc8_ = 60 * (_loc3_ - _loc1_) / _loc6_ + 120;
         }
         else if(_loc4_ == _loc3_)
         {
            _loc8_ = 60 * (_loc1_ - _loc2_) / _loc6_ + 240;
         }
         _loc10_ = _loc7_ / 2;
         if(_loc10_ == 0 || _loc4_ == _loc5_)
         {
            _loc9_ = 0;
         }
         else if(0 < _loc10_ && _loc10_ <= 0.5)
         {
            _loc9_ = _loc6_ / _loc7_;
         }
         else if(_loc10_ > 0.5)
         {
            _loc9_ = _loc6_ / (2 - _loc7_);
         }
         return new HSL(_loc8_,_loc9_ * 100,_loc10_ * 100);
      }
      
      public function toHSB() : HSB
      {
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = Math.min(this.r,this.g,this.b);
         _loc3_ = Math.max(this.r,this.g,this.b);
         _loc4_ = _loc3_ - _loc5_;
         _loc2_ = _loc3_ == 0?0:_loc4_ / _loc3_;
         if(_loc2_ == 0)
         {
            _loc1_ = 0;
         }
         else
         {
            if(this.r == _loc3_)
            {
               _loc1_ = 60 * (this.g - this.b) / _loc4_;
            }
            else if(this.g == _loc3_)
            {
               _loc1_ = 120 + 60 * (this.b - this.r) / _loc4_;
            }
            else
            {
               _loc1_ = 240 + 60 * (this.r - this.g) / _loc4_;
            }
            if(_loc1_ < 0)
            {
               _loc1_ = _loc1_ + 360;
            }
         }
         _loc2_ = _loc2_ * 100;
         _loc3_ = _loc3_ / 255 * 100;
         return new HSB(_loc1_,_loc2_,_loc3_);
      }
      
      public function subtract(param1:Tint) : Tint
      {
         this.a = this.round(this.a - param1.a);
         this.r = this.round(this.r - param1.r);
         this.g = this.round(this.g - param1.g);
         this.b = this.round(this.b - param1.b);
         return this;
      }
      
      public function add(param1:Tint) : Tint
      {
         this.a = this.round(this.a + param1.a);
         this.r = this.round(this.r + param1.r);
         this.g = this.round(this.g + param1.g);
         this.b = this.round(this.b + param1.b);
         return this;
      }
      
      private function round(param1:int, param2:int = -255) : int
      {
         return Math.min(255,Math.max(param2,param1));
      }
      
      public function toString() : String
      {
         var _loc1_:String = "Tint:{a:" + this.a.toString(16) + ",r:" + this.r.toString(16) + ",g:" + this.g.toString(16) + ",b:" + this.b.toString(16) + "}";
         return _loc1_;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
