package com.bit101.components
{
   import flash.events.MouseEvent;
   import flash.display.DisplayObjectContainer;
   
   public class ListItem extends Component
   {
       
      protected var _data:Object;
      
      protected var _label:com.bit101.components.Label;
      
      protected var _defaultColor:uint = 16777215;
      
      protected var _selectedColor:uint = 14540253;
      
      protected var _rolloverColor:uint = 15658734;
      
      protected var _selected:Boolean;
      
      protected var _mouseOver:Boolean = false;
      
      public function ListItem(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0, param4:Object = null)
      {
         this._data = param4;
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         super.init();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         setSize(100,20);
      }
      
      override protected function addChildren() : void
      {
         super.addChildren();
         this._label = new com.bit101.components.Label(this,5,0);
         this._label.draw();
      }
      
      override public function draw() : void
      {
         super.draw();
         graphics.clear();
         if(this._selected)
         {
            graphics.beginFill(this._selectedColor);
         }
         else if(this._mouseOver)
         {
            graphics.beginFill(this._rolloverColor);
         }
         else
         {
            graphics.beginFill(this._defaultColor);
         }
         graphics.drawRect(0,0,width,height);
         graphics.endFill();
         if(this._data == null)
         {
            return;
         }
         if(this._data is String)
         {
            this._label.text = this._data as String;
         }
         else if(this._data.hasOwnProperty("label") && this._data.label is String)
         {
            this._label.text = this._data.label;
         }
         else
         {
            this._label.text = this._data.toString();
         }
      }
      
      protected function onMouseOver(param1:MouseEvent) : void
      {
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this._mouseOver = true;
         invalidate();
      }
      
      protected function onMouseOut(param1:MouseEvent) : void
      {
         removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this._mouseOver = false;
         invalidate();
      }
      
      public function set data(param1:Object) : void
      {
         this._data = param1;
         invalidate();
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this._selected = param1;
         invalidate();
      }
      
      public function get selected() : Boolean
      {
         return this._selected;
      }
      
      public function set defaultColor(param1:uint) : void
      {
         this._defaultColor = param1;
         invalidate();
      }
      
      public function get defaultColor() : uint
      {
         return this._defaultColor;
      }
      
      public function set selectedColor(param1:uint) : void
      {
         this._selectedColor = param1;
         invalidate();
      }
      
      public function get selectedColor() : uint
      {
         return this._selectedColor;
      }
      
      public function set rolloverColor(param1:uint) : void
      {
         this._rolloverColor = param1;
         invalidate();
      }
      
      public function get rolloverColor() : uint
      {
         return this._rolloverColor;
      }
   }
}
