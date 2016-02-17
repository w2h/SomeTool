package com.greensock.motionPaths
{
   import flash.display.Graphics;
   import flash.geom.Matrix;
   
   public class CirclePath2D extends MotionPath
   {
       
      protected var _radius:Number;
      
      public function CirclePath2D(param1:Number, param2:Number, param3:Number)
      {
         super();
         this._radius = param3;
         super.x = param1;
         super.y = param2;
      }
      
      override protected function renderAll() : void
      {
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc12_:Graphics = null;
         var _loc4_:Matrix = this.transform.matrix;
         var _loc5_:Number = _loc4_.a;
         var _loc6_:Number = _loc4_.b;
         var _loc7_:Number = _loc4_.c;
         var _loc8_:Number = _loc4_.d;
         var _loc9_:Number = _loc4_.tx;
         var _loc10_:Number = _loc4_.ty;
         var _loc11_:PathFollower = _rootFollower;
         while(_loc11_)
         {
            _loc1_ = _loc11_.cachedProgress * Math.PI * 2;
            _loc2_ = Math.cos(_loc1_) * this._radius;
            _loc3_ = Math.sin(_loc1_) * this._radius;
            _loc11_.target.x = _loc2_ * _loc5_ + _loc3_ * _loc7_ + _loc9_;
            _loc11_.target.y = _loc2_ * _loc6_ + _loc3_ * _loc8_ + _loc10_;
            if(_loc11_.autoRotate)
            {
               _loc1_ = _loc1_ + Math.PI / 2;
               _loc2_ = Math.cos(_loc1_) * this._radius;
               _loc3_ = Math.sin(_loc1_) * this._radius;
               _loc11_.target.rotation = Math.atan2(_loc2_ * _loc4_.b + _loc3_ * _loc4_.d,_loc2_ * _loc4_.a + _loc3_ * _loc4_.c) * _RAD2DEG + _loc11_.rotationOffset;
            }
            _loc11_ = _loc11_.cachedNext;
         }
         if(_redrawLine && this.visible && this.parent)
         {
            _loc12_ = this.graphics;
            _loc12_.clear();
            _loc12_.lineStyle(_thickness,_color,_lineAlpha,_pixelHinting,_scaleMode,_caps,_joints,_miterLimit);
            _loc12_.drawCircle(0,0,this._radius);
            _redrawLine = false;
         }
      }
      
      override public function renderObjectAt(param1:Object, param2:Number, param3:Boolean = false, param4:Number = 0) : void
      {
         var _loc5_:Number = param2 * Math.PI * 2;
         var _loc6_:Matrix = this.transform.matrix;
         var _loc7_:Number = Math.cos(_loc5_) * this._radius;
         var _loc8_:Number = Math.sin(_loc5_) * this._radius;
         param1.x = _loc7_ * _loc6_.a + _loc8_ * _loc6_.c + _loc6_.tx;
         param1.y = _loc7_ * _loc6_.b + _loc8_ * _loc6_.d + _loc6_.ty;
         if(param3)
         {
            _loc5_ = _loc5_ + Math.PI / 2;
            _loc7_ = Math.cos(_loc5_) * this._radius;
            _loc8_ = Math.sin(_loc5_) * this._radius;
            param1.rotation = Math.atan2(_loc7_ * _loc6_.b + _loc8_ * _loc6_.d,_loc7_ * _loc6_.a + _loc8_ * _loc6_.c) * _RAD2DEG + param4;
         }
      }
      
      public function angleToProgress(param1:Number, param2:Boolean = false) : Number
      {
         var _loc3_:Number = param2?Math.PI * 2:360;
         if(param1 < 0)
         {
            var param1:Number = param1 + (int(-param1 / _loc3_) + 1) * _loc3_;
         }
         else if(param1 > _loc3_)
         {
            param1 = param1 - int(param1 / _loc3_) * _loc3_;
         }
         return param1 / _loc3_;
      }
      
      public function progressToAngle(param1:Number, param2:Boolean = false) : Number
      {
         var _loc3_:Number = param2?Math.PI * 2:360;
         return param1 * _loc3_;
      }
      
      public function followerTween(param1:*, param2:Number, param3:String = "clockwise", param4:uint = 0, param5:Boolean = false) : String
      {
         var _loc6_:Number = param5?Math.PI * 2:360;
         return String(this.anglesToProgressChange(getFollower(param1).progress * _loc6_,param2,param3,param4,param5));
      }
      
      public function anglesToProgressChange(param1:Number, param2:Number, param3:String = "clockwise", param4:uint = 0, param5:Boolean = false) : Number
      {
         var _loc6_:Number = param5?Math.PI * 2:360;
         var _loc7_:Number = param2 - param1;
         if(_loc7_ < 0 && param3 == "clockwise")
         {
            _loc7_ = _loc7_ + (int(-_loc7_ / _loc6_) + 1) * _loc6_;
         }
         else if(_loc7_ > 0 && param3 == "counterClockwise")
         {
            _loc7_ = _loc7_ - (int(_loc7_ / _loc6_) + 1) * _loc6_;
         }
         else if(param3 == "shortest")
         {
            _loc7_ = _loc7_ % _loc6_;
            if(_loc7_ != _loc7_ % (_loc6_ * 0.5))
            {
               _loc7_ = _loc7_ < 0?_loc7_ + _loc6_:_loc7_ - _loc6_;
            }
         }
         if(_loc7_ < 0)
         {
            _loc7_ = _loc7_ - param4 * _loc6_;
         }
         else
         {
            _loc7_ = _loc7_ + param4 * _loc6_;
         }
         return _loc7_ / _loc6_;
      }
      
      public function get radius() : Number
      {
         return this._radius;
      }
      
      public function set radius(param1:Number) : void
      {
         this._radius = param1;
         _redrawLine = true;
         this.renderAll();
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
      }
   }
}
