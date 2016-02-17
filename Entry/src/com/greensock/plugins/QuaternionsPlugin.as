package com.greensock.plugins
{
   import com.greensock.TweenLite;
   
   public class QuaternionsPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      protected static const _RAD2DEG:Number = 180 / Math.PI;
       
      protected var _target:Object;
      
      protected var _quaternions:Array;
      
      public function QuaternionsPlugin()
      {
         this._quaternions = [];
         super();
         this.propName = "quaternions";
         this.overwriteProps = [];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:String = null;
         if(param2 == null)
         {
            return false;
         }
         for(_loc4_ in param2)
         {
            this.initQuaternion(param1[_loc4_],param2[_loc4_],_loc4_);
         }
         return true;
      }
      
      public function initQuaternion(param1:Object, param2:Object, param3:String) : void
      {
         var _loc4_:* = NaN;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         _loc5_ = param1;
         _loc6_ = param2;
         _loc7_ = _loc5_.x;
         _loc8_ = _loc6_.x;
         _loc9_ = _loc5_.y;
         _loc10_ = _loc6_.y;
         _loc11_ = _loc5_.z;
         _loc12_ = _loc6_.z;
         _loc13_ = _loc5_.w;
         _loc14_ = _loc6_.w;
         _loc4_ = _loc7_ * _loc8_ + _loc9_ * _loc10_ + _loc11_ * _loc12_ + _loc13_ * _loc14_;
         if(_loc4_ < 0)
         {
            _loc7_ = _loc7_ * -1;
            _loc9_ = _loc9_ * -1;
            _loc11_ = _loc11_ * -1;
            _loc13_ = _loc13_ * -1;
            _loc4_ = _loc4_ * -1;
         }
         if(_loc4_ + 1 < 1.0E-6)
         {
            _loc10_ = -_loc9_;
            _loc8_ = _loc7_;
            _loc14_ = -_loc13_;
            _loc12_ = _loc11_;
         }
         _loc15_ = Math.acos(_loc4_);
         this._quaternions[this._quaternions.length] = [_loc5_,param3,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc4_,_loc15_,1 / Math.sin(_loc15_)];
         this.overwriteProps[this.overwriteProps.length] = param3;
      }
      
      override public function killProps(param1:Object) : void
      {
         var _loc2_:int = this._quaternions.length - 1;
         while(_loc2_ > -1)
         {
            if(param1[this._quaternions[_loc2_][1]] != undefined)
            {
               this._quaternions.splice(_loc2_,1);
            }
            _loc2_--;
         }
         super.killProps(param1);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc2_:* = 0;
         var _loc3_:Array = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc2_ = this._quaternions.length - 1;
         while(_loc2_ > -1)
         {
            _loc3_ = this._quaternions[_loc2_];
            if(_loc3_[10] + 1 > 1.0E-6)
            {
               if(1 - _loc3_[10] >= 1.0E-6)
               {
                  _loc4_ = Math.sin(_loc3_[11] * (1 - param1)) * _loc3_[12];
                  _loc5_ = Math.sin(_loc3_[11] * param1) * _loc3_[12];
               }
               else
               {
                  _loc4_ = 1 - param1;
                  _loc5_ = param1;
               }
            }
            else
            {
               _loc4_ = Math.sin(Math.PI * (0.5 - param1));
               _loc5_ = Math.sin(Math.PI * param1);
            }
            _loc3_[0].x = _loc4_ * _loc3_[2] + _loc5_ * _loc3_[3];
            _loc3_[0].y = _loc4_ * _loc3_[4] + _loc5_ * _loc3_[5];
            _loc3_[0].z = _loc4_ * _loc3_[6] + _loc5_ * _loc3_[7];
            _loc3_[0].w = _loc4_ * _loc3_[8] + _loc5_ * _loc3_[9];
            _loc2_--;
         }
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this._target = null;
         this._quaternions = null;
      }
   }
}
