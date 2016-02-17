package com.tencent.morefun.naruto.effect.shadow
{
   import flash.events.EventDispatcher;
   import com.tencent.morefun.naruto.render.IRenderTickTarget;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import com.tencent.morefun.naruto.render.RenderTicker;
   import flash.geom.Rectangle;
   import flash.geom.Matrix;
   import flash.display.BitmapData;
   
   public class MotionShadow extends EventDispatcher implements IRenderTickTarget
   {
      
      private static const ALPHA_THRESHOLD:Number = 0.01;
       
      private var _shadows:Vector.<Bitmap>;
      
      private var _manual:Boolean;
      
      private var _frameRate:uint;
      
      private var _running:Boolean;
      
      private var _speed:Number;
      
      private var _gap:uint;
      
      private var _target:DisplayObject;
      
      private var _refer:Point;
      
      public function MotionShadow(param1:DisplayObject)
      {
         super();
         this._target = param1;
         this._speed = 0.1;
         this._frameRate = 12;
         this._gap = 20;
         this._shadows = new Vector.<Bitmap>();
      }
      
      public function start() : void
      {
         if(this._running)
         {
            return;
         }
         this._refer = null;
         this._running = true;
         if(!this._manual)
         {
            RenderTicker.register(this);
         }
      }
      
      public function stop() : void
      {
         this._running = false;
      }
      
      private function interpolate() : void
      {
         var _loc1_:* = NaN;
         var _loc2_:uint = 0;
         var _loc9_:Bitmap = null;
         var _loc3_:Rectangle = this._target.getBounds(this._target.parent);
         if(this._gap)
         {
            if(!this._refer)
            {
               this._refer = new Point(this._target.x,this._target.y);
               return;
            }
            _loc1_ = Point.distance(new Point(this._target.x,this._target.y),this._refer);
            _loc2_ = this._gap?Math.floor(_loc1_ / this._gap):1;
            if(!_loc2_ || _loc2_ >= 50)
            {
               return;
            }
         }
         else
         {
            _loc2_ = 1;
         }
         var _loc4_:Matrix = this._target.transform.matrix;
         _loc4_.tx = -_loc3_.x + this._target.x;
         _loc4_.ty = -_loc3_.y + this._target.y;
         var _loc5_:IMotionShadowTarget = this.target as IMotionShadowTarget;
         if(_loc5_)
         {
            _loc5_.drawing = true;
         }
         var _loc6_:BitmapData = new BitmapData(Math.max(_loc3_.width,1),Math.max(_loc3_.height,1),true,0);
         _loc6_.draw(this._target,_loc4_,null,null,null,false);
         _loc6_.lock();
         if(_loc5_)
         {
            _loc5_.drawing = false;
         }
         var _loc7_:Number = Math.atan2(this._target.y - this._refer.y,this._target.x - this._refer.x);
         var _loc8_:Point = new Point(_loc4_.tx,_loc4_.ty);
         var _loc10_:uint = 1;
         while(_loc10_ <= _loc2_)
         {
            _loc9_ = new Bitmap(_loc6_,"auto",false);
            _loc9_.alpha = Math.min(1,this.target.alpha);
            _loc9_.x = -_loc8_.x + this._refer.x + Math.cos(_loc7_) * this._gap * _loc10_ >> 0;
            _loc9_.y = -_loc8_.y + this._refer.y + Math.sin(_loc7_) * this._gap * _loc10_ >> 0;
            this.target.parent.addChildAt(_loc9_,this.target.parent.getChildIndex(this.target));
            this._shadows.push(_loc9_);
            _loc10_++;
         }
         this._refer = new Point(_loc9_.x + _loc8_.x,_loc9_.y + _loc8_.y);
      }
      
      public function render(param1:uint) : void
      {
         var _loc2_:Bitmap = null;
         if(!this._target || !this._target.stage || !this._target.visible || this._target.alpha < ALPHA_THRESHOLD)
         {
            return;
         }
         if(!this._shadows.length && !this._running)
         {
            return;
         }
         this._running && this.interpolate();
         var _loc3_:int = 0;
         while(_loc3_ < this._shadows.length)
         {
            _loc2_ = this._shadows[_loc3_];
            if(_loc2_.alpha < ALPHA_THRESHOLD)
            {
               _loc2_.parent && _loc2_.parent.removeChild(_loc2_);
               _loc2_.bitmapData && _loc2_.bitmapData.dispose();
               _loc2_.bitmapData = null;
               this._shadows.splice(_loc3_--,1);
            }
            else
            {
               _loc2_.alpha = Math.max(0,_loc2_.alpha - this._speed);
            }
            _loc3_++;
         }
         if(!this._shadows.length && !this._running)
         {
            RenderTicker.unregister(this);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Bitmap = null;
         this.stop();
         RenderTicker.unregister(this);
         while(this._shadows && this._shadows.length)
         {
            _loc1_ = this._shadows.pop();
            _loc1_.parent && _loc1_.parent.removeChild(_loc1_);
            _loc1_.bitmapData && _loc1_.bitmapData.dispose();
            _loc1_.bitmapData = null;
         }
      }
      
      public function get manual() : Boolean
      {
         return this._manual;
      }
      
      public function set manual(param1:Boolean) : void
      {
         this._manual = param1;
      }
      
      public function get frameRate() : uint
      {
         return this._frameRate;
      }
      
      public function set frameRate(param1:uint) : void
      {
         this._frameRate = param1;
      }
      
      public function get running() : Boolean
      {
         return this._running;
      }
      
      public function get target() : DisplayObject
      {
         return this._target;
      }
      
      public function set target(param1:DisplayObject) : void
      {
         this._target = param1;
      }
      
      public function get speed() : Number
      {
         return this._speed;
      }
      
      public function set speed(param1:Number) : void
      {
         this._speed = Math.max(0.01,Math.min(1,isNaN(param1)?0:param1));
      }
      
      public function get gap() : uint
      {
         return this._gap;
      }
      
      public function set gap(param1:uint) : void
      {
         this._gap = param1;
      }
      
      public function autoSetNull() : void
      {
         this._target = null;
         this._refer = null;
      }
   }
}
