package com.bit101.components
{
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.display.DisplayObjectContainer;
   
   public class NumericStepper extends Component
   {
       
      protected const DELAY_TIME:int = 500;
      
      protected const UP:String = "up";
      
      protected const DOWN:String = "down";
      
      protected var _minusBtn:com.bit101.components.PushButton;
      
      protected var _repeatTime:int = 100;
      
      protected var _plusBtn:com.bit101.components.PushButton;
      
      protected var _valueText:com.bit101.components.InputText;
      
      protected var _value:Number = 0;
      
      protected var _step:Number = 1;
      
      protected var _labelPrecision:int = 1;
      
      protected var _maximum:Number = Infinity;
      
      protected var _minimum:Number = -Infinity;
      
      protected var _delayTimer:Timer;
      
      protected var _repeatTimer:Timer;
      
      protected var _direction:String;
      
      public function NumericStepper(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0, param4:Function = null)
      {
         super(param1,param2,param3);
         if(param4 != null)
         {
            addEventListener(Event.CHANGE,param4);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         setSize(80,16);
         this._delayTimer = new Timer(this.DELAY_TIME,1);
         this._delayTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onDelayComplete);
         this._repeatTimer = new Timer(this._repeatTime);
         this._repeatTimer.addEventListener(TimerEvent.TIMER,this.onRepeat);
      }
      
      override protected function addChildren() : void
      {
         this._valueText = new com.bit101.components.InputText(this,0,0,"0",this.onValueTextChange);
         this._valueText.restrict = "-0123456789.";
         this._minusBtn = new com.bit101.components.PushButton(this,0,0,"-");
         this._minusBtn.addEventListener(MouseEvent.MOUSE_DOWN,this.onMinus);
         this._minusBtn.setSize(16,16);
         this._plusBtn = new com.bit101.components.PushButton(this,0,0,"+");
         this._plusBtn.addEventListener(MouseEvent.MOUSE_DOWN,this.onPlus);
         this._plusBtn.setSize(16,16);
      }
      
      protected function increment() : void
      {
         if(this._value + this._step <= this._maximum)
         {
            this._value = this._value + this._step;
            invalidate();
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      protected function decrement() : void
      {
         if(this._value - this._step >= this._minimum)
         {
            this._value = this._value - this._step;
            invalidate();
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      override public function draw() : void
      {
         this._plusBtn.x = _width - 16;
         this._minusBtn.x = _width - 32;
         this._valueText.text = (Math.round(this._value * Math.pow(10,this._labelPrecision)) / Math.pow(10,this._labelPrecision)).toString();
         this._valueText.width = _width - 32;
         this._valueText.draw();
      }
      
      protected function onMinus(param1:MouseEvent) : void
      {
         this.decrement();
         this._direction = this.DOWN;
         this._delayTimer.start();
         stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseGoUp);
      }
      
      protected function onPlus(param1:MouseEvent) : void
      {
         this.increment();
         this._direction = this.UP;
         this._delayTimer.start();
         stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseGoUp);
      }
      
      protected function onMouseGoUp(param1:MouseEvent) : void
      {
         this._delayTimer.stop();
         this._repeatTimer.stop();
      }
      
      protected function onValueTextChange(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Number = Number(this._valueText.text);
         if(_loc2_ <= this._maximum && _loc2_ >= this._minimum)
         {
            this._value = _loc2_;
            invalidate();
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      protected function onDelayComplete(param1:TimerEvent) : void
      {
         this._repeatTimer.start();
      }
      
      protected function onRepeat(param1:TimerEvent) : void
      {
         if(this._direction == this.UP)
         {
            this.increment();
         }
         else
         {
            this.decrement();
         }
      }
      
      public function set value(param1:Number) : void
      {
         if(param1 <= this._maximum && param1 >= this._minimum)
         {
            this._value = param1;
            invalidate();
         }
      }
      
      public function get value() : Number
      {
         return this._value;
      }
      
      public function set step(param1:Number) : void
      {
         if(param1 < 0)
         {
            throw new Error("NumericStepper step must be positive.");
         }
         this._step = param1;
      }
      
      public function get step() : Number
      {
         return this._step;
      }
      
      public function set labelPrecision(param1:int) : void
      {
         this._labelPrecision = param1;
         invalidate();
      }
      
      public function get labelPrecision() : int
      {
         return this._labelPrecision;
      }
      
      public function set maximum(param1:Number) : void
      {
         this._maximum = param1;
         if(this._value > this._maximum)
         {
            this._value = this._maximum;
            invalidate();
         }
      }
      
      public function get maximum() : Number
      {
         return this._maximum;
      }
      
      public function set minimum(param1:Number) : void
      {
         this._minimum = param1;
         if(this._value < this._minimum)
         {
            this._value = this._minimum;
            invalidate();
         }
      }
      
      public function get minimum() : Number
      {
         return this._minimum;
      }
      
      public function get repeatTime() : int
      {
         return this._repeatTime;
      }
      
      public function set repeatTime(param1:int) : void
      {
         this._repeatTime = Math.max(param1,10);
         this._repeatTimer.delay = this._repeatTime;
      }
   }
}
