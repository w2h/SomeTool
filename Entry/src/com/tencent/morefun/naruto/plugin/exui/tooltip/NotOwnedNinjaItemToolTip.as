package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import bag.data.ItemData;
   import cfgData.dataStruct.NinjaInfoCFG;
   import user.data.NinjaInfoConfig;
   import bag.data.CardItemData;
   
   public class NotOwnedNinjaItemToolTip extends CardItemTooltip
   {
       
      public function NotOwnedNinjaItemToolTip(param1:Class = null)
      {
         super(param1);
         _nijiaui.cardtips.visible = false;
      }
      
      override protected function showNinjiaSkill(param1:ItemData) : void
      {
         var _loc2_:NinjaInfoCFG = null;
         super.showNinjiaSkill(param1);
         _nijiaui.nameText.htmlText = "<b><font color=\'#ffffff\'>" + itemData.name + itemData.title + "</font></b>";
         _loc2_ = NinjaInfoConfig.getNinjaCfgInfo((param1 as CardItemData).ninjaId);
         if(_loc2_.starLevel > 0)
         {
            _nijiaui.starLabel.visible = true;
            _nijiaui.starLabel.gotoAndStop(_loc2_.starLevel);
         }
         else
         {
            _nijiaui.starLabel.visible = false;
         }
      }
   }
}
