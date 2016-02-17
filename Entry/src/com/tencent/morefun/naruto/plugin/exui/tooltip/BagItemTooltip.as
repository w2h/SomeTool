package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import bag.data.ItemData;
   import bag.data.EquipmentItemData;
   import bag.data.GemItemData;
   import bag.data.CardItemData;
   import bag.utils.BagUtils;
   
   public class BagItemTooltip extends BaseTipsView
   {
       
      private var _detailTooltip:BaseTipsView;
      
      public function BagItemTooltip(param1:Class = null)
      {
         super();
         this.mouseEnabled = false;
         this.mouseChildren = false;
      }
      
      override public function destroy() : void
      {
         this.clearDetailTooltip();
      }
      
      override public function set data(param1:Object) : void
      {
         if(!(param1 is ItemData))
         {
            return;
         }
         this.clearDetailTooltip();
         if(param1 is EquipmentItemData)
         {
            this._detailTooltip = new EquipmentItemTooltip();
         }
         else if(param1 is GemItemData)
         {
            this._detailTooltip = new GemItemTooltip();
         }
         else if(param1 is CardItemData)
         {
            this._detailTooltip = new CardItemTooltip();
         }
         else if(BagUtils.isRewardPackageItem(param1.id))
         {
            this._detailTooltip = new RewardPackageItemTooltip();
         }
         else if(BagUtils.isBeastFragment(param1.id))
         {
            this._detailTooltip = new BeastFragmentTooltip();
         }
         else if(BagUtils.isBeastRune(param1.id))
         {
            this._detailTooltip = new BeastRuneTooltip();
         }
         else
         {
            this._detailTooltip = new CommonItemTooltip();
         }
         this._detailTooltip.data = param1;
         this.addChild(this._detailTooltip);
      }
      
      private function clearDetailTooltip() : void
      {
         if(this._detailTooltip != null && this.contains(this._detailTooltip))
         {
            this.removeChild(this._detailTooltip);
            this._detailTooltip.destroy();
            this._detailTooltip = null;
         }
      }
      
      override public function get height() : Number
      {
         if(this._detailTooltip != null && this.contains(this._detailTooltip))
         {
            return this._detailTooltip.height;
         }
         return super.height;
      }
   }
}
