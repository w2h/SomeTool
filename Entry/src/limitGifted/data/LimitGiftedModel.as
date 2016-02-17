package limitGifted.data
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import flash.utils.Dictionary;
   import serverProto.challengeTower.ProtoChallengeTowerInfo;
   import cfgData.dataStruct.LimitGiftedTalkLibCFG;
   import cfgData.CFGDataLibs;
   import cfgData.CFGDataEnum;
   import serverProto.challengeTower.ProtoChallengeTowerType;
   import cfgData.dataStruct.LimitGiftedConfigCFG;
   import cfgData.dataStruct.LimitGiftedCustomBattleCFG;
   import cfgData.dataStruct.LimitGiftedBattleStanceCFG;
   import serverProto.inc.ProtoItemInfo;
   import bag.utils.BagUtils;
   import def.ModelDef;
   
   public class LimitGiftedModel extends BaseModel
   {
       
      public var rdTalkLib:Dictionary;
      
      public var reqFightType:int;
      
      public var info:ProtoChallengeTowerInfo;
      
      public var battleEndFlag:Boolean;
      
      public var battleAward:Array;
      
      public var isFirstFighting:Boolean = false;
      
      public function LimitGiftedModel()
      {
         super(ModelDef.LIMITGIFTED);
      }
      
      public function getRdTalk(param1:int) : String
      {
         var _loc2_:Dictionary = null;
         var _loc3_:LimitGiftedTalkLibCFG = null;
         if(!this.rdTalkLib)
         {
            this.rdTalkLib = new Dictionary();
            _loc2_ = CFGDataLibs.getAllData(CFGDataEnum.ENUM_LimitGiftedTalkLibCFG);
            for each(_loc3_ in _loc2_)
            {
               if(!this.rdTalkLib[ProtoChallengeTowerType.POROT_CHALLENGE_TOWER_TYPE_QUICK])
               {
                  this.rdTalkLib[ProtoChallengeTowerType.POROT_CHALLENGE_TOWER_TYPE_QUICK] = [];
               }
               this.rdTalkLib[ProtoChallengeTowerType.POROT_CHALLENGE_TOWER_TYPE_QUICK].push(_loc3_.speedTalk);
               if(!this.rdTalkLib[ProtoChallengeTowerType.POROT_CHALLENGE_TOWER_TYPE_SURVIVE])
               {
                  this.rdTalkLib[ProtoChallengeTowerType.POROT_CHALLENGE_TOWER_TYPE_SURVIVE] = [];
               }
               this.rdTalkLib[ProtoChallengeTowerType.POROT_CHALLENGE_TOWER_TYPE_SURVIVE].push(_loc3_.aliveTalk);
               if(!this.rdTalkLib[ProtoChallengeTowerType.POROT_CHALLENGE_TOWER_TYPE_ATTACK])
               {
                  this.rdTalkLib[ProtoChallengeTowerType.POROT_CHALLENGE_TOWER_TYPE_ATTACK] = [];
               }
               this.rdTalkLib[ProtoChallengeTowerType.POROT_CHALLENGE_TOWER_TYPE_ATTACK].push(_loc3_.attackTalk);
            }
         }
         return this.rdTalkLib[param1][int(Math.random() * this.rdTalkLib[param1].length)];
      }
      
      public function getStageDiff(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:LimitGiftedConfigCFG = CFGDataLibs.getRowData(CFGDataEnum.ENUM_LimitGiftedConfigCFG,param1) as LimitGiftedConfigCFG;
         var _loc5_:LimitGiftedConfigCFG = CFGDataLibs.getRowData(CFGDataEnum.ENUM_LimitGiftedConfigCFG,param2) as LimitGiftedConfigCFG;
         return _loc5_.stage - _loc4_.stage;
      }
      
      public function resetBattleEndFlag() : void
      {
         this.info = null;
         this.battleEndFlag = false;
         this.battleAward = null;
      }
      
      public function getBattleStance(param1:int) : Array
      {
         var _loc4_:LimitGiftedCustomBattleCFG = null;
         var _loc5_:uint = 0;
         var _loc6_:LimitGiftedBattleStanceCFG = null;
         var _loc7_:* = 0;
         var _loc2_:Array = [];
         var _loc3_:uint = LimitGiftedConfigCFG(CFGDataLibs.getRowData(CFGDataEnum.ENUM_LimitGiftedConfigCFG,param1)).battleId;
         if(_loc3_)
         {
            _loc4_ = CFGDataLibs.getRowData(CFGDataEnum.ENUM_LimitGiftedCustomBattleCFG,_loc3_) as LimitGiftedCustomBattleCFG;
            if(_loc4_.enemyStance1)
            {
               _loc5_ = _loc4_.enemyStance1;
            }
            else if(_loc4_.enemyStance2)
            {
               _loc5_ = _loc4_.enemyStance2;
            }
            else if(_loc4_.enemyStance2)
            {
               _loc5_ = _loc4_.enemyStance3;
            }
            else
            {
               return [];
            }
            _loc6_ = CFGDataLibs.getRowData(CFGDataEnum.ENUM_LimitGiftedBattleStanceCFG,_loc5_) as LimitGiftedBattleStanceCFG;
            _loc7_ = 0;
            while(_loc7_ < 9)
            {
               _loc2_[_loc7_] = _loc6_["stance" + _loc7_];
               _loc7_++;
            }
            return _loc2_;
         }
         return [];
      }
      
      public function getAllStageAwardInfo(param1:int, param2:int) : Array
      {
         var _loc6_:LimitGiftedConfigCFG = null;
         var _loc7_:* = undefined;
         var _loc8_:Array = null;
         var _loc9_:Array = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:ProtoItemInfo = null;
         var _loc3_:Object = {};
         var _loc4_:Array = [];
         var _loc5_:Dictionary = CFGDataLibs.getAllData(CFGDataEnum.ENUM_LimitGiftedConfigCFG);
         for each(_loc6_ in _loc5_)
         {
            if(_loc6_.type == param1 && _loc6_.stage < _loc5_[param2].stage)
            {
               _loc8_ = [];
               _loc9_ = [];
               if(_loc6_.awardId && _loc6_.awardId.length > 0)
               {
                  _loc8_ = _loc6_.awardId.split(";");
               }
               if(_loc6_.awardNum && _loc6_.awardNum.length > 0)
               {
                  _loc9_ = _loc6_.awardNum.split(";");
               }
               _loc10_ = _loc8_.length;
               _loc11_ = 0;
               while(_loc11_ < _loc10_)
               {
                  if(_loc3_[_loc8_[_loc11_]])
                  {
                     _loc3_[_loc8_[_loc11_]] = _loc3_[_loc8_[_loc11_]] + int(_loc9_[_loc11_]);
                  }
                  else
                  {
                     _loc3_[_loc8_[_loc11_]] = int(_loc9_[_loc11_]);
                  }
                  _loc11_++;
               }
               _loc8_ = [];
               _loc9_ = [];
               if(_loc6_.awardSpId && _loc6_.awardSpId.length > 0)
               {
                  _loc8_ = _loc6_.awardSpId.split(";");
               }
               if(_loc6_.awardSpNum && _loc6_.awardSpNum.length > 0)
               {
                  _loc9_ = _loc6_.awardSpNum.split(";");
               }
               _loc10_ = _loc8_.length;
               _loc11_ = 0;
               while(_loc11_ < _loc10_)
               {
                  if(_loc3_[_loc8_[_loc11_]])
                  {
                     _loc3_[_loc8_[_loc11_]] = _loc3_[_loc8_[_loc11_]] + int(_loc9_[_loc11_]);
                  }
                  else
                  {
                     _loc3_[_loc8_[_loc11_]] = int(_loc9_[_loc11_]);
                  }
                  _loc11_++;
               }
               if(!_loc3_[BagUtils.MONEY_ID])
               {
                  _loc3_[BagUtils.MONEY_ID] = 0;
               }
               _loc3_[BagUtils.MONEY_ID] = _loc3_[BagUtils.MONEY_ID] + _loc6_.money;
            }
         }
         for(_loc7_ in _loc3_)
         {
            _loc12_ = new ProtoItemInfo();
            _loc12_.id = int(_loc7_);
            _loc12_.num = _loc3_[_loc7_];
            _loc4_.push(_loc12_);
         }
         _loc4_.sortOn("id");
         return _loc4_;
      }
   }
}
