package com.tencent.morefun.naruto.effect.jump
{
   import flash.events.EventDispatcher;
   import com.tencent.morefun.naruto.render.IRenderTickTarget;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import com.tencent.morefun.naruto.render.RenderTicker;
   import flash.events.Event;
   
   public class JumpSimulator extends EventDispatcher implements IRenderTickTarget
   {
       
      private var _target:DisplayObject;
      
      private var _speed:Number;
      
      private var _origin:Point;
      
      private var _pt1:Point;
      
      private var _pt2:Point;
      
      private var _a:Number;
      
      private var _b:Number;
      
      private var _position:Number;
      
      private var _delta:Number;
      
      private var _running:Boolean;
      
      private var _manual:Boolean;
      
      private var _frameRate:uint;
      
      public function JumpSimulator(param1:DisplayObject, param2:Number = 10)
      {
         super();
         this.target = param1;
         this.speed = param2;
         this.frameRate = 24;
      }
      
      public function jumpTo(param1:Point) : void
      {
         var _loc2_:* = NaN;
         this._running = true;
         this._pt1 = new Point(this._target.x,this._target.y);
         this._pt2 = param1.clone();
         if(this._pt1.y < this._pt2.y)
         {
            this._origin = new Point(this._pt1.x,this._pt2.y);
         }
         else
         {
            this._origin = new Point(this._pt2.x,this._pt1.y);
         }
         this._pt1 = this._pt1.subtract(this._origin);
         this._pt2 = this._pt2.subtract(this._origin);
         if(this._pt1.y < this._pt2.y)
         {
            this._b = this._pt1.y - this._pt2.y;
            this._a = (this._pt2.y - this._b) / (this._pt2.x * this._pt2.x);
         }
         else
         {
            this._b = this._pt2.y - this._pt1.y;
            this._a = (this._pt1.y - this._b) / (this._pt1.x * this._pt1.x);
         }
         _loc2_ = Math.atan2(this._pt2.y - this._pt1.y,this._pt2.x - this._pt1.x);
         this._delta = this._speed * Math.cos(_loc2_);
         this._position = this._pt1.x;
         if(!this._manual)
         {
            RenderTicker.register(this);
         }
      }
      
      public function stop() : void
      {
         this._running = false;
         RenderTicker.unregister(this);
      }
      
      public function render(param1:uint) : void
      {
         this._position = this._position + this._delta;
         if(this._delta > 0)
         {
            if(this._position > this._pt2.x)
            {
               this._position = this._pt2.x;
            }
         }
         else if(this._position < this._pt2.x)
         {
            this._position = this._pt2.x;
         }
         var _loc2_:Number = Math.sin(Math.PI * (this._position - this._pt1.x) / (this._pt2.x - this._pt1.x));
         if(this._target.hasOwnProperty("setXY"))
         {
            this._target["setXY"](this._origin.x + this._position,this._origin.y + (this._a * this._position * this._position + this._b) * (1 + _loc2_ / 3));
         }
         else
         {
            this._target.x = this._origin.x + this._position;
            this._target.y = this._origin.y + (this._a * this._position * this._position + this._b) * (1 + _loc2_ / 3);
         }
         if(this._position == this._pt2.x)
         {
            this._running = false;
            RenderTicker.unregister(this);
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function dispose() : void
      {
         this.stop();
         this._target = null;
      }
      
      public function get frameRate() : uint
      {
         return this._frameRate;
      }
      
      public function set frameRate(param1:uint) : void
      {
         this._frameRate = param1;
      }
      
      public function get speed() : Number
      {
         return this._speed;
      }
      
      public function set speed(param1:Number) : void
      {
         this._speed = Math.abs(isNaN(param1)?0:param1);
      }
      
      public function get running() : Boolean
      {
         return this._running;
      }
      
      public function get manual() : Boolean
      {
         return this._manual;
      }
      
      public function set manual(param1:Boolean) : void
      {
         this._manual = param1;
      }
      
      public function get target() : DisplayObject
      {
         return this._target;
      }
      
      public function set target(param1:DisplayObject) : void
      {
         this._target = param1;
      }
      
      public function autoSetNull() : void
      {
         this._target = null;
         this._origin = null;
         this._pt1 = null;
         this._pt2 = null;
      }
   }
}
