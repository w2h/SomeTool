package cfgData.dataStruct
{
   public class TaskTransferCFG
   {
       
      public var id:uint;
      
      public var name:String = "";
      
      public var type:int;
      
      public var state:int;
      
      public var hard:int;
      
      public var needLevel:int;
      
      public var prevId:uint;
      
      public var nextId:uint;
      
      public var autoReceive:Boolean;
      
      public var reward:uint;
      
      public var rewardExp:uint;
      
      public var rewardMoney:uint;
      
      public var rewardTicket:int;
      
      public var rewardByRobber:int;
      
      public var rewardBySupport:int;
      
      public var receiveDeductYuanbao:int;
      
      public var receiveType:int;
      
      public var receiveNpcName:String = "";
      
      public var receiveNpcDesc:String = "";
      
      public var receiveNpcId:uint;
      
      public var receiveNpcSceneId:uint;
      
      public var commitNpcName:String = "";
      
      public var commitNpcId:uint;
      
      public var commitNpcSceneId:uint;
      
      public var autoFinish:Boolean;
      
      public var canGiveup:Boolean;
      
      public var receiveBeforePlotId:uint;
      
      public var receiveAfterPlotId:uint;
      
      public var finishBeforePlotId:uint;
      
      public var finishAfterPlotId:uint;
      
      public var desc:String = "";
      
      public var receiveDialog:String = "";
      
      public var receivedDialog:String = "";
      
      public var commitDialog:String = "";
      
      public var conditionData1:String = "";
      
      public var conditionType1:int;
      
      public var conditionArg1:String = "";
      
      public var conditionNum1:int;
      
      public var conditionDesc1:String = "";
      
      public var conditionData2:String = "";
      
      public var conditionType2:int;
      
      public var conditionArg2:String = "";
      
      public var conditionNum2:int;
      
      public var conditionDesc2:String = "";
      
      public var conditionData3:String = "";
      
      public var conditionType3:int;
      
      public var conditionArg3:String = "";
      
      public var conditionNum3:int;
      
      public var conditionDesc3:String = "";
      
      public var pic:String = "";
      
      public var canImmediatelyFinish:Boolean;
      
      public var homeTaskDesc:String = "";
      
      public var homeNinjaSID:int;
      
      public function TaskTransferCFG()
      {
         super();
      }
   }
}
