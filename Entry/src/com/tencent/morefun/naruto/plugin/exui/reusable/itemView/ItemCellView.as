package com.tencent.morefun.naruto.plugin.exui.reusable.itemView
{
   import flash.display.MovieClip;
   import bag.data.ItemData;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import flash.text.TextField;
   import com.tencent.morefun.naruto.plugin.ui.tips.TipsManager;
   import bag.utils.BagUtils;
   import def.TipsTypeDef;
   
   public class ItemCellView
   {
       
      private var _ui:MovieClip;
      
      private var _data:ItemData;
      
      private var _img:ItemIcon;
      
      private var _numText:TextField;
      
      private var _nameText:TextField;
      
      public function ItemCellView(param1:MovieClip)
      {
         super();
         this._ui = param1;
         this._img = new ItemIcon(this.imageWidth,this.imageHeight);
         this._img.x = this.imageX;
         this._img.y = this.imageY;
         this._ui.img.mouseEnabled = false;
         this._ui.img.mouseChildren = false;
         this._ui.img.addChild(this._img);
         this._numText = this._ui.numText;
         this._numText.mouseEnabled = false;
         this._numText.htmlText = "";
         this._nameText = this._ui.nameText;
         this._nameText.mouseEnabled = false;
         this._nameText.htmlText = "";
         this._ui.mouseChildren = false;
      }
      
      public function dispose() : void
      {
         this._ui.img.removeChild(this._img);
         this._img.destroy();
         this._img = null;
         this._ui = null;
      }
      
      public function reset() : void
      {
         this._img.unload();
         this._img.alpha = 1;
         this._numText.htmlText = "";
         this._nameText.htmlText = "";
         this._data = null;
         TipsManager.singleton.unbinding(this._ui);
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:String = null;
         if(param1 is ItemData && param1.id != 0)
         {
            this._data = param1 as ItemData;
            this._img.loadIconByData(this._data);
            this._numText.htmlText = this._data.num > 0?String(this._data.num):"";
            _loc2_ = BagUtils.getColoredItemName(param1.id);
            this._nameText.htmlText = _loc2_ != null?_loc2_:"";
            TipsManager.singleton.binding(this._ui,this._data,TipsTypeDef.BAG_ITEM);
         }
         else
         {
            this.reset();
         }
      }
      
      public function get width() : Number
      {
         return 79;
      }
      
      public function get height() : Number
      {
         return 93;
      }
      
      protected function get imageX() : int
      {
         return 6;
      }
      
      protected function get imageY() : int
      {
         return 5;
      }
      
      protected function get imageWidth() : int
      {
         return 64;
      }
      
      protected function get imageHeight() : int
      {
         return 64;
      }
   }
}
