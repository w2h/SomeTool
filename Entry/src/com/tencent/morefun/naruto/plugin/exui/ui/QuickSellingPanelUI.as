package com.tencent.morefun.naruto.plugin.exui.ui
{
   import flash.display.Sprite;
   import naruto.component.controls.Background_5;
   import flash.text.TextField;
   import naruto.component.controls.ButtonNormalBlue;
   import naruto.component.controls.TitleBar_3;
   import naruto.component.controls.ButtonLittle;
   import naruto.component.controls.ButtonClose;
   import naruto.component.controls.NumericStepper_1;
   
   public dynamic class QuickSellingPanelUI extends Sprite
   {
       
      public var background:Background_5;
      
      public var priceText:TextField;
      
      public var okButton:ButtonNormalBlue;
      
      public var item:com.tencent.morefun.naruto.plugin.exui.ui.QuickSellingItemCellUI;
      
      public var labelText:TextField;
      
      public var header:TitleBar_3;
      
      public var maxBt:ButtonLittle;
      
      public var cancelButton:ButtonNormalBlue;
      
      public var closeButton:ButtonClose;
      
      public var numStepper:NumericStepper_1;
      
      public function QuickSellingPanelUI()
      {
         super();
         this.__setProp_okButton_QuickSellingPanelUI_button_0();
         this.__setProp_cancelButton_QuickSellingPanelUI_button_0();
         this.__setProp_maxBt_QuickSellingPanelUI_numberchooser_0();
         this.__setProp_header_QuickSellingPanelUI_header_0();
      }
      
      function __setProp_okButton_QuickSellingPanelUI_button_0() : *
      {
         try
         {
            this.okButton["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.okButton.clickSound = "click";
         this.okButton.enabled = true;
         this.okButton.label = "出售";
         this.okButton.overSound = "none";
         this.okButton.visible = true;
         try
         {
            this.okButton["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_cancelButton_QuickSellingPanelUI_button_0() : *
      {
         try
         {
            this.cancelButton["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.cancelButton.clickSound = "click";
         this.cancelButton.enabled = true;
         this.cancelButton.label = "取消";
         this.cancelButton.overSound = "none";
         this.cancelButton.visible = true;
         try
         {
            this.cancelButton["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_maxBt_QuickSellingPanelUI_numberchooser_0() : *
      {
         try
         {
            this.maxBt["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.maxBt.clickSound = "none";
         this.maxBt.enabled = true;
         this.maxBt.label = "MAX";
         this.maxBt.overSound = "none";
         this.maxBt.visible = true;
         try
         {
            this.maxBt["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_header_QuickSellingPanelUI_header_0() : *
      {
         try
         {
            this.header["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.header.enabled = true;
         this.header.label = "出售物品";
         this.header.visible = true;
         try
         {
            this.header["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
   }
}
