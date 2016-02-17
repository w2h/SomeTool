package com.tencent.morefun.naruto.effect.curve
{
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.display.Sprite;
   import flash.events.Event;
   import com.tencent.morefun.naruto.math.bezier;
   
   public class RandomCurveMotion
   {
       
      private var _bounds:Rectangle;
      
      private var _segments:Vector.<Point>;
      
      private var _position:Point;
      
      private var _endpoint:Point;
      
      private var _angle:Number;
      
      private var _speed:Number;
      
      private var _callback:Function;
      
      private var _anchor:Point;
      
      private var _control:Point;
      
      private var _density:uint;
      
      private var _ticker:Sprite;
      
      private var _minAngle:Number;
      
      public function RandomCurveMotion(param1:Rectangle)
      {
         super();
         this._bounds = param1;
         this._ticker = new Sprite();
         this._density = 15;
         this._speed = 5;
         this._minAngle = 30;
      }
      
      private function generateRandomLocation(param1:Boolean = true) : Point
      {
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Point = new Point(this._bounds.left + this._bounds.width * Math.random(),this._bounds.top + this._bounds.height * Math.random());
         if(param1)
         {
            _loc3_ = this._control.subtract(this._anchor);
            _loc4_ = _loc2_.subtract(this._control);
            _loc5_ = 180 * Math.acos((_loc3_.x * _loc4_.x + _loc3_.y * _loc4_.y) / (_loc3_.length * _loc4_.length)) / Math.PI;
            if(_loc5_ < 0)
            {
               _loc5_ = _loc5_ + 180;
            }
            if(_loc5_ < this._minAngle)
            {
               _loc6_ = this._minAngle - _loc5_;
            }
            else if(_loc5_ > 180 - this._minAngle)
            {
               _loc6_ = 180 - this._minAngle - _loc5_;
            }
            if(_loc6_)
            {
               _loc6_ = _loc6_ * Math.PI / 180;
               _loc7_ = _loc4_.x * Math.cos(_loc6_) - _loc4_.y * Math.sin(_loc6_) + _loc2_.x;
               _loc8_ = _loc4_.y * Math.cos(_loc6_) + _loc4_.x * Math.sin(_loc6_) + _loc2_.y;
               if(this._bounds.contains(_loc7_,_loc8_))
               {
                  _loc2_.x = _loc7_;
                  _loc2_.y = _loc8_;
               }
               else
               {
                  _loc2_ = this.generateRandomLocation(param1);
               }
            }
         }
         return _loc2_;
      }
      
      public function start(param1:Function, param2:Point = null, param3:Boolean = true) : void
      {
         this._callback = param1;
         this._anchor = param2 || this.generateRandomLocation(false);
         this._control = this.generateRandomLocation(false);
         this._endpoint = null;
         this.switch2NextCurveEdge();
         this._callback && this._callback.call(null,this._position.x,this._position.y);
         if(param3)
         {
            this._ticker.addEventListener(Event.ENTER_FRAME,this.internalTickHandler);
         }
         else
         {
            this._ticker.removeEventListener(Event.ENTER_FRAME,this.internalTickHandler);
         }
      }
      
      private function internalTickHandler(param1:Event) : void
      {
         this.advanceForward();
      }
      
      public function stop() : void
      {
         this._ticker.removeEventListener(Event.ENTER_FRAME,this.internalTickHandler);
      }
      
      public function advanceForward() : void
      {
         var _loc2_:* = NaN;
         var _loc1_:Number = Point.distance(this._position,this._endpoint);
         if(_loc1_ >= this._speed)
         {
            _loc1_ = _loc1_ - this._speed;
            this._position.x = this._position.x + this._speed * Math.cos(this._angle);
            this._position.y = this._position.y + this._speed * Math.sin(this._angle);
         }
         else
         {
            _loc2_ = this._speed - _loc1_;
            while(true)
            {
               this.switch2NextCurveEdge();
               _loc1_ = Point.distance(this._position,this._endpoint);
               if(_loc1_ < _loc2_)
               {
                  _loc2_ = _loc2_ - _loc1_;
                  continue;
               }
               _loc1_ = _loc1_ - _loc2_;
               this._position.x = this._position.x + _loc2_ * Math.cos(this._angle);
               this._position.y = this._position.y + _loc2_ * Math.sin(this._angle);
               break;
            }
         }
         this._callback && this._callback.call(null,this._position.x,this._position.y);
      }
      
      private function switch2NextCurveEdge() : void
      {
         if(!this._segments || !this._segments.length)
         {
            this.generateNewCurve();
         }
         this._position = this._endpoint || this._segments.shift();
         this._endpoint = this._segments.shift();
         this._angle = Math.atan2(this._endpoint.y - this._position.y,this._endpoint.x - this._position.x);
      }
      
      private function generateNewCurve() : void
      {
         var _loc1_:Point = this.generateRandomLocation();
         var _loc2_:Point = new Point();
         _loc2_.x = (this._control.x + _loc1_.x) / 2;
         _loc2_.y = (this._control.y + _loc1_.y) / 2;
         this._segments = this._segments || new Vector.<Point>();
         var _loc3_:int = 1;
         while(_loc3_ <= this.density)
         {
            this._segments.push(bezier([this._anchor,this._control,_loc2_],_loc3_ / this._density));
            _loc3_++;
         }
         this._anchor = _loc2_;
         this._control = _loc1_;
      }
      
      public function dispose() : void
      {
         this._ticker.removeEventListener(Event.ENTER_FRAME,this.internalTickHandler);
         this._ticker = null;
         this._callback = null;
         this._segments.length = 0;
         this._segments = null;
         this._anchor = null;
         this._control = null;
         this._position = null;
         this._endpoint = null;
      }
      
      public function get density() : uint
      {
         return this._density;
      }
      
      public function set density(param1:uint) : void
      {
         this._density = Math.max(2,param1);
      }
      
      public function get speed() : Number
      {
         return this._speed;
      }
      
      public function set speed(param1:Number) : void
      {
         this._speed = isNaN(param1)?5:Math.max(0.001,param1);
      }
      
      public function get minAngle() : Number
      {
         return this._minAngle;
      }
      
      public function set minAngle(param1:Number) : void
      {
         this._minAngle = isNaN(param1)?0:Math.max(0,param1);
      }
   }
}
