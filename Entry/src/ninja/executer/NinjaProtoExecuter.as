package ninja.executer
{
   import base.CommandExecuter;
   import team.data.TeamFormationNinja;
   import serverProto.formationBase.ProtoFormationInfo;
   import serverProto.formationBase.ProtoNinjaArrange;
   import ninja.model.data.FormationInfo;
   import com.tencent.morefun.framework.log.logger;
   import ninja.model.data.NinjaArrangeInfo;
   import ninja.model.data.NinjaHotkeyInfo;
   import serverProto.formationBase.ProtoNinjaShortKey;
   import ninja.model.data.NinjaInfo;
   import serverProto.baseInfo.ProtoNinjaInfo;
   import ninja.model.data.NinjaDetailInfo;
   import ninja.model.data.NinjaAwakenInfo;
   import ninja.model.data.NinjaStarUpgradeInfo;
   import flash.utils.getTimer;
   import user.data.NinjaInfoConfig;
   import serverProto.user.ProtoNinjaPropertyInfo;
   import ninja.model.data.NinjaPropertyInfo;
   import serverProto.user.ProtoNinjaPropertyComposeInfo;
   import bag.data.EquipmentItemData;
   import serverProto.bag.ProtoEquipInfo;
   import bag.utils.BagProtoParser;
   import bag.data.GemItemData;
   import serverProto.bag.ProtoJadeInfo;
   import bag.conf.BagItemConf;
   import ninja.model.data.NinjaAwakenItemInfo;
   import serverProto.baseInfo.ProtoAwakeItem;
   import ninja.model.data.NinjaSecondAwakeItemInfo;
   import serverProto.formationBase.ProtoSecondAwakeInfoList;
   import serverProto.formationBase.ProtoSecondAwakeInfo;
   import ninja.model.data.NinjaStarLevelDetailInfo;
   import serverProto.baseInfo.ProtoStarDetail;
   import ninja.model.data.NinjaPropertyStrengthenInfoList;
   import serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList;
   import ninja.model.data.NinjaPropertyStrengthenInfo;
   import serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;
   
   public class NinjaProtoExecuter extends CommandExecuter
   {
       
      public function NinjaProtoExecuter(param1:String)
      {
         super(param1);
      }
      
      public static function decodeFormationNinjas(param1:ProtoFormationInfo) : Vector.<TeamFormationNinja>
      {
         var _loc2_:TeamFormationNinja = null;
         var _loc3_:Vector.<TeamFormationNinja> = null;
         var _loc4_:ProtoNinjaArrange = null;
         if(!param1)
         {
            return null;
         }
         _loc3_ = new Vector.<TeamFormationNinja>();
         for each(_loc4_ in param1.ninja)
         {
            _loc2_ = new TeamFormationNinja();
            _loc2_.seq = _loc4_.ninjaSeq;
            _loc2_.ninjaId = _loc4_.ninjaId;
            _loc2_.hp = _loc4_.hp;
            _loc2_.position = _loc4_.location;
            _loc3_.push(_loc2_);
         }
         return _loc3_;
      }
      
      public function decodeFormationInfo(param1:ProtoFormationInfo, param2:FormationInfo = null) : FormationInfo
      {
         if(!param1)
         {
            return null;
         }
         logger.output("[prewarDebugTrace]","decodeFormationInfo",param1.id);
         var param2:FormationInfo = param2 || new FormationInfo();
         param2.id = param1.id;
         param2.arranges = this.decodeNinjaArrangeInfos(param1.ninja);
         param2.hotkey = this.decodeHotkey(param1.ninjaShortKey);
         param2.leadershipMax = param1.leadershipUlimit;
         param2.leadershipUsed = param1.leadershipConsumed;
         param2.maxFormationNum = param1.formationNinjaUlimit;
         param2.combat = param1.combatPower;
         param2.level = param1.level;
         return param2;
      }
      
      public function decodeNinjaArrangeInfos(param1:Array) : Vector.<NinjaArrangeInfo>
      {
         var _loc3_:NinjaArrangeInfo = null;
         var _loc4_:ProtoNinjaArrange = null;
         var _loc2_:Vector.<NinjaArrangeInfo> = new Vector.<NinjaArrangeInfo>();
         for each(_loc4_ in param1)
         {
            logger.output("[prewarDebugTrace]","decodeNinjaArrangeInfos",_loc4_.ninjaSeq);
            _loc3_ = new NinjaArrangeInfo();
            _loc3_.sequence = _loc4_.ninjaSeq;
            _loc3_.location = _loc4_.location;
            _loc3_.ninjaId = _loc4_.ninjaId;
            _loc3_.order = _loc4_.posQueue;
            _loc3_.life = _loc4_.hp;
            _loc3_.lifeMax = _loc4_.ulimitHp;
            _loc3_.level = _loc4_.ninjaLevel;
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function decodeHotkey(param1:ProtoNinjaShortKey, param2:NinjaHotkeyInfo = null) : NinjaHotkeyInfo
      {
         if(!param1)
         {
            return null;
         }
         logger.output("[prewarDebugTrace]","decodeHotkey");
         var param2:NinjaHotkeyInfo = param2 || new NinjaHotkeyInfo();
         param2.ninjaQ = param1.shortKey_0;
         param2.ninjaW = param1.shortKey_1;
         param2.ninjaE = param1.shortKey_2;
         param2.ninjaR = param1.shortKey_3;
         param2.ninjaT = param1.shortKey_4;
         return param2;
      }
      
      public function decodeNinjaInfos(param1:Array) : Vector.<NinjaInfo>
      {
         var _loc3_:NinjaInfo = null;
         var _loc4_:ProtoNinjaInfo = null;
         var _loc2_:Vector.<NinjaInfo> = new Vector.<NinjaInfo>();
         for each(_loc4_ in param1)
         {
            _loc3_ = this.decodeNinjaInfo(_loc4_);
            _loc3_ && _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function decodeNinjaInfo(param1:ProtoNinjaInfo, param2:NinjaInfo = null) : NinjaInfo
      {
         if(!param1)
         {
            return null;
         }
         logger.output("[prewarDebugTrace]","decodeNinjaInfo",param1.ninjaSequence);
         var param2:NinjaInfo = param2 || new NinjaInfo();
         param2.sequence = param1.ninjaSequence;
         param2.id = param1.ninjaId;
         param2.level = param1.level;
         param2.levelUpgrade = param1.awakenLevel;
         param2.exp = param1.exp;
         param2.fullExp = param1.fullExp;
         param2.mood = param1.mood;
         param2.combat = param1.combat;
         param2.allAttribute = param1.allProfitRatio;
         param2.rolePromoteLevel = param1.rolePromoteLevel;
         param2.ninjastate = param1.ninjaState;
         param2.starLevel = param1.starLevel;
         param2.expeditionHasFight = param1.expeditionHasFight == 0?false:true;
         param2.arenaWinFlag = Boolean(param1.arenaWinFlag);
         if(param1.detailInfo)
         {
            if(!param2.detail)
            {
               param2.detail = new NinjaDetailInfo();
            }
            param2.detail.birthPlace = param1.detailInfo.birthPlace;
            param2.detail.birthTime = param1.detailInfo.birthday;
            param2.detail.leadership = param1.detailInfo.leaderPower;
            this.decodeDetailProperties(param2.detail,param1.detailInfo.property);
         }
         param2.equipments = this.decodeEquips(param1.equipementInfo);
         param2.awaken = new NinjaAwakenInfo();
         param2.awaken.need_level = param1.awakeLevel;
         param2.awaken.itemInfoList = this.decodeAwakenItems(param1.awakeItemInfos);
         param2.awaken.max_awake_level = 20;
         if(param1.ninjaAwakeInfo)
         {
            param2.awaken.lifeBuff = param1.ninjaAwakeInfo.hpProfit;
            param2.awaken.attackBuff = param1.ninjaAwakeInfo.bodyAttackProfit;
            param2.awaken.defenseBuff = param1.ninjaAwakeInfo.bodyDefenseProfit;
            param2.awaken.ninjutsuBuff = param1.ninjaAwakeInfo.ninjaAttackProfit;
            param2.awaken.resistanceBuff = param1.ninjaAwakeInfo.ninjaDefenseProfit;
            param2.awaken.lifeGrowthBuff = param1.ninjaAwakeInfo.growthHpProfit;
            param2.awaken.attackGrowthBuff = param1.ninjaAwakeInfo.growthBodyAttackProfit;
            param2.awaken.defenceGrowthBuff = param1.ninjaAwakeInfo.growthBodyDefenseProfit;
            param2.awaken.ninjutsuGrowthBuff = param1.ninjaAwakeInfo.growthNinjaAttackProfit;
            param2.awaken.resistanceGrowthBuff = param1.ninjaAwakeInfo.growthNinjaDefenseProfit;
         }
         param2.starUpgradeInfo = new NinjaStarUpgradeInfo();
         param2.starUpgradeInfo.pieceNum = param1.ninjaPiecesCount;
         param2.starUpgradeInfo.needPieceNum = param1.upgradeStarPiecesNeed;
         param2.starUpgradeInfo.needMoney = param1.upgradeMoneyTongbiNeed;
         if(param1.hasNinjaStarInfo)
         {
            param2.starUpgradeInfo.pieceId = param1.ninjaStarInfo.ninjaPiecesId;
            param2.starUpgradeInfo.beginStarLevel = param1.ninjaStarInfo.beginStar;
            param2.starUpgradeInfo.starLevelDetailInfos = this.decodeStarLevelDetails(param1.ninjaStarInfo.starDetail);
         }
         if(param1.hasPropertyStrengthenInfo)
         {
            param2.propertyStrengthenInfoList = this.decodePropertyStrengthenInfoList(param1.propertyStrengthenInfo);
         }
         param2.ninjaFavor = param1.favour;
         if(param1.ninjaLegendConf)
         {
            param2.rumorInfo = param1.ninjaLegendConf;
         }
         param2.tryOutLeftCd = 0;
         if(param1.hasTryOutInfo)
         {
            param2.vipFlag = param1.tryOutInfo.vipFlag;
            param2.tryOutLeftCd = getTimer() + param1.tryOutInfo.leftMinutes * 60 * 1000;
         }
         param2.secondAwakenLevel = param1.secondAwakenLevel;
         param2.secondAwakenItemInfos = this.decodeSecondAwakenInfos(param1.secondAwakenInfoList);
         if(!param2.cfg)
         {
            param2.cfg = NinjaInfoConfig.getNinjaCfgInfo(param2.id);
         }
         return param2;
      }
      
      public function decodeDetailProperties(param1:NinjaDetailInfo, param2:ProtoNinjaPropertyInfo = null) : NinjaDetailInfo
      {
         if(!param2)
         {
            return null;
         }
         param1.life = param2.currentHp;
         param1.lifeMax = this.decodeComposeInfo(param1.lifeMax,param2.hpUlimit);
         param1.lifeMax.growth = param2.growthHp;
         param1.attack = this.decodeComposeInfo(param1.attack,param2.bodyAttack);
         param1.attack.growth = param2.growthBodyAttack;
         param1.defence = this.decodeComposeInfo(param1.defence,param2.bodyDefense);
         param1.defence.growth = param2.growthBodyDefense;
         param1.ninjutsu = this.decodeComposeInfo(param1.ninjutsu,param2.ninjaAttack);
         param1.ninjutsu.growth = param2.growthNinjaAttack;
         param1.resistance = this.decodeComposeInfo(param1.resistance,param2.ninjaDefense);
         param1.resistance.growth = param2.growthNinjaDefense;
         param1.critAttack = param2.critValue;
         param1.critHarm = param2.critDamageValue;
         param1.firstAttack = param2.speed;
         param1.continuousAttack = param2.comboValue;
         param1.control = param2.controlValue;
         param1.phyStrike = param2.bodyPenetrateValue;
         param1.ninpStrike = param2.ninjaPenetrateValue;
         param1.harmRemission = param2.damageReduceValue;
         param1.lifeRecover = param2.hpRestore;
         param1.fireResist = param2.fireResist;
         param1.windResist = param2.windResist;
         param1.thunderResist = param2.thunderResist;
         param1.earthResist = param2.earthResist;
         param1.waterResist = param2.waterResist;
         return param1;
      }
      
      public function decodeComposeInfo(param1:NinjaPropertyInfo, param2:ProtoNinjaPropertyComposeInfo = null) : NinjaPropertyInfo
      {
         if(!param2)
         {
            return null;
         }
         if(!param1)
         {
            var param1:NinjaPropertyInfo = new NinjaPropertyInfo();
         }
         param1.original = param2.original;
         param1.otherBuff = param2.other;
         param1.vipBuff = param2.vip;
         return param1;
      }
      
      public function decodeEquips(param1:Array) : Vector.<EquipmentItemData>
      {
         var _loc3_:EquipmentItemData = null;
         var _loc4_:ProtoEquipInfo = null;
         var _loc2_:Vector.<EquipmentItemData> = new Vector.<EquipmentItemData>();
         for each(_loc4_ in param1)
         {
            _loc3_ = BagProtoParser.parseEquipmentProto(_loc4_);
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function decodeInlays(param1:Array) : Vector.<GemItemData>
      {
         var _loc3_:GemItemData = null;
         var _loc4_:ProtoJadeInfo = null;
         var _loc2_:Vector.<GemItemData> = new Vector.<GemItemData>();
         for each(_loc4_ in param1)
         {
            _loc3_ = new GemItemData();
            _loc3_.id = _loc4_.id;
            _loc3_.num = _loc4_.num;
            _loc3_.exp = _loc4_.exp;
            _loc3_.isUltimate = _loc4_.isUltimate;
            BagItemConf.fillData(_loc3_);
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      private function decodeAwakenItems(param1:Array) : Vector.<NinjaAwakenItemInfo>
      {
         var _loc2_:Vector.<NinjaAwakenItemInfo> = null;
         var _loc3_:ProtoAwakeItem = null;
         if(param1)
         {
            _loc2_ = new Vector.<NinjaAwakenItemInfo>();
            for each(_loc3_ in param1)
            {
               _loc2_.push(new NinjaAwakenItemInfo(_loc3_.awakeNeedItemId,_loc3_.awakeNeedItemNum,_loc3_.awakeHaveItemNum));
            }
         }
         return _loc2_;
      }
      
      private function decodeSecondAwakenInfos(param1:ProtoSecondAwakeInfoList) : Vector.<NinjaSecondAwakeItemInfo>
      {
         var _loc3_:NinjaSecondAwakeItemInfo = null;
         var _loc4_:ProtoSecondAwakeInfo = null;
         var _loc2_:Vector.<NinjaSecondAwakeItemInfo> = new Vector.<NinjaSecondAwakeItemInfo>();
         if(param1 && param1.secondAwakenInfos)
         {
            for each(_loc4_ in param1.secondAwakenInfos)
            {
               _loc3_ = new NinjaSecondAwakeItemInfo();
               _loc3_.itemId = _loc4_.needItemId;
               _loc3_.needNum = _loc4_.needItemNum;
               _loc3_.hasNum = _loc4_.haveItemNum;
               _loc3_.curSkillId = _loc4_.curSkillId;
               _loc3_.grade = _loc4_.secondAwakenSkillGrade;
               _loc3_.allSkillId = _loc4_.allSkillId;
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      private function decodeStarLevelDetails(param1:Array) : Vector.<NinjaStarLevelDetailInfo>
      {
         var _loc2_:Vector.<NinjaStarLevelDetailInfo> = null;
         var _loc3_:NinjaStarLevelDetailInfo = null;
         var _loc4_:ProtoStarDetail = null;
         if(param1)
         {
            _loc2_ = new Vector.<NinjaStarLevelDetailInfo>();
            for each(_loc4_ in param1)
            {
               _loc3_ = new NinjaStarLevelDetailInfo();
               _loc3_.ninjaId = _loc4_.upgradeStarNinjaId;
               _loc3_.addBuff = _loc4_.starAddition;
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      private function decodePropertyStrengthenInfoList(param1:ProtoNinjaPropertyStrengthenInfoList) : NinjaPropertyStrengthenInfoList
      {
         var _loc2_:NinjaPropertyStrengthenInfoList = null;
         _loc2_ = new NinjaPropertyStrengthenInfoList();
         _loc2_.life = this.decodePropertyStrengthenInfo(param1.hp);
         _loc2_.attack = this.decodePropertyStrengthenInfo(param1.attack);
         _loc2_.defense = this.decodePropertyStrengthenInfo(param1.defense);
         _loc2_.ninjaAttack = this.decodePropertyStrengthenInfo(param1.ninjaAttack);
         _loc2_.ninjaDefense = this.decodePropertyStrengthenInfo(param1.ninjaDefense);
         return _loc2_;
      }
      
      private function decodePropertyStrengthenInfo(param1:ProtoNinjaPropertyStrengthenInfo) : NinjaPropertyStrengthenInfo
      {
         var _loc2_:NinjaPropertyStrengthenInfo = null;
         if(param1)
         {
            _loc2_ = new NinjaPropertyStrengthenInfo();
            _loc2_.level = param1.level;
            _loc2_.maxLevel = param1.maxLevel;
            _loc2_.needNinjaLevel = param1.needNinjaLevel;
            _loc2_.needItemNum = param1.needItemNum;
            _loc2_.currentBuff = param1.currentBuff;
            _loc2_.nextBuff = param1.nextBuff;
            _loc2_.strengthMaxNeedItemNum = param1.strengthMaxNeedItemNum;
         }
         return _loc2_;
      }
   }
}
