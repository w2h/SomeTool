package com.tencent.morefun.naruto.plugin.exui.base
{
   import flash.display.Sprite;
   import rank.model.data.RankTitleCfgInfo;
   import flash.text.TextField;
   import flash.events.Event;
   import flash.text.TextFormat;
   import flash.filters.GlowFilter;
   import flash.text.TextFieldAutoSize;
   
   public class UserTitle extends Sprite
   {
       
      private var _data:RankTitleCfgInfo;
      
      private var _label:TextField;
      
      private var _image:com.tencent.morefun.naruto.plugin.exui.base.Image;
      
      public function UserTitle()
      {
         super();
         this._label = new TextField();
         this._label.defaultTextFormat = new TextFormat("SimSun",16,16777215,true);
         this._label.filters = [new GlowFilter(0,1,3,3,3)];
         this._label.autoSize = TextFieldAutoSize.LEFT;
         this._label.mouseEnabled = false;
         this._image = new com.tencent.morefun.naruto.plugin.exui.base.Image(0,0,false,false);
         this._image.smoothing = false;
      }
      
      public function dispose() : void
      {
         this._image.dispose();
         this._image.parent && this._image.parent.removeChild(this._image);
         this._image.removeEventListener(Event.COMPLETE,this.imageCompleteHandler);
         this._image = null;
         this._label.parent && this._label.parent.removeChild(this._label);
         this._label = null;
         this._data = null;
      }
      
      public function get data() : RankTitleCfgInfo
      {
         return this._data;
      }
      
      public function set data(param1:RankTitleCfgInfo) : void
      {
         this._data = param1;
         if(this._data)
         {
            this._label.htmlText = "<b>" + this._data.formattedName + "</b>";
            this._label.x = -this._label.width / 2;
            this._label.y = -this._label.height;
            if(this._data.image)
            {
               this._image.dispose();
               this._image.addEventListener(Event.COMPLETE,this.imageCompleteHandler);
               this._image.load(this._data.image);
               addChild(this._image);
               this._label.parent && this._label.parent.removeChild(this._label);
            }
            else
            {
               addChild(this._label);
               this._image.parent && this._image.parent.removeChild(this._image);
            }
         }
         else
         {
            this._label.parent && this._label.parent.removeChild(this._label);
            this._image.parent && this._image.parent.removeChild(this._image);
         }
      }
      
      private function imageCompleteHandler(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(param1.type,arguments.callee);
         this._image.x = -this._image.width / 2;
         this._image.y = -this._image.height;
      }
   }
}
