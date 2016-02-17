package com.tencent.morefun.naruto.plugin.ui.tooltip
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import naruto.component.controls.Info_1;
   
   public dynamic class StrengthenInfoItemTooltipUI extends MovieClip
   {
       
      public var icon:MovieClip;
      
      public var currentBuffText:TextField;
      
      public var needItemInfo:Info_1;
      
      public var nextBuffText:TextField;
      
      public var nameText:TextField;
      
      public var bg:MovieClip;
      
      public var descriptionText:TextField;
      
      public var texture_right:MovieClip;
      
      public var texture_left:MovieClip;
      
      public function StrengthenInfoItemTooltipUI()
      {
         super();
         this.__setProp_needItemInfo_StrengthenInfoItemTooltipUI_description_0();
      }
      
      function __setProp_needItemInfo_StrengthenInfoItemTooltipUI_description_0() : *
      {
         try
         {
            this.needItemInfo["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.needItemInfo.enabled = true;
         this.needItemInfo.label = "升级消耗:";
         this.needItemInfo.value = "100%";
         this.needItemInfo.visible = true;
         try
         {
            this.needItemInfo["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
   }
}
