package com.tencent.morefun.naruto.plugin.exui.mall.buying
{
   import com.tencent.morefun.naruto.plugin.exui.ui.QuickBuyingPriceBarUI;
   import flash.display.Sprite;
   import flash.text.TextField;
   import com.tencent.morefun.naruto.plugin.ui.tips.TipsManager;
   import flash.text.TextFieldAutoSize;
   import com.tencent.morefun.naruto.plugin.exui.mall.MallConst;
   
   public class QuickBuyingPriceBar
   {
      
      private static const DIANQUAN_TEXT_OFFSET_X:int = 36;
      
      private static const OR_TEXT_OFFSET_X:int = 10;
      
      private static const YUANBAO_TEXT_OFFSET_X:int = 26;
       
      private var _ui:QuickBuyingPriceBarUI;
      
      private var _dianquanIcon:Sprite;
      
      private var _dianquanPriceText:TextField;
      
      private var _yuanbaoIcon:Sprite;
      
      private var _yuanbaoPriceText:TextField;
      
      private var _orText:TextField;
      
      private var _dianquanPrice:int;
      
      private var _yuanbaoPrice:int;
      
      public function QuickBuyingPriceBar(param1:QuickBuyingPriceBarUI)
      {
         super();
         this._ui = param1;
         this._dianquanIcon = this._ui.dianquanIcon;
         this._dianquanPriceText = this._ui.dianquanPriceText;
         this._dianquanPriceText.mouseEnabled = false;
         this._dianquanPriceText.autoSize = TextFieldAutoSize.LEFT;
         this._yuanbaoIcon = this._ui.yuanbaoIcon;
         this._yuanbaoPriceText = this._ui.yuanbaoPriceText;
         this._yuanbaoPriceText.mouseEnabled = false;
         this._yuanbaoPriceText.autoSize = TextFieldAutoSize.LEFT;
         this._orText = this._ui.orText;
         this._orText.mouseEnabled = false;
         TipsManager.singleton.binding(this._dianquanIcon,MallConst.DIANQUAN);
         TipsManager.singleton.binding(this._yuanbaoIcon,MallConst.YUANBAO);
      }
      
      public function dispose() : void
      {
         TipsManager.singleton.unbinding(this._dianquanIcon);
         TipsManager.singleton.unbinding(this._yuanbaoIcon);
      }
      
      public function reset() : void
      {
         this._dianquanPrice = 0;
         this._yuanbaoPrice = 0;
         this._dianquanPriceText.htmlText = "<b>--</b>";
         this._yuanbaoPriceText.htmlText = "<b>--</b>";
      }
      
      public function set dianquanPrice(param1:int) : void
      {
         this._dianquanPrice = param1;
         this._dianquanPriceText.htmlText = "<b>" + param1 + "</b>";
         this.updatePos();
      }
      
      public function set yuanbaoPrice(param1:int) : void
      {
         this._yuanbaoPrice = param1;
         this._yuanbaoPriceText.htmlText = "<b>" + param1 + "</b>";
         this.updatePos();
      }
      
      private function updatePos() : void
      {
         if(this._dianquanPrice > 0)
         {
            this._dianquanIcon.x = 0;
            this._dianquanPriceText.x = DIANQUAN_TEXT_OFFSET_X;
            this._orText.x = this._dianquanPriceText.x + this._dianquanPriceText.textWidth + OR_TEXT_OFFSET_X;
            this._yuanbaoIcon.x = this._orText.x + this._orText.textWidth + OR_TEXT_OFFSET_X;
            this._yuanbaoPriceText.x = this._yuanbaoIcon.x + YUANBAO_TEXT_OFFSET_X;
            this._dianquanIcon.visible = true;
            this._dianquanPriceText.visible = true;
            this._orText.visible = true;
            this._yuanbaoIcon.visible = true;
            this._yuanbaoPriceText.visible = true;
         }
         else
         {
            this._dianquanIcon.x = 0;
            this._dianquanPriceText.x = 0;
            this._orText.x = 0;
            this._yuanbaoIcon.x = 0;
            this._yuanbaoPriceText.x = this._yuanbaoIcon.x + YUANBAO_TEXT_OFFSET_X;
            this._dianquanIcon.visible = false;
            this._dianquanPriceText.visible = false;
            this._orText.visible = false;
            this._yuanbaoIcon.visible = true;
            this._yuanbaoPriceText.visible = true;
         }
      }
   }
}
