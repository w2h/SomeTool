package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.StrengthenInfoItemTooltipUI;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import flash.text.TextFormatAlign;
   
   public class StrengthenInfoItemTooltip extends BaseTipsView
   {
      
      private static const SPACE_X:int = 35;
      
      private static const SPACE_Y:int = 15;
      
      private static const LINE_SPACE_Y:int = 5;
      
      private static const EXPIRE_SPACE_Y:int = 15;
      
      private static const DESCRIPTION_SPACE_Y:int = 15;
      
      private static const BOTTOM_SPACE_Y:int = 25;
      
      private static const ICON_W:int = 64;
      
      private static const ICON_H:int = 64;
      
      private static const ICON_X:int = 1;
      
      private static const ICON_Y:int = 1;
      
      private static const leftSpace:int = 8;
      
      private static const rightSpace:int = 10;
      
      private static const topSpage:int = 11;
      
      private static const downSpage:int = 11;
       
      private var _ui:StrengthenInfoItemTooltipUI;
      
      private var _icon:ItemIcon;
      
      private var _lineY:int;
      
      public function StrengthenInfoItemTooltip(param1:Class = null)
      {
         super();
         this._ui = new StrengthenInfoItemTooltipUI();
         this._ui.mouseEnabled = false;
         this._ui.mouseChildren = false;
         this._ui.descriptionText.autoSize = TextFormatAlign.LEFT;
         this._icon = new ItemIcon(ICON_W,ICON_H);
         this._icon.x = ICON_X;
         this._icon.y = ICON_Y;
         this._ui.icon.addChild(this._icon);
         addChild(this._ui);
      }
      
      override public function destroy() : void
      {
         this._icon.destroy();
      }
      
      override public function set data(param1:Object) : void
      {
         this._ui.nameText.text = param1.name;
         this._ui.descriptionText.text = param1.des;
         this._ui.currentBuffText.text = param1.currentBuff;
         this._ui.nextBuffText.text = param1.nextBuff;
         this._ui.needItemInfo.value = param1.needItem + "修行符";
         this.showIcon(param1.iconid);
      }
      
      private function showIcon(param1:int) : void
      {
         this._ui.icon.gotoAndStop(param1);
      }
   }
}
