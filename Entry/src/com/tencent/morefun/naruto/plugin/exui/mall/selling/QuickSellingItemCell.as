package com.tencent.morefun.naruto.plugin.exui.mall.selling
{
   import com.tencent.morefun.naruto.plugin.exui.ui.QuickSellingItemCellUI;
   import bag.data.ItemData;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import flash.text.TextField;
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.ui.tips.TipsManager;
   import bag.data.CommonItemData;
   import def.TipsTypeDef;
   import bag.utils.BagUtils;
   
   public class QuickSellingItemCell
   {
      
      private static const FRAME_X:int = -2;
      
      private static const FRAME_Y:int = -2;
      
      private static const FRAME_W:int = 82;
      
      private static const FRAME_H:int = 96;
      
      private static const EXPIRE_ALPHA:Number = 0.5;
       
      private var _ui:QuickSellingItemCellUI;
      
      private var _data:ItemData;
      
      private var _img:ItemIcon;
      
      private var _numText:TextField;
      
      private var _nameText:TextField;
      
      private var _expire:Sprite;
      
      public function QuickSellingItemCell(param1:QuickSellingItemCellUI)
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
         this._expire = this._ui.expire;
         this._expire.mouseEnabled = false;
         this._expire.mouseChildren = false;
         this._expire.visible = false;
      }
      
      public function dispose() : void
      {
         TipsManager.singleton.unbinding(this._ui);
         this._ui.img.removeChild(this._img);
         this._img.destroy();
         this._img = null;
         this._numText = null;
         this._nameText = null;
         this._expire = null;
         this._ui = null;
         this._data = null;
      }
      
      public function reset() : void
      {
         TipsManager.singleton.unbinding(this._ui);
         this._img.unload();
         this._img.alpha = 1;
         this._expire.alpha = 1;
         this._expire.visible = false;
         this._numText.htmlText = "";
         this._nameText.htmlText = "";
         this._data = null;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:CommonItemData = null;
         var _loc4_:* = false;
         var _loc5_:* = false;
         if(param1 is ItemData && param1.id != 0)
         {
            this._data = param1 as ItemData;
            this._img.loadIconByData(this._data);
            TipsManager.singleton.binding(this._ui,this._data,TipsTypeDef.BAG_ITEM);
            if(this._data is CommonItemData)
            {
               _loc3_ = this._data as CommonItemData;
               _loc4_ = _loc3_.expireTime != null && _loc3_.expireTime.time > 0;
               _loc5_ = _loc4_ && _loc3_.expireSeconds <= 0;
               this._img.alpha = _loc5_?EXPIRE_ALPHA:1;
               this._expire.alpha = _loc5_?EXPIRE_ALPHA:1;
               this._expire.visible = _loc4_;
            }
            else
            {
               this._img.alpha = 1;
               this._expire.alpha = 1;
               this._expire.visible = false;
            }
            _loc2_ = BagUtils.getColoredItemName(this._data.id);
            this._nameText.htmlText = _loc2_ != null?_loc2_:"--";
         }
         else
         {
            this.reset();
         }
      }
      
      private function get imageX() : int
      {
         return 6;
      }
      
      private function get imageY() : int
      {
         return 5;
      }
      
      private function get imageWidth() : int
      {
         return 64;
      }
      
      private function get imageHeight() : int
      {
         return 64;
      }
   }
}
