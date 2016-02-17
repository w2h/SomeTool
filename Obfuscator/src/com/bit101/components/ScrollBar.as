package com.bit101.components
{
   import flash.utils.Timer;
   import flash.events.MouseEvent;
   import flash.display.Shape;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import flash.display.DisplayObjectContainer;
   
   public class ScrollBar extends Component
   {
       
      protected const DELAY_TIME:int = 500;
      
      protected const REPEAT_TIME:int = 100;
      
      protected const UP:String = "up";
      
      protected const DOWN:String = "down";
      
      protected var _autoHide:Boolean = false;
      
      protected var _upButton:com.bit101.components.PushButton;
      
      protected var _downButton:com.bit101.components.PushButton;
      
      protected var _scrollSlider:ScrollSlider;
      
      protected var _orientation:String;
      
      protected var _lineSize:int = 1;
      
      protected var _delayTimer:Timer;
      
      protected var _repeatTimer:Timer;
      
      protected var _direction:String;
      
      protected var _shouldRepeat:Boolean = false;
      
      public function ScrollBar(param1:String, param2:DisplayObjectContainer = null, param3:Number = 0, param4:Number = 0, param5:Function = null)
      {
         this._orientation = param1;
         super(param2,param3,param4);
         if(param5 != null)
         {
            addEventListener(Event.CHANGE,param5);
         }
      }
      
      override protected function addChildren() : void
      {
         this._scrollSlider = new ScrollSlider(this._orientation,this,0,10,this.onChange);
         this._upButton = new com.bit101.components.PushButton(this,0,0,"");
         this._upButton.addEventListener(MouseEvent.MOUSE_DOWN,this.onUpClick);
         this._upButton.setSize(10,10);
         var _loc1_:Shape = new Shape();
         this._upButton.addChild(_loc1_);
         this._downButton = new com.bit101.components.PushButton(this,0,0,"");
         this._downButton.addEventListener(MouseEvent.MOUSE_DOWN,this.onDownClick);
         this._downButton.setSize(10,10);
         var _loc2_:Shape = new Shape();
         this._downButton.addChild(_loc2_);
         if(this._orientation == Slider.VERTICAL)
         {
            _loc1_.graphics.beginFill(Style.DROPSHADOW,0.5);
            _loc1_.graphics.moveTo(5,3);
            _loc1_.graphics.lineTo(7,6);
            _loc1_.graphics.lineTo(3,6);
            _loc1_.graphics.endFill();
            _loc2_.graphics.beginFill(Style.DROPSHADOW,0.5);
            _loc2_.graphics.moveTo(5,7);
            _loc2_.graphics.lineTo(7,4);
            _loc2_.graphics.lineTo(3,4);
            _loc2_.graphics.endFill();
         }
         else
         {
            _loc1_.graphics.beginFill(Style.DROPSHADOW,0.5);
            _loc1_.graphics.moveTo(3,5);
            _loc1_.graphics.lineTo(6,7);
            _loc1_.graphics.lineTo(6,3);
            _loc1_.graphics.endFill();
            _loc2_.graphics.beginFill(Style.DROPSHADOW,0.5);
            _loc2_.graphics.moveTo(7,5);
            _loc2_.graphics.lineTo(4,7);
            _loc2_.graphics.lineTo(4,3);
            _loc2_.graphics.endFill();
         }
      }
      
      override protected function init() : void
      {
         super.init();
         if(this._orientation == Slider.HORIZONTAL)
         {
            setSize(100,10);
         }
         else
         {
            setSize(10,100);
         }
         this._delayTimer = new Timer(this.DELAY_TIME,1);
         this._delayTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onDelayComplete);
         this._repeatTimer = new Timer(this.REPEAT_TIME);
         this._repeatTimer.addEventListener(TimerEvent.TIMER,this.onRepeat);
      }
      
      public function setSliderParams(param1:Number, param2:Number, param3:Number) : void
      {
         this._scrollSlider.setSliderParams(param1,param2,param3);
      }
      
      public function setThumbPercent(param1:Number) : void
      {
         this._scrollSlider.setThumbPercent(param1);
      }
      
      override public function draw() : void
      {
         super.draw();
         if(this._orientation == Slider.VERTICAL)
         {
            this._scrollSlider.x = 0;
            this._scrollSlider.y = 10;
            this._scrollSlider.width = 10;
            this._scrollSlider.height = _height - 20;
            this._downButton.x = 0;
            this._downButton.y = _height - 10;
         }
         else
         {
            this._scrollSlider.x = 10;
            this._scrollSlider.y = 0;
            this._scrollSlider.width = _width - 20;
            this._scrollSlider.height = 10;
            this._downButton.x = _width - 10;
            this._downButton.y = 0;
         }
         this._scrollSlider.draw();
         if(this._autoHide)
         {
            visible = this._scrollSlider.thumbPercent < 1;
         }
         else
         {
            visible = true;
         }
      }
      
      public function set autoHide(param1:Boolean) : void
      {
         this._autoHide = param1;
         invalidate();
      }
      
      public function get autoHide() : Boolean
      {
         return this._autoHide;
      }
      
      public function set value(param1:Number) : void
      {
         this._scrollSlider.value = param1;
      }
      
      public function get value() : Number
      {
         return this._scrollSlider.value;
      }
      
      public function set minimum(param1:Number) : void
      {
         this._scrollSlider.minimum = param1;
      }
      
      public function get minimum() : Number
      {
         return this._scrollSlider.minimum;
      }
      
      public function set maximum(param1:Number) : void
      {
         this._scrollSlider.maximum = param1;
      }
      
      public function get maximum() : Number
      {
         return this._scrollSlider.maximum;
      }
      
      public function set lineSize(param1:int) : void
      {
         this._lineSize = param1;
      }
      
      public function get lineSize() : int
      {
         return this._lineSize;
      }
      
      public function set pageSize(param1:int) : void
      {
         this._scrollSlider.pageSize = param1;
         invalidate();
      }
      
      public function get pageSize() : int
      {
         return this._scrollSlider.pageSize;
      }
      
      protected function onUpClick(param1:MouseEvent) : void
      {
         this.goUp();
         this._shouldRepeat = true;
         this._direction = this.UP;
         this._delayTimer.start();
         stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseGoUp);
      }
      
      protected function goUp() : void
      {
         this._scrollSlider.value = this._scrollSlider.value - this._lineSize;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      protected function onDownClick(param1:MouseEvent) : void
      {
         this.goDown();
         this._shouldRepeat = true;
         this._direction = this.DOWN;
         this._delayTimer.start();
         stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseGoUp);
      }
      
      protected function goDown() : void
      {
         this._scrollSlider.value = this._scrollSlider.value + this._lineSize;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      protected function onMouseGoUp(param1:MouseEvent) : void
      {
         this._delayTimer.stop();
         this._repeatTimer.stop();
         this._shouldRepeat = false;
      }
      
      protected function onChange(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      protected function onDelayComplete(param1:TimerEvent) : void
      {
         if(this._shouldRepeat)
         {
            this._repeatTimer.start();
         }
      }
      
      protected function onRepeat(param1:TimerEvent) : void
      {
         if(this._direction == this.UP)
         {
            this.goUp();
         }
         else
         {
            this.goDown();
         }
      }
   }
}

