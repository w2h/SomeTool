package com.bit101.components
{
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.display.DisplayObjectContainer;
   
   public class ComboBox extends Component
   {
      
      public static const TOP:String = "top";
      
      public static const BOTTOM:String = "bottom";
       
      protected var _defaultLabel:String = "";
      
      protected var _dropDownButton:com.bit101.components.PushButton;
      
      protected var _items:Array;
      
      protected var _labelButton:com.bit101.components.PushButton;
      
      protected var _list:com.bit101.components.List;
      
      protected var _numVisibleItems:int = 6;
      
      protected var _open:Boolean = false;
      
      protected var _openPosition:String = "bottom";
      
      protected var _stage:Stage;
      
      public function ComboBox(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0, param4:String = "", param5:Array = null)
      {
         this._defaultLabel = param4;
         this._items = param5;
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         super.init();
         setSize(100,20);
         this.setLabelButtonLabel();
      }
      
      override protected function addChildren() : void
      {
         super.addChildren();
         this._list = new com.bit101.components.List(null,0,0,this._items);
         this._list.autoHideScrollBar = true;
         this._list.addEventListener(Event.SELECT,this.onSelect);
         this._labelButton = new com.bit101.components.PushButton(this,0,0,"",this.onDropDown);
         this._dropDownButton = new com.bit101.components.PushButton(this,0,0,"+",this.onDropDown);
      }
      
      protected function setLabelButtonLabel() : void
      {
         if(this.selectedItem == null)
         {
            this._labelButton.label = this._defaultLabel;
         }
         else if(this.selectedItem is String)
         {
            this._labelButton.label = this.selectedItem as String;
         }
         else if(this.selectedItem.hasOwnProperty("label") && this.selectedItem.label is String)
         {
            this._labelButton.label = this.selectedItem.label;
         }
         else
         {
            this._labelButton.label = this.selectedItem.toString();
         }
      }
      
      protected function removeList() : void
      {
         if(this._stage.contains(this._list))
         {
            this._stage.removeChild(this._list);
         }
         this._stage.removeEventListener(MouseEvent.CLICK,this.onStageClick);
         this._dropDownButton.label = "+";
      }
      
      override public function draw() : void
      {
         super.draw();
         this._labelButton.setSize(_width - _height + 1,_height);
         this._labelButton.draw();
         this._dropDownButton.setSize(_height,_height);
         this._dropDownButton.draw();
         this._dropDownButton.x = _width - height;
         this._list.setSize(_width,this._numVisibleItems * this._list.listItemHeight);
      }
      
      public function addItem(param1:Object) : void
      {
         this._list.addItem(param1);
      }
      
      public function addItemAt(param1:Object, param2:int) : void
      {
         this._list.addItemAt(param1,param2);
      }
      
      public function removeItem(param1:Object) : void
      {
         this._list.removeItem(param1);
      }
      
      public function removeItemAt(param1:int) : void
      {
         this._list.removeItemAt(param1);
      }
      
      public function removeAll() : void
      {
         this._list.removeAll();
      }
      
      protected function onDropDown(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         this._open = !this._open;
         if(this._open)
         {
            _loc2_ = new Point();
            if(this._openPosition == BOTTOM)
            {
               _loc2_.y = _height;
            }
            else
            {
               _loc2_.y = -this._numVisibleItems * this._list.listItemHeight;
            }
            _loc2_ = this.localToGlobal(_loc2_);
            this._list.move(_loc2_.x,_loc2_.y);
            this._stage.addChild(this._list);
            this._stage.addEventListener(MouseEvent.CLICK,this.onStageClick);
            this._dropDownButton.label = "-";
         }
         else
         {
            this.removeList();
         }
      }
      
      protected function onStageClick(param1:MouseEvent) : void
      {
         if(param1.target == this._dropDownButton || param1.target == this._labelButton)
         {
            return;
         }
         if(new Rectangle(this._list.x,this._list.y,this._list.width,this._list.height).contains(param1.stageX,param1.stageY))
         {
            return;
         }
         this._open = false;
         this.removeList();
      }
      
      protected function onSelect(param1:Event) : void
      {
         this._open = false;
         this._dropDownButton.label = "+";
         if(stage != null && stage.contains(this._list))
         {
            stage.removeChild(this._list);
         }
         this.setLabelButtonLabel();
         dispatchEvent(param1);
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         this._stage = stage;
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
         this.removeList();
      }
      
      public function set selectedIndex(param1:int) : void
      {
         this._list.selectedIndex = param1;
         this.setLabelButtonLabel();
      }
      
      public function get selectedIndex() : int
      {
         return this._list.selectedIndex;
      }
      
      public function set selectedItem(param1:Object) : void
      {
         this._list.selectedItem = param1;
         this.setLabelButtonLabel();
      }
      
      public function get selectedItem() : Object
      {
         return this._list.selectedItem;
      }
      
      public function set defaultColor(param1:uint) : void
      {
         this._list.defaultColor = param1;
      }
      
      public function get defaultColor() : uint
      {
         return this._list.defaultColor;
      }
      
      public function set selectedColor(param1:uint) : void
      {
         this._list.selectedColor = param1;
      }
      
      public function get selectedColor() : uint
      {
         return this._list.selectedColor;
      }
      
      public function set rolloverColor(param1:uint) : void
      {
         this._list.rolloverColor = param1;
      }
      
      public function get rolloverColor() : uint
      {
         return this._list.rolloverColor;
      }
      
      public function set listItemHeight(param1:Number) : void
      {
         this._list.listItemHeight = param1;
         invalidate();
      }
      
      public function get listItemHeight() : Number
      {
         return this._list.listItemHeight;
      }
      
      public function set openPosition(param1:String) : void
      {
         this._openPosition = param1;
      }
      
      public function get openPosition() : String
      {
         return this._openPosition;
      }
      
      public function set defaultLabel(param1:String) : void
      {
         this._defaultLabel = param1;
         this.setLabelButtonLabel();
      }
      
      public function get defaultLabel() : String
      {
         return this._defaultLabel;
      }
      
      public function set numVisibleItems(param1:int) : void
      {
         this._numVisibleItems = param1;
         invalidate();
      }
      
      public function get numVisibleItems() : int
      {
         return this._numVisibleItems;
      }
      
      public function set items(param1:Array) : void
      {
         this._list.items = param1;
      }
      
      public function get items() : Array
      {
         return this._list.items;
      }
      
      public function set listItemClass(param1:Class) : void
      {
         this._list.listItemClass = param1;
      }
      
      public function get listItemClass() : Class
      {
         return this._list.listItemClass;
      }
      
      public function set alternateColor(param1:uint) : void
      {
         this._list.alternateColor = param1;
      }
      
      public function get alternateColor() : uint
      {
         return this._list.alternateColor;
      }
      
      public function set alternateRows(param1:Boolean) : void
      {
         this._list.alternateRows = param1;
      }
      
      public function get alternateRows() : Boolean
      {
         return this._list.alternateRows;
      }
      
      public function set autoHideScrollBar(param1:Boolean) : void
      {
         this._list.autoHideScrollBar = param1;
         invalidate();
      }
      
      public function get autoHideScrollBar() : Boolean
      {
         return this._list.autoHideScrollBar;
      }
      
      public function get isOpen() : Boolean
      {
         return this._open;
      }
   }
}
