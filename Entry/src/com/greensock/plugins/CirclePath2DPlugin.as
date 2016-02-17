package com.greensock.plugins
{
   import com.greensock.motionPaths.CirclePath2D;
   import com.greensock.TweenLite;
   import com.greensock.motionPaths.PathFollower;
   import flash.geom.Matrix;
   
   public class CirclePath2DPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      private static const _2PI:Number = Math.PI * 2;
      
      private static const _RAD2DEG:Number = 180 / Math.PI;
       
      protected var _target:Object;
      
      protected var _autoRemove:Boolean;
      
      protected var _start:Number;
      
      protected var _change:Number;
      
      protected var _circle:CirclePath2D;
      
      protected var _autoRotate:Boolean;
      
      protected var _rotationOffset:Number;
      
      public function CirclePath2DPlugin()
      {
         super();
         this.propName = "circlePath2D";
         this.overwriteProps = ["x","y"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!("path" in param2) || !(param2.path is CirclePath2D))
         {
            return false;
         }
         this._target = param1;
         this._circle = param2.path as CirclePath2D;
         this._autoRotate = Boolean(param2.autoRotate == true);
         this._rotationOffset = param2.rotationOffset || 0;
         var _loc4_:PathFollower = this._circle.getFollower(param1);
         if(_loc4_ != null && !("startAngle" in param2))
         {
            this._start = _loc4_.progress;
         }
         else
         {
            this._start = this._circle.angleToProgress(param2.startAngle || 0,param2.useRadians);
            this._circle.renderObjectAt(this._target,this._start);
         }
         this._change = Number(this._circle.anglesToProgressChange(this._circle.progressToAngle(this._start),param2.endAngle || 0,param2.direction || "clockwise",param2.extraRevolutions || 0,Boolean(param2.useRadians)));
         return true;
      }
      
      override public function killProps(param1:Object) : void
      {
         super.killProps(param1);
         if("x" in param1 || "y" in param1)
         {
            this.overwriteProps = [];
         }
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc2_:Number = (this._start + this._change * param1) * _2PI;
         var _loc3_:Number = this._circle.radius;
         var _loc4_:Matrix = this._circle.transform.matrix;
         var _loc5_:Number = Math.cos(_loc2_) * _loc3_;
         var _loc6_:Number = Math.sin(_loc2_) * _loc3_;
         this._target.x = _loc5_ * _loc4_.a + _loc6_ * _loc4_.c + _loc4_.tx;
         this._target.y = _loc5_ * _loc4_.b + _loc6_ * _loc4_.d + _loc4_.ty;
         if(this._autoRotate)
         {
            _loc2_ = _loc2_ + Math.PI / 2;
            _loc5_ = Math.cos(_loc2_) * this._circle.radius;
            _loc6_ = Math.sin(_loc2_) * this._circle.radius;
            this._target.rotation = Math.atan2(_loc5_ * _loc4_.b + _loc6_ * _loc4_.d,_loc5_ * _loc4_.a + _loc6_ * _loc4_.c) * _RAD2DEG + this._rotationOffset;
         }
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this._target = null;
         this._circle = null;
      }
   }
}