import com.bit101.components.Slider;
import com.bit101.components.Style;
import flash.events.MouseEvent;
import flash.events.Event;
import flash.geom.Rectangle;
import flash.display.DisplayObjectContainer;

class ScrollSlider extends Slider
{
    
   protected var _thumbPercent:Number = 1.0;
   
   protected var _pageSize:int = 1;
   
   function ScrollSlider(param1:String, param2:DisplayObjectContainer = null, param3:Number = 0, param4:Number = 0, param5:Function = null)
   {
      super(param1,param2,param3,param4);
      if(param5 != null)
      {
         addEventListener(Event.CHANGE,param5);
      }
   }
   
   override protected function init() : void
   {
      super.init();
      setSliderParams(1,1,0);
      backClick = true;
   }
   
   override protected function drawHandle() : void
   {
      var _loc1_:* = NaN;
      _handle.graphics.clear();
      if(_orientation == HORIZONTAL)
      {
         _loc1_ = Math.round(_width * this._thumbPercent);
         _loc1_ = Math.max(_height,_loc1_);
         _handle.graphics.beginFill(0,0);
         _handle.graphics.drawRect(0,0,_loc1_,_height);
         _handle.graphics.endFill();
         _handle.graphics.beginFill(Style.BUTTON_FACE);
         _handle.graphics.drawRect(1,1,_loc1_ - 2,_height - 2);
      }
      else
      {
         _loc1_ = Math.round(_height * this._thumbPercent);
         _loc1_ = Math.max(_width,_loc1_);
         _handle.graphics.beginFill(0,0);
         _handle.graphics.drawRect(0,0,_width - 2,_loc1_);
         _handle.graphics.endFill();
         _handle.graphics.beginFill(Style.BUTTON_FACE);
         _handle.graphics.drawRect(1,1,_width - 2,_loc1_ - 2);
      }
      _handle.graphics.endFill();
      this.positionHandle();
   }
   
