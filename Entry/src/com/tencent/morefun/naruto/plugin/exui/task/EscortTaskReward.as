package com.tencent.morefun.naruto.plugin.exui.task
{
   import task.datas.TaskInfo;
   import bag.data.ItemData;
   import reward.cfg.RewardItemCfg;
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import bag.utils.BagUtils;
   import item.ItemIdDef;
   import def.TipsTypeDef;
   import flash.display.MovieClip;
   
   public class EscortTaskReward extends TaskReward
   {
       
      private var escortRewardMoney:int;
      
      private var escortRewardTicket:int;
      
      private var escortRewardGuildContribute:int;
      
      private var ext:Boolean = false;
      
      public function EscortTaskReward(param1:MovieClip, param2:Class, param3:int = 120)
      {
         super(param1,param2,param3);
      }
      
      override public function setTaskInfo(param1:TaskInfo) : void
      {
         this.ext = false;
         super.setTaskInfo(param1);
      }
      
      public function setTaskInfoExt(param1:TaskInfo, param2:int, param3:int, param4:int) : void
      {
         this.ext = true;
         this.escortRewardMoney = param2;
         this.escortRewardTicket = param3;
         this.escortRewardGuildContribute = param4;
         super.setTaskInfo(param1);
      }
      
      override protected function updateBase() : void
      {
         super.updateBase();
         if(!this.ext)
         {
            return;
         }
         res.money.txt.text = "" + this.escortRewardMoney;
         res.ticket.txt.text = "" + this.escortRewardTicket;
      }
      
      override protected function updateRewardItems() : void
      {
         var _loc2_:Vector.<ItemData> = null;
         var _loc3_:ItemData = null;
         var _loc4_:RewardItemCfg = null;
         var _loc5_:Sprite = null;
         var _loc6_:ItemIcon = null;
         if(!this.ext)
         {
            super.updateRewardItems();
            return;
         }
         var _loc1_:int = 0;
         _loc2_ = new Vector.<ItemData>();
         for each(_loc4_ in rewardCfg.items)
         {
            _loc5_ = new itemUIClass();
            _loc5_.name = "img";
            if(_loc5_["txt"])
            {
               _loc5_["txt"].htmlText = BagUtils.getColoredItemName(_loc4_.itemId);
            }
            _loc5_["numTxt"].mouseEnabled = false;
            _loc5_["numTxt"].text = _loc4_.num;
            if(_loc4_.itemId == ItemIdDef.GUILD_CONTRIBUTION)
            {
               _loc5_["numTxt"].text = this.escortRewardGuildContribute;
            }
            _loc5_.x = _loc1_;
            res.items.addChild(_loc5_);
            _loc1_ = _loc1_ + (_loc5_.width + GAP_ITEMS);
            _loc6_ = new ItemIcon();
            _loc3_ = BagUtils.createItemData(_loc4_.itemId,_loc4_.num);
            if(_loc4_.itemId != 0)
            {
               _loc6_.loadIcon(_loc4_.itemId,_loc3_,TipsTypeDef.BAG_ITEM);
            }
            _loc6_.mouseEnabled = false;
            _loc5_["img"].addChild(_loc6_);
            _loc2_.push(_loc3_);
         }
         _rewardItems = _loc2_;
         if(onUpdateRewardItemsFun != null)
         {
            onUpdateRewardItemsFun();
         }
      }
   }
}
