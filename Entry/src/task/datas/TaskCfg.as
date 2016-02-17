package task.datas
{
   public class TaskCfg
   {
       
      public var id:int;
      
      public var name:String;
      
      public var type:int;
      
      public var state:int;
      
      public var hard:int;
      
      public var needLevel:int;
      
      public var prevId:int;
      
      public var nextId:int;
      
      public var autoReceive:Boolean;
      
      public var reward:int;
      
      public var rewardExp:int;
      
      public var rewardMoney:int;
      
      public var rewardTicket:int;
      
      public var rewardByRobber:int;
      
      public var rewardBySupport:int;
      
      public var receiveDeductYuanbao:int;
      
      public var receiveType:int;
      
      public var receiveNpcId:int;
      
      public var receiveNpcSceneId:int;
      
      public var receiveNpcName:String;
      
      public var receiveNpcDesc:String;
      
      public var commitNpcName:String;
      
      public var commitNpcId:int;
      
      public var commitNpcSceneId:int;
      
      public var autoFinish:Boolean;
      
      public var canGiveUp:Boolean;
      
      public var receiveBeforePlotId:int;
      
      public var receiveAfterPlotId:int;
      
      public var finishBeforePlotId:int;
      
      public var finishAfterPlotId:int;
      
      public var desc:String;
      
      public var receiveDialog:String;
      
      public var receivedDialog:String;
      
      public var commitDialog:String;
      
      public var conditions:Array;
      
      public var pic:String;
      
      public var canImmediatelyFinish:Boolean;
      
      public var homeTaskDesc:String;
      
      public var homeNinjaSID:int;
      
      public function TaskCfg()
      {
         this.conditions = [];
         super();
      }
      
      public function setData(param1:*) : void
      {
         var _loc2_:TaskConditionCfg = null;
         this.id = param1.id;
         this.name = param1.name;
         this.type = param1.type;
         this.state = param1.state;
         this.hard = param1.hard;
         this.needLevel = param1.needLevel;
         this.prevId = param1.prevId;
         this.nextId = param1.nextId;
         this.autoReceive = param1.autoReceive;
         this.reward = param1.reward;
         this.rewardExp = param1.rewardExp;
         this.rewardMoney = param1.rewardMoney;
         this.rewardTicket = param1.rewardTicket;
         this.rewardByRobber = param1.rewardByRobber;
         this.rewardBySupport = param1.rewardBySupport;
         this.receiveDeductYuanbao = param1.receiveDeductYuanbao;
         this.receiveType = param1.receiveType;
         this.receiveNpcName = param1.receiveNpcName;
         this.receiveNpcDesc = param1.receiveNpcDesc;
         this.receiveNpcId = param1.receiveNpcId;
         this.receiveNpcSceneId = param1.receiveNpcSceneId;
         this.commitNpcName = param1.commitNpcName;
         this.commitNpcId = param1.commitNpcId;
         this.commitNpcSceneId = param1.commitNpcSceneId;
         this.autoFinish = param1.autoFinish;
         this.canGiveUp = param1.canGiveup;
         this.receiveBeforePlotId = param1.receiveBeforePlotId;
         this.receiveAfterPlotId = param1.receiveAfterPlotId;
         this.finishBeforePlotId = param1.finishBeforePlotId;
         this.finishAfterPlotId = param1.finishAfterPlotId;
         this.desc = param1.desc;
         this.receiveDialog = param1.receiveDialog;
         this.receivedDialog = param1.receivedDialog;
         this.commitDialog = param1.commitDialog;
         this.conditions.length = 0;
         if(param1.conditionType1)
         {
            _loc2_ = new TaskConditionCfg();
            _loc2_.type = param1.conditionType1;
            _loc2_.data = param1.conditionData1;
            _loc2_.args = param1.conditionArg1;
            _loc2_.num = param1.conditionNum1;
            _loc2_.text = param1.conditionDesc1;
            this.conditions.push(_loc2_);
         }
         if(param1.conditionType2)
         {
            _loc2_ = new TaskConditionCfg();
            _loc2_.type = param1.conditionType2;
            _loc2_.data = param1.conditionData2;
            _loc2_.args = param1.conditionArg2;
            _loc2_.num = param1.conditionNum2;
            _loc2_.text = param1.conditionDesc2;
            this.conditions.push(_loc2_);
         }
         if(param1.conditionType3)
         {
            _loc2_ = new TaskConditionCfg();
            _loc2_.type = param1.conditionType3;
            _loc2_.data = param1.conditionData3;
            _loc2_.args = param1.conditionArg3;
            _loc2_.num = param1.conditionNum3;
            _loc2_.text = param1.conditionDesc3;
            this.conditions.push(_loc2_);
         }
         this.pic = param1.pic;
         this.canImmediatelyFinish = param1.canImmediatelyFinish;
         this.homeTaskDesc = param1.homeTaskDesc;
         this.homeNinjaSID = param1.homeNinjaSID;
      }
   }
}
