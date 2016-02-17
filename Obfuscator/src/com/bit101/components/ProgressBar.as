package com.bit101.components
{
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   
   public class ProgressBar extends Component
   {
       
      protected var _back:Sprite;
      
      protected var _bar:Sprite;
      
      protected var _value:Number = 0;
      
      protected var _max:Number = 1;
      
      public function ProgressBar(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         super.init();
         setSize(100,10);
      }
      
      override protected function addChildren() : void
      {
         this._back = new Sprite();
         this._back.filters = [getShadow(2,true)];
         addChild(this._back);
         this._bar = new Sprite();
         this._bar.x = 1;
         this._bar.y = 1;
         this._bar.filters = [getShadow(1)];
         addChild(this._bar);
      }
      
      protected function update() : void
      {
         this._bar.scaleX = this._value / this._max;
      }
      
      override public function draw() : void
      {
         super.draw();
         this._back.graphics.clear();
         this._back.graphics.beginFill(Style.BACKGROUND);
         this._back.graphics.drawRect(0,0,_width,_height);
         this._back.graphics.endFill();
         this._bar.graphics.clear();
         this._bar.graphics.beginFill(Style.PROGRESS_BAR);
         this._bar.graphics.drawRect(0,0,_width - 2,_height - 2);
         this._bar.graphics.endFill();
         this.update();
      }
      
      public function set maximum(param1:Number) : void
      {
         this._max = param1;
         this._value = Math.min(this._value,this._max);
         this.update();
      }
      
      public function get maximum() : Number
      {
         return this._max;
      }
      
      public function set value(param1:Number) : void
      {
         this._value = Math.min(param1,this._max);
         this.update();
      }
      
      public function get value() : Number
      {
         return this._value;
      }
   }
}
