package com.bit101.components
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.events.Event;
   import flash.display.DisplayObjectContainer;
   
   public class InputText extends Component
   {
       
      protected var _back:Sprite;
      
      protected var _password:Boolean = false;
      
      protected var _text:String = "";
      
      protected var _tf:TextField;
      
      public function InputText(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0, param4:String = "", param5:Function = null)
      {
         this.text = param4;
         super(param1,param2,param3);
         if(param5 != null)
         {
            addEventListener(Event.CHANGE,param5);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         setSize(100,16);
      }
      
      override protected function addChildren() : void
      {
         this._back = new Sprite();
         this._back.filters = [getShadow(2,true)];
         addChild(this._back);
         this._tf = new TextField();
         this._tf.embedFonts = Style.embedFonts;
         this._tf.selectable = true;
         this._tf.type = TextFieldType.INPUT;
         this._tf.defaultTextFormat = new TextFormat(Style.fontName,Style.fontSize,Style.INPUT_TEXT);
         addChild(this._tf);
         this._tf.addEventListener(Event.CHANGE,this.onChange);
      }
      
      override public function draw() : void
      {
         super.draw();
         this._back.graphics.clear();
         this._back.graphics.beginFill(Style.BACKGROUND);
         this._back.graphics.drawRect(0,0,_width,_height);
         this._back.graphics.endFill();
         this._tf.displayAsPassword = this._password;
         if(this._text != null)
         {
            this._tf.text = this._text;
         }
         else
         {
            this._tf.text = "";
         }
         this._tf.width = _width - 4;
         if(this._tf.text == "")
         {
            this._tf.text = "X";
            this._tf.height = Math.min(this._tf.textHeight + 4,_height);
            this._tf.text = "";
         }
         else
         {
            this._tf.height = Math.min(this._tf.textHeight + 4,_height);
         }
         this._tf.x = 2;
         this._tf.y = Math.round(_height / 2 - this._tf.height / 2);
      }
      
      protected function onChange(param1:Event) : void
      {
         this._text = this._tf.text;
         param1.stopImmediatePropagation();
         dispatchEvent(param1);
      }
      
      public function set text(param1:String) : void
      {
         this._text = param1;
         if(this._text == null)
         {
            this._text = "";
         }
         invalidate();
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get textField() : TextField
      {
         return this._tf;
      }
      
      public function set restrict(param1:String) : void
      {
         this._tf.restrict = param1;
      }
      
      public function get restrict() : String
      {
         return this._tf.restrict;
      }
      
      public function set maxChars(param1:int) : void
      {
         this._tf.maxChars = param1;
      }
      
      public function get maxChars() : int
      {
         return this._tf.maxChars;
      }
      
      public function set password(param1:Boolean) : void
      {
         this._password = param1;
         invalidate();
      }
      
      public function get password() : Boolean
      {
         return this._password;
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         super.enabled = param1;
         this._tf.tabEnabled = param1;
      }
   }
}
