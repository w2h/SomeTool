package com.greensock.plugins
{
   import flash.geom.Transform;
   import flash.geom.Matrix;
   import com.greensock.TweenLite;
   
   public class TransformMatrixPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      private static const _DEG2RAD:Number = Math.PI / 180;
       
      protected var _transform:Transform;
      
      protected var _matrix:Matrix;
      
      protected var _txStart:Number;
      
      protected var _txChange:Number;
      
      protected var _tyStart:Number;
      
      protected var _tyChange:Number;
      
      protected var _aStart:Number;
      
      protected var _aChange:Number;
      
      protected var _bStart:Number;
      
      protected var _bChange:Number;
      
      protected var _cStart:Number;
      
      protected var _cChange:Number;
      
      protected var _dStart:Number;
      
      protected var _dChange:Number;
      
      protected var _angleChange:Number = 0;
      
      public function TransformMatrixPlugin()
      {
         super();
         this.propName = "transformMatrix";
         this.overwriteProps = ["x","y","scaleX","scaleY","rotation","transformMatrix","transformAroundPoint","transformAroundCenter","shortRotation"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         this._transform = param1.transform as Transform;
         this._matrix = this._transform.matrix;
         var _loc4_:Matrix = this._matrix.clone();
         this._txStart = _loc4_.tx;
         this._tyStart = _loc4_.ty;
         this._aStart = _loc4_.a;
         this._bStart = _loc4_.b;
         this._cStart = _loc4_.c;
         this._dStart = _loc4_.d;
         if("x" in param2)
         {
            this._txChange = typeof param2.x == "number"?param2.x - this._txStart:Number(param2.x);
         }
         else if("tx" in param2)
         {
            this._txChange = param2.tx - this._txStart;
         }
         else
         {
            this._txChange = 0;
         }
         if("y" in param2)
         {
            this._tyChange = typeof param2.y == "number"?param2.y - this._tyStart:Number(param2.y);
         }
         else if("ty" in param2)
         {
            this._tyChange = param2.ty - this._tyStart;
         }
         else
         {
            this._tyChange = 0;
         }
         this._aChange = "a" in param2?param2.a - this._aStart:0;
         this._bChange = "b" in param2?param2.b - this._bStart:0;
         this._cChange = "c" in param2?param2.c - this._cStart:0;
         this._dChange = "d" in param2?param2.d - this._dStart:0;
         if("rotation" in param2 || "shortRotation" in param2 || "scale" in param2 && !(param2 is Matrix) || "scaleX" in param2 || "scaleY" in param2 || "skewX" in param2 || "skewY" in param2 || "skewX2" in param2 || "skewY2" in param2)
         {
            _loc7_ = Math.sqrt(_loc4_.a * _loc4_.a + _loc4_.b * _loc4_.b);
            if(_loc4_.a < 0 && _loc4_.d > 0)
            {
               _loc7_ = -_loc7_;
            }
            _loc8_ = Math.sqrt(_loc4_.c * _loc4_.c + _loc4_.d * _loc4_.d);
            if(_loc4_.d < 0 && _loc4_.a > 0)
            {
               _loc8_ = -_loc8_;
            }
            _loc9_ = Math.atan2(_loc4_.b,_loc4_.a);
            if(_loc4_.a < 0 && _loc4_.d >= 0)
            {
               _loc9_ = _loc9_ + (_loc9_ <= 0?Math.PI:-Math.PI);
            }
            _loc10_ = Math.atan2(-this._matrix.c,this._matrix.d) - _loc9_;
            _loc11_ = _loc9_;
            if("shortRotation" in param2)
            {
               _loc13_ = (param2.shortRotation * _DEG2RAD - _loc9_) % (Math.PI * 2);
               if(_loc13_ > Math.PI)
               {
                  _loc13_ = _loc13_ - Math.PI * 2;
               }
               else if(_loc13_ < -Math.PI)
               {
                  _loc13_ = _loc13_ + Math.PI * 2;
               }
               _loc11_ = _loc11_ + _loc13_;
            }
            else if("rotation" in param2)
            {
               _loc11_ = typeof param2.rotation == "number"?param2.rotation * _DEG2RAD:Number(param2.rotation) * _DEG2RAD + _loc9_;
            }
            _loc12_ = "skewX" in param2?typeof param2.skewX == "number"?Number(param2.skewX) * _DEG2RAD:Number(param2.skewX) * _DEG2RAD + _loc10_:0;
            if("skewY" in param2)
            {
               _loc14_ = typeof param2.skewY == "number"?param2.skewY * _DEG2RAD:Number(param2.skewY) * _DEG2RAD - _loc10_;
               _loc11_ = _loc11_ + (_loc14_ + _loc10_);
               _loc12_ = _loc12_ - _loc14_;
            }
            if(_loc11_ != _loc9_)
            {
               if("rotation" in param2 || "shortRotation" in param2)
               {
                  this._angleChange = _loc11_ - _loc9_;
                  _loc11_ = _loc9_;
               }
               else
               {
                  _loc4_.rotate(_loc11_ - _loc9_);
               }
            }
            if("scale" in param2)
            {
               _loc5_ = Number(param2.scale) / _loc7_;
               _loc6_ = Number(param2.scale) / _loc8_;
               if(typeof param2.scale != "number")
               {
                  _loc5_ = _loc5_ + 1;
                  _loc6_ = _loc6_ + 1;
               }
            }
            else
            {
               if("scaleX" in param2)
               {
                  _loc5_ = Number(param2.scaleX) / _loc7_;
                  if(typeof param2.scaleX != "number")
                  {
                     _loc5_ = _loc5_ + 1;
                  }
               }
               if("scaleY" in param2)
               {
                  _loc6_ = Number(param2.scaleY) / _loc8_;
                  if(typeof param2.scaleY != "number")
                  {
                     _loc6_ = _loc6_ + 1;
                  }
               }
            }
            if(_loc12_ != _loc10_)
            {
               _loc4_.c = -_loc8_ * Math.sin(_loc12_ + _loc11_);
               _loc4_.d = _loc8_ * Math.cos(_loc12_ + _loc11_);
            }
            if("skewX2" in param2)
            {
               if(typeof param2.skewX2 == "number")
               {
                  _loc4_.c = Math.tan(0 - param2.skewX2 * _DEG2RAD);
               }
               else
               {
                  _loc4_.c = _loc4_.c + Math.tan(0 - Number(param2.skewX2) * _DEG2RAD);
               }
            }
            if("skewY2" in param2)
            {
               if(typeof param2.skewY2 == "number")
               {
                  _loc4_.b = Math.tan(param2.skewY2 * _DEG2RAD);
               }
               else
               {
                  _loc4_.b = _loc4_.b + Math.tan(Number(param2.skewY2) * _DEG2RAD);
               }
            }
            if(_loc5_ || _loc5_ == 0)
            {
               _loc4_.a = _loc4_.a * _loc5_;
               _loc4_.b = _loc4_.b * _loc5_;
            }
            if(_loc6_ || _loc6_ == 0)
            {
               _loc4_.c = _loc4_.c * _loc6_;
               _loc4_.d = _loc4_.d * _loc6_;
            }
            this._aChange = _loc4_.a - this._aStart;
            this._bChange = _loc4_.b - this._bStart;
            this._cChange = _loc4_.c - this._cStart;
            this._dChange = _loc4_.d - this._dStart;
         }
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         this._matrix.a = this._aStart + param1 * this._aChange;
         this._matrix.b = this._bStart + param1 * this._bChange;
         this._matrix.c = this._cStart + param1 * this._cChange;
         this._matrix.d = this._dStart + param1 * this._dChange;
         if(this._angleChange)
         {
            _loc2_ = Math.cos(this._angleChange * param1);
            _loc3_ = Math.sin(this._angleChange * param1);
            _loc4_ = this._matrix.a;
            _loc5_ = this._matrix.c;
            this._matrix.a = _loc4_ * _loc2_ - this._matrix.b * _loc3_;
            this._matrix.b = _loc4_ * _loc3_ + this._matrix.b * _loc2_;
            this._matrix.c = _loc5_ * _loc2_ - this._matrix.d * _loc3_;
            this._matrix.d = _loc5_ * _loc3_ + this._matrix.d * _loc2_;
         }
         this._matrix.tx = this._txStart + param1 * this._txChange;
         this._matrix.ty = this._tyStart + param1 * this._tyChange;
         this._transform.matrix = this._matrix;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this._transform = null;
         this._matrix = null;
      }
   }
}
