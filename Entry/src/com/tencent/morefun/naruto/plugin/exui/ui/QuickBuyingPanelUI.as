package com.tencent.morefun.naruto.plugin.exui.ui
{
   import flash.display.Sprite;
   import naruto.component.controls.Background_5;
   import naruto.component.controls.ButtonNormalYellow;
   import flash.text.TextField;
   import naruto.component.controls.ButtonClose;
   import naruto.component.controls.NumericStepper_1;
   
   public dynamic class QuickBuyingPanelUI extends Sprite
   {
       
      public var background:Background_5;
      
      public var buyButton:ButtonNormalYellow;
      
      public var item:com.tencent.morefun.naruto.plugin.exui.ui.QuickBuyingItemBoxUI;
      
      public var labelText:TextField;
      
      public var priceBar:com.tencent.morefun.naruto.plugin.exui.ui.QuickBuyingPriceBarUI;
      
      public var closeButton:ButtonClose;
      
      public var numStepper:NumericStepper_1;
      
      public function QuickBuyingPanelUI()
      {
         super();
         this.__setProp_buyButton_QuickBuyingPanelUI_button_0();
      }
      
      function __setProp_buyButton_QuickBuyingPanelUI_button_0() : *
      {
         try
         {
            this.buyButton["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.buyButton.clickSound = "click";
         this.buyButton.enabled = true;
         this.buyButton.label = "<b>确认购买</b>";
         this.buyButton.overSound = "none";
         this.buyButton.visible = true;
         try
         {
            this.buyButton["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
   }
}
