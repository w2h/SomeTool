package tactic.executer
{
   import base.CommandExecuter;
   import tactic.model.data.TacticInfo;
   import serverProto.tactic.ProtoTacticInfo;
   import serverProto.tactic.ProtoTacticStanceInfo;
   import tactic.model.data.TacticPositionInfo;
   import bag.data.ItemData;
   import bag.conf.BagItemConf;
   
   public class TacticCodecExecuter extends CommandExecuter
   {
       
      public function TacticCodecExecuter(param1:String)
      {
         super(param1);
      }
      
      protected function decodeTacticInfo(param1:ProtoTacticInfo) : TacticInfo
      {
         var _loc3_:uint = 0;
         var _loc4_:ProtoTacticStanceInfo = null;
         var _loc5_:TacticPositionInfo = null;
         var _loc2_:TacticInfo = new TacticInfo();
         _loc2_.index = param1.index;
         _loc2_.name = param1.name;
         _loc2_.level = param1.level;
         _loc2_.levelUpReelCount = param1.levelUpNeedReelCount;
         _loc2_.levelUpHaveRellCount = param1.levelUpHaveReelCount;
         _loc2_.levelUpAvailable = param1.canLevelUp;
         _loc2_.reals = new Vector.<ItemData>();
         for each(_loc3_ in param1.itemIdList)
         {
            _loc2_.reals.push(BagItemConf.findDataById(_loc3_,false));
         }
         _loc2_.positions = new Vector.<TacticPositionInfo>();
         for each(_loc4_ in param1.stanceList)
         {
            _loc5_ = new TacticPositionInfo();
            _loc5_.index = _loc4_.pos;
            _loc5_.type = _loc4_.additionType;
            _loc5_.addition = _loc4_.additionVal;
            _loc5_.nextLevelAddtion = _loc4_.nextLevelAdditionVal;
            _loc2_.positions.push(_loc5_);
         }
         return _loc2_;
      }
   }
}
