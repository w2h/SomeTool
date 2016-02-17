package com.greensock.motionPaths
{
   import flash.display.Shape;
   import flash.events.Event;
   
   public class MotionPath extends Shape
   {
      
      protected static const _RAD2DEG:Number = 180 / Math.PI;
      
      protected static const _DEG2RAD:Number = Math.PI / 180;
       
      protected var _redrawLine:Boolean;
      
      protected var _thickness:Number;
      
      protected var _color:uint;
      
      protected var _lineAlpha:Number;
      
      protected var _pixelHinting:Boolean;
      
      protected var _scaleMode:String;
      
      protected var _caps:String;
      
      protected var _joints:String;
      
      protected var _miterLimit:Number;
      
      protected var _rootFollower:com.greensock.motionPaths.PathFollower;
      
      protected var _progress:Number;
      
      public function MotionPath()
      {
         super();
         this._progress = 0;
         this.lineStyle(1,6710886,1,false,"none",null,null,3,true);
         this.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage,false,0,true);
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         this.renderAll();
      }
      
      public function addFollower(param1:*, param2:Number = 0, param3:Boolean = false, param4:Number = 0) : com.greensock.motionPaths.PathFollower
      {
         var _loc5_:com.greensock.motionPaths.PathFollower = this.getFollower(param1);
         if(_loc5_ == null)
         {
            _loc5_ = new com.greensock.motionPaths.PathFollower(param1);
         }
         _loc5_.autoRotate = param3;
         _loc5_.rotationOffset = param4;
         if(_loc5_.path != this)
         {
            if(this._rootFollower)
            {
               this._rootFollower.cachedPrev = _loc5_;
            }
            _loc5_.cachedNext = this._rootFollower;
            this._rootFollower = _loc5_;
            _loc5_.path = this;
            _loc5_.cachedProgress = param2;
            this.renderObjectAt(_loc5_.target,param2,param3,param4);
         }
         return _loc5_;
      }
      
      public function removeFollower(param1:*) : void
      {
         var _loc2_:com.greensock.motionPaths.PathFollower = this.getFollower(param1);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.cachedNext)
         {
            _loc2_.cachedNext.cachedPrev = _loc2_.cachedPrev;
         }
         if(_loc2_.cachedPrev)
         {
            _loc2_.cachedPrev.cachedNext = _loc2_.cachedNext;
         }
         else if(this._rootFollower == _loc2_)
         {
            this._rootFollower = null;
         }
         _loc2_.cachedNext = _loc2_.cachedPrev = null;
         _loc2_.path = null;
      }
      
      public function removeAllFollowers() : void
      {
         var _loc2_:com.greensock.motionPaths.PathFollower = null;
         var _loc1_:com.greensock.motionPaths.PathFollower = this._rootFollower;
         while(_loc1_)
         {
            _loc2_ = _loc1_.cachedNext;
            _loc1_.cachedNext = _loc1_.cachedPrev = null;
            _loc1_.path = null;
            _loc1_ = _loc2_;
         }
         this._rootFollower = null;
      }
      
      public function distribute(param1:Array = null, param2:Number = 0, param3:Number = 1, param4:Boolean = false, param5:Number = 0) : void
      {
         var _loc6_:com.greensock.motionPaths.PathFollower = null;
         if(param1 == null)
         {
            var param1:Array = this.followers;
         }
         var param2:Number = this._normalize(param2);
         var param3:Number = this._normalize(param3);
         var _loc7_:int = param1.length;
         var _loc8_:Number = _loc7_ > 1?(param3 - param2) / (_loc7_ - 1):1;
         while(--_loc7_ > -1)
         {
            _loc6_ = this.getFollower(param1[_loc7_]);
            if(_loc6_ == null)
            {
               _loc6_ = this.addFollower(param1[_loc7_],0,param4,param5);
            }
            _loc6_.cachedProgress = param2 + _loc8_ * _loc7_;
            this.renderObjectAt(_loc6_.target,_loc6_.cachedProgress,param4,param5);
         }
      }
      
      protected function _normalize(param1:Number) : Number
      {
         if(param1 > 1)
         {
            var param1:Number = param1 - int(param1);
         }
         else if(param1 < 0)
         {
            param1 = param1 - (int(param1) - 1);
         }
         return param1;
      }
      
      public function getFollower(param1:Object) : com.greensock.motionPaths.PathFollower
      {
         if(param1 is PathFollower)
         {
            return param1 as PathFollower;
         }
         var _loc2_:com.greensock.motionPaths.PathFollower = this._rootFollower;
         while(_loc2_)
         {
            if(_loc2_.target == param1)
            {
               return _loc2_;
            }
            _loc2_ = _loc2_.cachedNext;
         }
         return null;
      }
      
      protected function renderAll() : void
      {
      }
      
      public function renderObjectAt(param1:Object, param2:Number, param3:Boolean = false, param4:Number = 0) : void
      {
      }
      
      public function lineStyle(param1:Number = 1, param2:uint = 6710886, param3:Number = 1, param4:Boolean = false, param5:String = "none", param6:String = null, param7:String = null, param8:Number = 3, param9:Boolean = false) : void
      {
         this._thickness = param1;
         this._color = param2;
         this._lineAlpha = param3;
         this._pixelHinting = param4;
         this._scaleMode = param5;
         this._caps = param6;
         this._joints = param7;
         this._miterLimit = param8;
         this._redrawLine = true;
         if(!param9)
         {
            this.renderAll();
         }
      }
      
      override public function get rotation() : Number
      {
         return super.rotation;
      }
      
      override public function set rotation(param1:Number) : void
      {
         super.rotation = param1;
         this.renderAll();
      }
      
      override public function get scaleX() : Number
      {
         return super.scaleX;
      }
      
      override public function set scaleX(param1:Number) : void
      {
         super.scaleX = param1;
         this.renderAll();
      }
      
      override public function get scaleY() : Number
      {
         return super.scaleY;
      }
      
      override public function set scaleY(param1:Number) : void
      {
         super.scaleY = param1;
         this.renderAll();
      }
      
      override public function get x() : Number
      {
         return super.x;
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = param1;
         this.renderAll();
      }
      
      override public function get y() : Number
      {
         return super.y;
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = param1;
         this.renderAll();
      }
      
      override public function get width() : Number
      {
         return super.width;
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = param1;
         this.renderAll();
      }
      
      override public function get height() : Number
      {
         return super.height;
      }
      
      override public function set height(param1:Number) : void
      {
         super.height = param1;
         this.renderAll();
      }
      
      override public function get visible() : Boolean
      {
         return super.visible;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         this._redrawLine = true;
         this.renderAll();
      }
      
      public function get progress() : Number
      {
         return this._progress;
      }
      
      public function set progress(param1:Number) : void
      {
         if(param1 > 1)
         {
            var param1:Number = param1 - int(param1);
         }
         else if(param1 < 0)
         {
            param1 = param1 - (int(param1) - 1);
         }
         var _loc2_:Number = param1 - this._progress;
         var _loc3_:com.greensock.motionPaths.PathFollower = this._rootFollower;
         while(_loc3_)
         {
            _loc3_.cachedProgress = _loc3_.cachedProgress + _loc2_;
            if(_loc3_.cachedProgress > 1)
            {
               _loc3_.cachedProgress = _loc3_.cachedProgress - int(_loc3_.cachedProgress);
            }
            else if(_loc3_.cachedProgress < 0)
            {
               _loc3_.cachedProgress = _loc3_.cachedProgress - (int(_loc3_.cachedProgress) - 1);
            }
            _loc3_ = _loc3_.cachedNext;
         }
         this._progress = param1;
         this.renderAll();
      }
      
      public function get followers() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:uint = 0;
         var _loc3_:com.greensock.motionPaths.PathFollower = this._rootFollower;
         while(_loc3_)
         {
            _loc1_[_loc2_++] = _loc3_;
            _loc3_ = _loc3_.cachedNext;
         }
         return _loc1_;
      }
      
      public function get targets() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:uint = 0;
         var _loc3_:com.greensock.motionPaths.PathFollower = this._rootFollower;
         while(_loc3_)
         {
            _loc1_[_loc2_++] = _loc3_.target;
            _loc3_ = _loc3_.cachedNext;
         }
         return _loc1_;
      }
      
      public function autoSetNull() : void
      {
         this._scaleMode = null;
         this._caps = null;
         this._joints = null;
         this._rootFollower = null;
      }
   }
}
