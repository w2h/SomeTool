package com.greensock.motionPaths
{
   import flash.display.Graphics;
   import flash.geom.Matrix;
   
   public class RectanglePath2D extends MotionPath
   {
       
      protected var _rawWidth:Number;
      
      protected var _rawHeight:Number;
      
      protected var _centerOrigin:Boolean;
      
      public function RectanglePath2D(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false)
      {
         super();
         this._rawWidth = param3;
         this._rawHeight = param4;
         this._centerOrigin = param5;
         super.x = param1;
         super.y = param2;
      }
      
      override protected function renderAll() : void
      {
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc16_:Graphics = null;
         var _loc1_:Number = this._centerOrigin?this._rawWidth / -2:0;
         var _loc2_:Number = this._centerOrigin?this._rawHeight / -2:0;
         var _loc8_:Matrix = this.transform.matrix;
         var _loc9_:Number = _loc8_.a;
         var _loc10_:Number = _loc8_.b;
         var _loc11_:Number = _loc8_.c;
         var _loc12_:Number = _loc8_.d;
         var _loc13_:Number = _loc8_.tx;
         var _loc14_:Number = _loc8_.ty;
         var _loc15_:PathFollower = _rootFollower;
         while(_loc15_)
         {
            _loc4_ = _loc1_;
            _loc5_ = _loc2_;
            if(_loc15_.cachedProgress < 0.5)
            {
               _loc3_ = _loc15_.cachedProgress * (this._rawWidth + this._rawHeight) * 2;
               if(_loc3_ > this._rawWidth)
               {
                  _loc4_ = _loc4_ + this._rawWidth;
                  _loc5_ = _loc5_ + (_loc3_ - this._rawWidth);
                  _loc6_ = 0;
                  _loc7_ = this._rawHeight;
               }
               else
               {
                  _loc4_ = _loc4_ + _loc3_;
                  _loc6_ = this._rawWidth;
                  _loc7_ = 0;
               }
            }
            else
            {
               _loc3_ = (_loc15_.cachedProgress - 0.5) / 0.5 * (this._rawWidth + this._rawHeight);
               if(_loc3_ <= this._rawWidth)
               {
                  _loc4_ = _loc4_ + (this._rawWidth - _loc3_);
                  _loc5_ = _loc5_ + this._rawHeight;
                  _loc6_ = -this._rawWidth;
                  _loc7_ = 0;
               }
               else
               {
                  _loc5_ = _loc5_ + (this._rawHeight - (_loc3_ - this._rawWidth));
                  _loc6_ = 0;
                  _loc7_ = -this._rawHeight;
               }
            }
            _loc15_.target.x = _loc4_ * _loc9_ + _loc5_ * _loc11_ + _loc13_;
            _loc15_.target.y = _loc4_ * _loc10_ + _loc5_ * _loc12_ + _loc14_;
            if(_loc15_.autoRotate)
            {
               _loc15_.target.rotation = Math.atan2(_loc6_ * _loc10_ + _loc7_ * _loc12_,_loc6_ * _loc9_ + _loc7_ * _loc11_) * _RAD2DEG + _loc15_.rotationOffset;
            }
            _loc15_ = _loc15_.cachedNext;
         }
         if(_redrawLine && this.visible && this.parent)
         {
            _loc16_ = this.graphics;
            _loc16_.clear();
            _loc16_.lineStyle(_thickness,_color,_lineAlpha,_pixelHinting,_scaleMode,_caps,_joints,_miterLimit);
            _loc16_.drawRect(_loc1_,_loc2_,this._rawWidth,this._rawHeight);
            _redrawLine = false;
         }
      }
      
      override public function renderObjectAt(param1:Object, param2:Number, param3:Boolean = false, param4:Number = 0) : void
      {
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(param2 > 1)
         {
            var param2:Number = param2 - int(param2);
         }
         else if(param2 < 0)
         {
            param2 = param2 - (int(param2) - 1);
         }
         var _loc5_:Number = this._centerOrigin?this._rawWidth / -2:0;
         var _loc6_:Number = this._centerOrigin?this._rawHeight / -2:0;
         if(param2 < 0.5)
         {
            _loc7_ = param2 * (this._rawWidth + this._rawHeight) * 2;
            if(_loc7_ > this._rawWidth)
            {
               _loc5_ = _loc5_ + this._rawWidth;
               _loc6_ = _loc6_ + (_loc7_ - this._rawWidth);
               _loc8_ = 0;
               _loc9_ = this._rawHeight;
            }
            else
            {
               _loc5_ = _loc5_ + _loc7_;
               _loc8_ = this._rawWidth;
               _loc9_ = 0;
            }
         }
         else
         {
            _loc7_ = (param2 - 0.5) / 0.5 * (this._rawWidth + this._rawHeight);
            if(_loc7_ <= this._rawWidth)
            {
               _loc5_ = _loc5_ + (this._rawWidth - _loc7_);
               _loc6_ = _loc6_ + this._rawHeight;
               _loc8_ = -this._rawWidth;
               _loc9_ = 0;
            }
            else
            {
               _loc6_ = _loc6_ + (this._rawHeight - (_loc7_ - this._rawWidth));
               _loc8_ = 0;
               _loc9_ = -this._rawHeight;
            }
         }
         var _loc10_:Matrix = this.transform.matrix;
         param1.x = _loc5_ * _loc10_.a + _loc6_ * _loc10_.c + _loc10_.tx;
         param1.y = _loc5_ * _loc10_.b + _loc6_ * _loc10_.d + _loc10_.ty;
         if(param3)
         {
            param1.rotation = Math.atan2(_loc8_ * _loc10_.b + _loc9_ * _loc10_.d,_loc8_ * _loc10_.a + _loc9_ * _loc10_.c) * _RAD2DEG + param4;
         }
      }
      
      public function get rawWidth() : Number
      {
         return this._rawWidth;
      }
      
      public function set rawWidth(param1:Number) : void
      {
         this._rawWidth = param1;
         _redrawLine = true;
         this.renderAll();
      }
      
      public function get rawHeight() : Number
      {
         return this._rawHeight;
      }
      
      public function set rawHeight(param1:Number) : void
      {
         this._rawHeight = param1;
         _redrawLine = true;
         this.renderAll();
      }
      
      public function get centerOrigin() : Boolean
      {
         return this._centerOrigin;
      }
      
      public function set centerOrigin(param1:Boolean) : void
      {
         this._centerOrigin;
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