   override protected function positionHandle() : void
   {
      var _loc1_:* = NaN;
      if(_orientation == HORIZONTAL)
      {
         _loc1_ = width - _handle.width;
         _handle.x = (_value - _min) / (_max - _min) * _loc1_;
      }
      else
      {
         _loc1_ = height - _handle.height;
         _handle.y = (_value - _min) / (_max - _min) * _loc1_;
      }
   }
   
   public function setThumbPercent(param1:Number) : void
   {
      this._thumbPercent = Math.min(param1,1);
      invalidate();
   }
   
   override protected function onBackClick(param1:MouseEvent) : void
   {
      if(_orientation == HORIZONTAL)
      {
         if(mouseX < _handle.x)
         {
            if(_max > _min)
            {
               _value = _value - this._pageSize;
            }
            else
            {
               _value = _value + this._pageSize;
            }
            correctValue();
         }
         else
         {
            if(_max > _min)
            {
               _value = _value + this._pageSize;
            }
            else
            {
               _value = _value - this._pageSize;
            }
            correctValue();
         }
         this.positionHandle();
      }
      else
      {
         if(mouseY < _handle.y)
         {
            if(_max > _min)
            {
               _value = _value - this._pageSize;
            }
            else
            {
               _value = _value + this._pageSize;
            }
            correctValue();
         }
         else
         {
            if(_max > _min)
            {
               _value = _value + this._pageSize;
            }
            else
            {
               _value = _value - this._pageSize;
            }
            correctValue();
         }
         this.positionHandle();
      }
      dispatchEvent(new Event(Event.CHANGE));
   }
   
   override protected function onDrag(param1:MouseEvent) : void
   {
      stage.addEventListener(MouseEvent.MOUSE_UP,onDrop);
      stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onSlide);
      if(_orientation == HORIZONTAL)
      {
         _handle.startDrag(false,new Rectangle(0,0,_width - _handle.width,0));
      }
      else
      {
         _handle.startDrag(false,new Rectangle(0,0,0,_height - _handle.height));
      }
   }
   
   override protected function onSlide(param1:MouseEvent) : void
   {
      var _loc2_:Number = _value;
      if(_orientation == HORIZONTAL)
      {
         if(_width == _handle.width)
         {
            _value = _min;
         }
         else
         {
            _value = _handle.x / (_width - _handle.width) * (_max - _min) + _min;
         }
      }
      else if(_height == _handle.height)
      {
         _value = _min;
      }
      else
      {
         _value = _handle.y / (_height - _handle.height) * (_max - _min) + _min;
      }
      if(_value != _loc2_)
      {
         dispatchEvent(new Event(Event.CHANGE));
      }
   }
   
   public function set pageSize(param1:int) : void
   {
      this._pageSize = param1;
      invalidate();
   }
   
   public function get pageSize() : int
   {
      return this._pageSize;
   }
   
   public function get thumbPercent() : Number
   {
      return this._thumbPercent;
   }
}
