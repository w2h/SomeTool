package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.RewardPackageItemTooltipUI;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import bag.data.ItemData;
   import bag.data.CommonItemData;
   import def.TipsTypeDef;
   import bag.utils.BagUtils;
   import base.ApplicationData;
   import com.tencent.morefun.naruto.util.StrReplacer;
   import reward.cfg.RewardCfg;
   import reward.cmd.GetRewardCfgCommand;
   import reward.cfg.RewardItemCfg;
   import flash.text.TextFormatAlign;
   
   public class RewardPackageItemTooltip extends BaseTipsView
   {
      
      private static const SPACE_X:int = 30;
      
      private static const SPACE_Y:int = 15;
      
      private static const LINE_SPACE_Y:int = 5;
      
      private static const EXPIRE_SPACE_Y:int = 15;
      
      private static const DESCRIPTION_SPACE_Y:int = 15;
      
      private static const BOTTOM_SPACE_Y:int = 25;
      
      private static const leftSpace:int = 8;
      
      private static const rightSpace:int = 10;
      
      private static const topSpage:int = 11;
      
      private static const downSpage:int = 11;
       
      private var _ui:RewardPackageItemTooltipUI;
      
      private var _icon:ItemIcon;
      
      private var _lineY:int;
      
      public function RewardPackageItemTooltip()
      {
         super();
         this._ui = new RewardPackageItemTooltipUI();
         this._ui.mouseEnabled = false;
         this._ui.mouseChildren = false;
         this._ui.descriptionText.autoSize = TextFormatAlign.LEFT;
         this._icon = new ItemIcon();
         this._ui.icon.addChild(this._icon);
         addChild(this._ui);
      }
      
      override public function destroy() : void
      {
         this._icon.destroy();
         this._icon = null;
         super.destroy();
      }
      
      override public function set data(param1:Object) : void
      {
         if(!(param1 is ItemData))
         {
            return;
         }
         var _loc2_:ItemData = param1 as ItemData;
         var _loc3_:CommonItemData = param1 as CommonItemData;
         this._lineY = this._ui.useLevel.y;
         this.showIcon(_loc2_);
         this.showName(_loc2_);
         this.showUselevel(_loc3_);
         this.showExpireTime(_loc3_);
         this.showDescription(_loc2_);
         this.showExtraDescription(_loc3_);
         this.showPrice(_loc2_);
         this.resize();
      }
      
      private function showIcon(param1:ItemData) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._icon.loadIcon(param1.id,param1,TipsTypeDef.BAG_ITEM);
      }
      
      private function showName(param1:ItemData) : void
      {
         this._ui.nameText.htmlText = "<b>" + BagUtils.getColoredItemName(param1.id) + "</b>";
      }
      
      private function showUselevel(param1:CommonItemData) : void
      {
         if(param1 != null && param1.useLevel > 0)
         {
            this._ui.useLevel.useLevelText.htmlText = this.getUserLevelText(param1);
            this._ui.useLevel.visible = true;
            this._lineY = this._ui.useLevel.y + this._ui.useLevel.useLevelText.textHeight + LINE_SPACE_Y;
         }
         else
         {
            this._ui.useLevel.visible = false;
         }
      }
      
      private function getUserLevelText(param1:CommonItemData) : String
      {
         var _loc2_:String = "";
         if(ApplicationData.singleton.selfInfo.level < param1.useLevel)
         {
            _loc2_ = "<font color=\'#" + TooltipConst.COLOR_RED.toString(16) + "\'>" + param1.useLevel + "</font>";
         }
         else
         {
            _loc2_ = "<font color=\'#" + TooltipConst.COLOR_WHITE.toString(16) + "\'>" + param1.useLevel + "</font>";
         }
         return _loc2_;
      }
      
      private function showExpireTime(param1:CommonItemData) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(param1 != null)
         {
            _loc2_ = "";
            _loc3_ = "";
            if(param1.usableTime != null && param1.usableTime.time > 0)
            {
               _loc3_ = this.getTimeStr(param1.usableTime);
               _loc2_ = _loc2_ + StrReplacer.replace(TooltipConst.COMMON_USABLE_TIME,_loc3_);
            }
            if(param1.expireTime != null && param1.expireTime.time > 0)
            {
               _loc3_ = this.getTimeStr(param1.expireTime);
               _loc2_ = _loc2_ + ((_loc2_ != ""?"\n":"") + StrReplacer.replace(TooltipConst.COMMON_EXPIRE_TIME,_loc3_));
            }
            else if(param1.expireSeconds != 0)
            {
               _loc3_ = this.getTimeStrBySeconds(param1.expireSeconds);
               _loc2_ = _loc2_ + ((_loc2_ != ""?"\n":"") + StrReplacer.replace(TooltipConst.COMMON_EXPIRE_TIME,_loc3_));
            }
            else if(param1.clientExpireDate)
            {
               _loc3_ = this.getTimeStr(param1.clientExpireDate);
               _loc2_ = _loc2_ + ((_loc2_ != ""?"\n":"") + StrReplacer.replace(TooltipConst.COMMON_EXPIRE_TIME,_loc3_));
            }
            this._ui.expireText.y = this._lineY;
            this._ui.expireText.htmlText = _loc2_;
            if(_loc2_ != "")
            {
               this._lineY = this._ui.expireText.y + this._ui.expireText.textHeight + EXPIRE_SPACE_Y;
            }
         }
         else
         {
            this._ui.expireText.htmlText = "";
         }
      }
      
      private function showDescription(param1:ItemData) : void
      {
         var _loc2_:String = param1 != null && param1.description != null?param1.description:"";
         this._ui.descriptionText.y = this._lineY;
         this._ui.descriptionText.htmlText = "<b><font color=\'#" + TooltipConst.COLOR_REWARD_PACKAGE_DESCRIPTION.toString(16) + "\'>" + _loc2_ + "</font></b>";
         if(_loc2_ != "")
         {
            this._ui.descriptionText.htmlText = this._ui.descriptionText.htmlText + "<br>";
         }
         this._ui.descriptionText.htmlText = this._ui.descriptionText.htmlText + this.getRewardsDescription(param1 as CommonItemData);
         if(this._ui.descriptionText.textHeight > 0)
         {
            this._lineY = this._ui.descriptionText.y + this._ui.descriptionText.textHeight + DESCRIPTION_SPACE_Y;
         }
      }
      
      private function getRewardsDescription(param1:CommonItemData) : String
      {
         var _loc2_:RewardCfg = null;
         var _loc3_:String = null;
         if(param1 != null)
         {
            _loc2_ = this.getRewardCfg(param1);
            _loc3_ = "";
            _loc3_ = _loc3_ + this.getItemsDescription(_loc2_);
            _loc3_ = _loc3_ + this.getRandomItemsDescription(_loc2_,param1);
            return _loc3_;
         }
         return null;
      }
      
      private function getRewardCfg(param1:CommonItemData) : RewardCfg
      {
         var _loc2_:uint = 0;
         var _loc3_:GetRewardCfgCommand = null;
         if(param1 != null)
         {
            _loc2_ = param1.val2;
            _loc3_ = new GetRewardCfgCommand(_loc2_);
            _loc3_.call();
            return _loc3_.cfg;
         }
         return null;
      }
      
      private function getItemsDescription(param1:RewardCfg) : String
      {
         if(param1 == null || param1.items == null)
         {
            return "";
         }
         var _loc2_:String = "";
         if(param1.items != null && param1.items.length > 0)
         {
            _loc2_ = TooltipConst.MUST_DROP + "<br>";
            _loc2_ = _loc2_ + this.getRewardCfgDescription(param1.items);
         }
         return _loc2_;
      }
      
      private function getRandomItemsDescription(param1:RewardCfg, param2:CommonItemData) : String
      {
         if(param1 == null || param1.randomItems == null)
         {
            return "";
         }
         var _loc3_:String = "";
         if(param1.randomItems != null && param1.randomItems.length > 0)
         {
            _loc3_ = param1.items != null && param1.items.length > 0?"<br>":"";
            if(!BagUtils.isSelGift(param2.id))
            {
               _loc3_ = _loc3_ + (TooltipConst.RANDOM_DROP + "<br>");
            }
            _loc3_ = _loc3_ + this.getRewardCfgDescription(param1.randomItems);
         }
         return _loc3_;
      }
      
      private function getRewardCfgDescription(param1:Vector.<RewardItemCfg>) : String
      {
         var _loc4_:RewardItemCfg = null;
         var _loc5_:String = null;
         if(param1 == null)
         {
            return "";
         }
         var _loc2_:String = "";
         var _loc3_:int = param1.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc4_ = param1[_loc6_];
            _loc5_ = BagUtils.getColoredItemName(_loc4_.itemId);
            if(_loc4_.itemId != 0 && _loc4_.num > 0)
            {
               _loc2_ = _loc2_ + (StrReplacer.replace(TooltipConst.ITEM_NAME_WITH_NUM,[_loc5_,_loc4_.num]) + "<br>");
            }
            _loc6_++;
         }
         return _loc2_;
      }
      
      private function showExtraDescription(param1:CommonItemData) : void
      {
         this._ui.extraDescriptionText.y = this._ui.descriptionText.y + this._ui.descriptionText.height + LINE_SPACE_Y;
         if(param1 != null && param1.extraDescription != null && param1.extraDescription != "" && ApplicationData.singleton.selfInfo.level < param1.extraDescriptionLevel)
         {
            this._ui.extraDescriptionText.htmlText = param1.extraDescription;
            this._ui.extraDescriptionText.y = this._lineY;
            this._lineY = this._ui.extraDescriptionText.y + this._ui.extraDescriptionText.height + DESCRIPTION_SPACE_Y;
         }
         else
         {
            this._ui.extraDescriptionText.htmlText = "";
         }
      }
      
      private function showPrice(param1:ItemData) : void
      {
         this._ui.price.y = this._lineY;
         if(param1.price > 0)
         {
            this._ui.price.sellable.priceText.htmlText = "<b>" + param1.price + "</b>";
            this._ui.price.sellable.visible = true;
            this._ui.price.priceless.visible = false;
         }
         else
         {
            this._ui.price.sellable.priceText.htmlText = "";
            this._ui.price.sellable.visible = false;
            this._ui.price.priceless.visible = true;
         }
      }
      
      override protected function resize() : void
      {
         var _loc1_:int = this._ui.nameText.x + this._ui.nameText.textWidth;
         _loc1_ = _loc1_ > this._ui.expireText.x + this._ui.expireText.textWidth?_loc1_:this._ui.expireText.x + this._ui.expireText.textWidth;
         _loc1_ = _loc1_ > this._ui.descriptionText.x + this._ui.descriptionText.textWidth?_loc1_:this._ui.descriptionText.x + this._ui.descriptionText.textWidth;
         _loc1_ = _loc1_ > this._ui.extraDescriptionText.x + this._ui.extraDescriptionText.textWidth?_loc1_:this._ui.extraDescriptionText.x + this._ui.extraDescriptionText.textWidth;
         this._ui.bg.width = _loc1_ + SPACE_X;
         this._ui.bg.height = this._ui.price.y + this._ui.price.height + BOTTOM_SPACE_Y;
         this._ui.texture_left.x = leftSpace;
         this._ui.texture_left.y = topSpage;
         this._ui.texture_right.x = this._ui.bg.width - this._ui.texture_right.width - rightSpace;
         this._ui.texture_right.y = this._ui.bg.height - this._ui.texture_right.height - downSpage;
      }
      
      private function getTimeStr(param1:Date) : String
      {
         if(param1 == null || param1.time == 0)
         {
            return "";
         }
         var _loc2_:String = param1.hours < 10?"0" + param1.hours:param1.hours.toString();
         var _loc3_:String = param1.minutes < 10?"0" + param1.minutes:param1.minutes.toString();
         var _loc4_:String = param1.seconds < 10?"0" + param1.seconds:param1.seconds.toString();
         var _loc5_:String = StrReplacer.replace(TooltipConst.COMMON_EXPIRE_TIME_FORMAT,[param1.fullYear,param1.month + 1,param1.date,_loc2_,_loc3_,_loc4_]);
         return _loc5_;
      }
      
      private function getTimeStrBySeconds(param1:int) : String
      {
         var _loc2_:Date = new Date(param1 * 1000);
         return this.getTimeStr(_loc2_);
      }
   }
}
