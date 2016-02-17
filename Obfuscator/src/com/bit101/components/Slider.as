package com.bit101.components
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.display.DisplayObjectContainer;
   
   public class Slider extends Component
   {
      
      public static const HORIZONTAL:String = "horizontal";
      
      public static const VERTICAL:String = "vertical";
       
      protected var _handle:Sprite;
      
      protected var _back:Sprite;
      
      protected var _backClick:Boolean = true;
      
      protected var _value:Number = 0;
      
      protected var _max:Number = 100;
      
      protected var _min:Number = 0;
      
      protected var _orientation:String;
      
      protected var _tick:Number = 0.01;
      
      public function Slider(param1:String = "horizontal", param2:DisplayObjectContainer = null, param3:Number = 0, param4:Number = 0, param5:Function = null)
      {
         this._orientation = param1;
         super(param2,param3,param4);
         if(param5 != null)
         {
            addEventListener(Event.CHANGE,param5);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         if(this._orientation == HORIZONTAL)
         {
            setSize(100,10);
         }
         else
         {
            setSize(10,100);
         }
      }
      
      override protected function addChildren() : void
      {
         this._back = new Sprite();
         this._back.filters = [getShadow(2,true)];
         addChild(this._back);
         this._handle = new Sprite();
         this._handle.filters = [getShadow(1)];
         this._handle.addEventListener(MouseEvent.MOUSE_DOWN,this.onDrag);
         this._handle.buttonMode = true;
         this._handle.useHandCursor = true;
         addChild(this._handle);
      }
      
      protected function drawBack() : void
      {
         this._back.graphics.clear();
         this._back.graphics.beginFill(Style.BACKGROUND);
         this._back.graphics.drawRect(0,0,_width,_height);
         this._back.graphics.endFill();
         if(this._backClick)
         {
            this._back.addEventListener(MouseEvent.MOUSE_DOWN,this.onBackClick);
         }
         else
         {
            this._back.removeEventListener(MouseEvent.MOUSE_DOWN,this.onBackClick);
         }
      }
      
      protected function drawHandle() : void
      {
         this._handle.graphics.clear();
         this._handle.graphics.beginFill(Style.BUTTON_FACE);
         if(this._orientation == HORIZONTAL)
         {
            this._handle.graphics.drawRect(1,1,_height - 2,_height - 2);
         }
         else
         {
            this._handle.graphics.drawRect(1,1,_width - 2,_width - 2);
         }
         this._handle.graphics.endFill();
         this.positionHandle();
      }
      
      protected function correctValue() : void
      {
         if(this._max > this._min)
         {
            this._value = Math.min(this._value,this._max);
            this._value = Math.max(this._value,this._min);
         }
         else
         {
            this._value = Math.max(this._value,this._max);
            this._value = Math.min(this._value,this._min);
         }
      }
      
      protected function positionHandle() : void
      {
         var _loc1_:* = NaN;
         if(this._orientation == HORIZONTAL)
         {
            _loc1_ = _width - _height;
            this._handle.x = (this._value - this._min) / (this._max - this._min) * _loc1_;
         }
         else
         {
            _loc1_ = _height - _width;
            this._handle.y = _height - _width - (this._value - this._min) / (this._max - this._min) * _loc1_;
         }
      }
      
      override public function draw() : void
      {
         super.draw();
         this.drawBack();
         this.drawHandle();
      }
      
      public function setSliderParams(param1:Number, param2:Number, param3:Number) : void
      {
         this.minimum = param1;
         this.maximum = param2;
         this.value = param3;
      }
      
      protected function onBackClick(param1:MouseEvent) : void
      {
         if(this._orientation == HORIZONTAL)
         {
            this._handle.x = mouseX - _height / 2;
            this._handle.x = Math.max(this._handle.x,0);
            this._handle.x = Math.min(this._handle.x,_width - _height);
            this._value = this._handle.x / (width - _height) * (this._max - this._min) + this._min;
         }
         else
         {
            this._handle.y = mouseY - _width / 2;
            this._handle.y = Math.max(this._handle.y,0);
            this._handle.y = Math.min(this._handle.y,_height - _width);
            this._value = (_height - _width - this._handle.y) / (height - _width) * (this._max - this._min) + this._min;
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      protected function onDrag(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_UP,this.onDrop);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onSlide);
         if(this._orientation == HORIZONTAL)
         {
            this._handle.startDrag(false,new Rectangle(0,0,_width - _height,0));
         }
         else
         {
            this._handle.startDrag(false,new Rectangle(0,0,0,_height - _width));
         }
      }
      
      protected function onDrop(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.onDrop);
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onSlide);
         stopDrag();
      }
      
      protected function onSlide(param1:MouseEvent) : void
      {
         var _loc2_:Number = this._value;
         if(this._orientation == HORIZONTAL)
         {
            this._value = this._handle.x / (width - _height) * (this._max - this._min) + this._min;
         }
         else
         {
            this._value = (_height - _width - this._handle.y) / (height - _width) * (this._max - this._min) + this._min;
         }
         if(this._value != _loc2_)
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public function set backClick(param1:Boolean) : void
      {
         this._backClick = param1;
         invalidate();
      }
      
      public function get backClick() : Boolean
      {
         return this._backClick;
      }
      
      public function set value(param1:Number) : void
      {
         this._value = param1;
         this.correctValue();
         this.positionHandle();
      }
      
      public function get value() : Number
      {
         return Math.round(this._value / this._tick) * this._tick;
      }
      
      public function get rawValue() : Number
      {
         return this._value;
      }
      
      public function set maximum(param1:Number) : void
      {
         this._max = param1;
         this.correctValue();
         this.positionHandle();
      }
      
      public function get maximum() : Number
      {
         return this._max;
      }
      
      public function set minimum(param1:Number) : void
      {
         this._min = param1;
         this.correctValue();
         this.positionHandle();
      }
      
      public function get minimum() : Number
      {
         return this._min;
      }
      
      public function set tick(param1:Number) : void
      {
         this._tick = param1;
      }
      
      public function get tick() : Number
      {
         return this._tick;
      }
   }
}
