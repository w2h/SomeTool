package com.tencent.morefun.naruto.plugin.exui.task
{
   import task.datas.TaskInfo;
   import com.tencent.morefun.naruto.plugin.ui.tips.TipsManager;
   import flash.display.MovieClip;
   
   public class TaskReward extends TaskRewardSimple
   {
       
      private var baseGap:int = 120;
      
      public function TaskReward(param1:MovieClip, param2:Class, param3:int = 120)
      {
         super(param1,param2);
         this.baseGap = param3;
         TipsManager.singleton.binding(param1["exp"]["icon"],"经验");
         TipsManager.singleton.binding(param1["money"]["icon"],"铜币");
         TipsManager.singleton.binding(param1["ticket"]["icon"],"点券");
         param1["exp"].txt.width = 200;
         param1["money"].txt.width = 100;
         param1["ticket"].txt.width = 100;
      }
      
      override public function setTaskInfo(param1:TaskInfo) : void
      {
         super.setTaskInfo(param1);
         this.updateBase();
      }
      
      protected function updateBase() : void
      {
         res["exp"].visible = false;
         res["money"].visible = false;
         res["ticket"].visible = false;
         var _loc1_:int = 0;
         if(taskInfo.cfg.rewardExp)
         {
            res["exp"].x = _loc1_;
            res["exp"].txt.htmlText = taskInfo.cfg.rewardExp;
            res["exp"].visible = true;
            _loc1_ = _loc1_ + this.baseGap;
         }
         if(taskInfo.cfg.rewardMoney)
         {
            res["money"].x = _loc1_;
            res["money"].txt.htmlText = taskInfo.cfg.rewardMoney;
            res["money"].visible = true;
            _loc1_ = _loc1_ + this.baseGap;
         }
         if(taskInfo.cfg.rewardTicket)
         {
            res["ticket"].x = _loc1_;
            res["ticket"].txt.htmlText = taskInfo.cfg.rewardTicket;
            res["ticket"].visible = true;
            _loc1_ = _loc1_ + this.baseGap;
         }
      }
      
      public function appendStr(param1:String = null, param2:String = null, param3:String = null) : void
      {
         if(taskInfo == null)
         {
            return;
         }
         if(param1 != null)
         {
            res["exp"].txt.htmlText = taskInfo.cfg.rewardExp + "<font color=\'#00CE30\'>" + param1 + "</font>";
         }
         if(param2 != null)
         {
            res["money"].txt.htmlText = taskInfo.cfg.rewardMoney + "<font color=\'#00CE30\'>" + param2 + "</font>";
         }
         if(param3 != null)
         {
            res["ticket"].txt.htmlText = taskInfo.cfg.rewardTicket + "<font color=\'#00CE30\'>" + param3 + "</font>";
         }
      }
      
      override public function destroy() : void
      {
         TipsManager.singleton.unbinding(res["exp"]["icon"]);
         TipsManager.singleton.unbinding(res["money"]["icon"]);
         TipsManager.singleton.unbinding(res["ticket"]["icon"]);
         super.destroy();
      }
   }
}
