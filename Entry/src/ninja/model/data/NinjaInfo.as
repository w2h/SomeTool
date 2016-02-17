package ninja.model.data
{
   import bag.data.EquipmentItemData;
   import cfgData.dataStruct.NinjaInfoCFG;
   import serverProto.formation.FormationType;
   import cfgData.dataStruct.SkillCFG;
   import cfgData.dataStruct.NinjaSkillCFG;
   import serverProto.inc.ProtoDiamondInfo;
   import serverProto.baseInfo.ProtoNinjaLegendConf;
   import skill.config.NinjaSkillConfig;
   
   public class NinjaInfo
   {
      
      public static const MAX_STAR_LEVEL:int = 4;
       
      public var sequence:int;
      
      public var id:uint;
      
      public var exp:uint;
      
      public var fullExp:uint;
      
      public var level:uint;
      
      public var levelUpgrade:uint;
      
      public var combat:uint;
      
      public var mood:uint;
      
      public var allAttribute:int;
      
      public var rolePromoteLevel:int;
      
      public var detail:ninja.model.data.NinjaDetailInfo;
      
      public var equipments:Vector.<EquipmentItemData>;
      
      public var awaken:ninja.model.data.NinjaAwakenInfo;
      
      public var cfg:NinjaInfoCFG;
      
      public var tryOutLeftCd:Number;
      
      public var vipFlag:int;
      
      public var secondAwakenLevel:int;
      
      public var secondAwakenItemInfos:Vector.<ninja.model.data.NinjaSecondAwakeItemInfo>;
      
      public var status:uint;
      
      public var ninjastate:uint;
      
      public var starLevel:uint;
      
      public var starUpgradeInfo:ninja.model.data.NinjaStarUpgradeInfo;
      
      public var expeditionHasFight:Boolean = false;
      
      public var propertyStrengthenInfoList:ninja.model.data.NinjaPropertyStrengthenInfoList;
      
      public var arenaWinFlag:Boolean;
      
      public var selected:Boolean;
      
      public var chakura:SkillCFG;
      
      public var majorSpecialSkill:int;
      
      public var inPractice:Boolean;
      
      public var isRushBuy:Boolean;
      
      public var originInfo:String;
      
      public var isOtherPlayer:Boolean = false;
      
      public var otherPlayerName:String;
      
      public var otherPlayerSkillCfg:NinjaSkillCFG;
      
      public var otherPlayerVipLevel:int;
      
      public var otherPlayerDiamondInfo:ProtoDiamondInfo;
      
      public var otherPlayerSvrId:uint;
      
      public var talentTipsType:uint;
      
      public var ninjaFavor:int;
      
      public var rumorInfo:ProtoNinjaLegendConf;
      
      public function NinjaInfo()
      {
         super();
      }
      
      public function get isInFormation() : Boolean
      {
         return Boolean(this.status & 1 << FormationType.DEFAULT_FORMATION);
      }
      
      public function checkIsInFormation(param1:uint = 0) : Boolean
      {
         return Boolean(this.status & 1 << param1);
      }
      
      public function get isPackage() : Boolean
      {
         if(this.ninjastate == 2)
         {
            return true;
         }
         return false;
      }
      
      public function get sortHp() : int
      {
         if(this.detail)
         {
            return this.detail.life;
         }
         return 0;
      }
      
      public function get ninjaSkillCFG() : NinjaSkillCFG
      {
         return NinjaSkillConfig.instance.getNinjaSkillCfg(this.id);
      }
      
      public function clone() : NinjaInfo
      {
         var _loc1_:NinjaInfo = new NinjaInfo();
         _loc1_.sequence = this.sequence;
         _loc1_.id = this.id;
         _loc1_.exp = this.exp;
         _loc1_.fullExp = this.fullExp;
         _loc1_.level = this.level;
         _loc1_.levelUpgrade = this.levelUpgrade;
         _loc1_.combat = this.combat;
         _loc1_.mood = this.mood;
         _loc1_.allAttribute = this.allAttribute;
         _loc1_.rolePromoteLevel = this.rolePromoteLevel;
         _loc1_.detail = this.detail.clone();
         _loc1_.equipments = this.equipments;
         _loc1_.awaken = this.awaken;
         _loc1_.cfg = this.cfg;
         _loc1_.status = this.status;
         _loc1_.ninjastate = this.ninjastate;
         _loc1_.starLevel = this.starLevel;
         _loc1_.starUpgradeInfo = this.starUpgradeInfo;
         _loc1_.propertyStrengthenInfoList = this.propertyStrengthenInfoList;
         _loc1_.selected = this.selected;
         _loc1_.chakura = this.chakura;
         _loc1_.majorSpecialSkill = this.majorSpecialSkill;
         _loc1_.inPractice = this.inPractice;
         _loc1_.isOtherPlayer = this.isOtherPlayer;
         _loc1_.otherPlayerName = this.otherPlayerName;
         _loc1_.otherPlayerSkillCfg = this.otherPlayerSkillCfg;
         _loc1_.rumorInfo = this.rumorInfo;
         _loc1_.ninjaFavor = this.ninjaFavor;
         _loc1_.secondAwakenItemInfos = this.secondAwakenItemInfos;
         _loc1_.secondAwakenLevel = this.secondAwakenLevel;
         return _loc1_;
      }
   }
}
