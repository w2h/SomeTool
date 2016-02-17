package com.tencent.morefun.naruto.plugin.exui.mall.buying
{
   import bag.data.ItemData;
   import com.tencent.morefun.naruto.plugin.exui.ui.QuickBuyingItemBoxUI;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import flash.text.TextField;
   import def.TipsTypeDef;
   import bag.utils.BagUtils;
   
   public class QuickBuyingItemBox
   {
       
      private var _data:ItemData;
      
      private var _ui:QuickBuyingItemBoxUI;
      
      private var _img:ItemIcon;
      
      private var _nameText:TextField;
      
      public function QuickBuyingItemBox(param1:QuickBuyingItemBoxUI, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0)
      {
         super();
         this._ui = param1;
         this._img = new ItemIcon(this.imageWidth,this.imageHeight);
         this._img.x = this.imageX;
         this._img.y = this.imageY;
         this._ui.addChild(this._img);
         this._nameText = this._ui.nameText;
         if(this._nameText != null)
         {
            this._nameText.htmlText = "";
         }
      }
      
      public function destroy() : void
      {
         this._ui.removeChild(this._img);
         this._img.destroy();
      }
      
      public function reset() : void
      {
         this._img.unload();
         if(this._nameText != null)
         {
            this._nameText.htmlText = "";
         }
         this._data = null;
      }
      
      public function get data() : ItemData
      {
         return this._data;
      }
      
      public function set data(param1:ItemData) : void
      {
         var _loc2_:String = null;
         if(param1 != null && param1.id > 0)
         {
            this._data = param1;
            this._img.loadIcon(param1.id,param1,TipsTypeDef.BAG_ITEM);
            if(this._nameText != null)
            {
               _loc2_ = BagUtils.getColoredItemName(this._data.id);
               this._nameText.htmlText = _loc2_ != null?_loc2_:"--";
            }
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
