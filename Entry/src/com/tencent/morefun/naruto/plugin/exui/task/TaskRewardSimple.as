package com.tencent.morefun.naruto.plugin.exui.task
{
   import flash.display.MovieClip;
   import task.datas.TaskInfo;
   import reward.cfg.RewardCfg;
   import bag.data.ItemData;
   import reward.cmd.GetRewardCfgCommand;
   import com.tencent.morefun.framework.base.CommandEvent;
   import flash.text.TextField;
   import reward.cfg.RewardItemCfg;
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import bag.utils.BagUtils;
   import def.TipsTypeDef;
   import flash.display.DisplayObject;
   
   public class TaskRewardSimple
   {
      
      public static var GAP_ITEMS:int = 10;
       
      public var res:MovieClip;
      
      protected var taskInfo:TaskInfo;
      
      protected var rewardCfg:RewardCfg;
      
      protected var itemUIClass:Class;
      
      protected var _rewardItems:Vector.<ItemData>;
      
      protected var cmd:GetRewardCfgCommand;
      
      public var onUpdateRewardItemsFun:Function;
      
      public function TaskRewardSimple(param1:MovieClip, param2:Class)
      {
         super();
         this.res = param1;
         this.itemUIClass = param2;
      }
      
      public function setTaskInfo(param1:TaskInfo) : void
      {
         this.taskInfo = param1;
         this.updateReward();
      }
      
      protected function updateReward() : void
      {
         this.destroyCMD();
         this.destroyItems();
         if(this.taskInfo.cfg.reward != 0)
         {
            this.cmd = new GetRewardCfgCommand(this.taskInfo.cfg.reward);
            this.cmd.addEventListener(CommandEvent.FINISH,this.onGetRewardCfgCommand);
            this.cmd.addEventListener(CommandEvent.FAILD,this.onGetRewardCfgCommand);
            this.cmd.call();
         }
      }
      
      protected function onGetRewardCfgCommand(param1:CommandEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function updateRewardItems() : void
      {
         var _loc3_:ItemData = null;
         var _loc4_:RewardItemCfg = null;
         var _loc5_:Sprite = null;
         var _loc6_:ItemIcon = null;
         var _loc1_:int = 0;
         var _loc2_:Vector.<ItemData> = new Vector.<ItemData>();
         for each(_loc4_ in this.rewardCfg.items)
         {
            _loc5_ = new this.itemUIClass();
            _loc5_.name = "img";
            if(_loc5_["txt"])
            {
               _loc5_["txt"].htmlText = BagUtils.getColoredItemName(_loc4_.itemId);
            }
            _loc5_["numTxt"].mouseEnabled = false;
            _loc5_["numTxt"].text = _loc4_.num;
            _loc5_.x = _loc1_;
            this.res.items.addChild(_loc5_);
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
         this._rewardItems = _loc2_;
         if(this.onUpdateRewardItemsFun != null)
         {
            this.onUpdateRewardItemsFun();
         }
      }
      
      public function get rewardItems() : Vector.<ItemData>
      {
         return this._rewardItems;
      }
      
      protected function destroyCMD() : void
      {
         if(this.cmd)
         {
            this.cmd.removeEventListener(CommandEvent.FINISH,this.onGetRewardCfgCommand);
            this.cmd.removeEventListener(CommandEvent.FAILD,this.onGetRewardCfgCommand);
            this.cmd = null;
         }
      }
      
      protected function destroyItems() : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:ItemIcon = null;
         var _loc1_:int = this.res.items.numChildren - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.res.items.getChildAt(_loc1_);
            if(_loc2_.name == "img")
            {
               this.res.items.removeChild(_loc2_);
               if(_loc2_["img"] && _loc2_["img"].numChildren > 0)
               {
                  _loc3_ = _loc2_["img"].getChildAt(0) as ItemIcon;
                  if(_loc3_)
                  {
                     if(_loc3_.parent)
                     {
                        _loc3_.parent.removeChild(_loc3_);
                     }
                     _loc3_.unload();
                  }
               }
            }
            _loc1_--;
         }
      }
      
      public function destroy() : void
      {
         this.destroyCMD();
         this.destroyItems();
         this.itemUIClass = null;
         this.rewardCfg = null;
         this.taskInfo = null;
         this.res = null;
         this.onUpdateRewardItemsFun = null;
      }
   }
}
