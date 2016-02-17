package bag.utils
{
   import bag.data.CommonItemData;
   import serverProto.bag.ProtoCommonItemInfo;
   import bag.conf.BagItemConf;
   import bag.data.EquipmentItemData;
   import serverProto.bag.ProtoEquipInfo;
   import equipment.utils.EquipmentUtils;
   import bag.data.GemItemData;
   import serverProto.bag.ProtoJadeInfo;
   import serverProto.bag.ProtoBagStoneInfo;
   import bag.data.EquipFumoInfo;
   import serverProto.bag.ProtoEquipFumoInfo;
   import serverProto.bag.ProtoEquipFumoInlayInfo;
   import bag.data.EquipFumoInlayInfo;
   import bag.data.EquipFumoLevelAttr;
   import bag.data.CardItemData;
   import serverProto.bag.ProtoBagCardInfo;
   import bag.data.ItemData;
   import serverProto.bag.ProtoBagItemInfo;
   import bag.data.TaskItemData;
   import serverProto.bag.ProtoTaskItemInfo;
   import bag.data.BeastFragmentData;
   import serverProto.bag.ProtoBagSummonMonsterCardInfo;
   import bag.data.BeastRuneData;
   import serverProto.bag.ProtoBagRuneInfo;
   import bag.data.TreasureMapItemData;
   import serverProto.bag.ProtoBagTreasureMapInfo;
   import flash.geom.Point;
   
   public class BagProtoParser
   {
       
      public function BagProtoParser()
      {
         super();
         throw new Error(BagProtoParser + " can not be instantiated.");
      }
      
      public static function parseCommonItemProto(param1:ProtoCommonItemInfo, param2:int = 0) : CommonItemData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc3_:CommonItemData = new CommonItemData();
         _loc3_.id = param1.id;
         _loc3_.index = param2;
         _loc3_.num = param1.num;
         _loc3_.expireTime = new Date(param1.expiredTime * 1000);
         _loc3_.expireSeconds = param1.expiredRemainderSecond;
         BagItemConf.fillData(_loc3_);
         return _loc3_;
      }
      
      public static function parseEquipmentProto(param1:ProtoEquipInfo, param2:int = 0) : EquipmentItemData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc3_:EquipmentItemData = new EquipmentItemData();
         _loc3_.id = param1.id;
         _loc3_.sequenceId = param1.sequence.toString();
         _loc3_.index = param2;
         _loc3_.num = param1.num;
         _loc3_.level = param1.level;
         _loc3_.gems = parseGemsProto(param1.inlay);
         _loc3_.stones = parseEquipStoneItems(param1.inlayStone);
         _loc3_.forgeLevel = param1.forgeLevel;
         _loc3_.forgeLevelMax = EquipmentUtils.FORGE_MAX_LEVEL;
         _loc3_.forgePropVal1 = param1.forgeAttr[0];
         _loc3_.forgePropVal2 = param1.forgeAttr[1];
         _loc3_.forgePropVal3 = param1.forgeAttr[2];
         _loc3_.forgePropVal4 = param1.forgeAttr[3];
         _loc3_.forgePropVal5 = param1.forgeAttr[4];
         _loc3_.forgeQualityPercent1 = param1.forgeQualityAttr[0];
         _loc3_.forgeQualityPercent2 = param1.forgeQualityAttr[1];
         _loc3_.forgeQualityPercent3 = param1.forgeQualityAttr[2];
         _loc3_.forgeQualityPercent4 = param1.forgeQualityAttr[3];
         _loc3_.forgeQualityPercent5 = param1.forgeQualityAttr[4];
         _loc3_.forgeSurmountPercent1 = param1.forgeSurmount;
         _loc3_.forgeSurmountPercent2 = param1.forgeSurmount;
         _loc3_.forgeSurmountPercent3 = param1.forgeSurmount;
         _loc3_.forgeSurmountPercent4 = param1.forgeSurmount;
         _loc3_.forgeSurmountPercent5 = param1.forgeSurmount;
         _loc3_.fumoInfo = parseFumoProto(param1.protoFumoInfo);
         refreshForgeQualityValues(_loc3_);
         BagItemConf.fillData(_loc3_);
         return _loc3_;
      }
      
      public static function refreshForgeQualityValues(param1:EquipmentItemData) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.forgeQualityVal1 = calcForgeQualityValueByPercent(param1.forgePropVal1,param1.forgeQualityPercent1,param1.forgeSurmountPercent1);
         param1.forgeQualityVal2 = calcForgeQualityValueByPercent(param1.forgePropVal2,param1.forgeQualityPercent2,param1.forgeSurmountPercent2);
         param1.forgeQualityVal3 = calcForgeQualityValueByPercent(param1.forgePropVal3,param1.forgeQualityPercent3,param1.forgeSurmountPercent3);
         param1.forgeQualityVal4 = calcForgeQualityValueByPercent(param1.forgePropVal4,param1.forgeQualityPercent4,param1.forgeSurmountPercent4);
         param1.forgeQualityVal5 = calcForgeQualityValueByPercent(param1.forgePropVal5,param1.forgeQualityPercent5,param1.forgeSurmountPercent5);
      }
      
      private static function calcForgeQualityValueByPercent(param1:int, param2:int, param3:int) : int
      {
         if(param1 <= 0 || param2 <= 0)
         {
            return 0;
         }
         var _loc4_:int = param1 * (param2 + param3) / 100;
         return _loc4_ > 0?_loc4_:1;
      }
      
      private static function parseGemProto(param1:ProtoJadeInfo, param2:int = 0) : GemItemData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc3_:GemItemData = createGemItemData(param1.id,param1.num,param1.exp,param1.isUltimate,param2);
         BagItemConf.fillData(_loc3_);
         return _loc3_;
      }
      
      private static function parseStoneProto(param1:ProtoBagStoneInfo, param2:int = 0) : GemItemData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc3_:GemItemData = createGemItemData(param1.id,param1.num,param1.exp,param1.isUltimate,param2);
         BagItemConf.fillData(_loc3_);
         return _loc3_;
      }
      
      private static function createGemItemData(param1:uint, param2:int, param3:uint, param4:Boolean, param5:int = 0) : GemItemData
      {
         var _loc6_:GemItemData = new GemItemData();
         _loc6_.id = param1;
         _loc6_.index = param5;
         _loc6_.num = param2;
         _loc6_.exp = param3;
         _loc6_.isUltimate = param4;
         return _loc6_;
      }
      
      public static function parseFumoProto(param1:ProtoEquipFumoInfo) : EquipFumoInfo
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:ProtoEquipFumoInlayInfo = null;
         var _loc6_:EquipFumoInlayInfo = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:EquipFumoInfo = new EquipFumoInfo();
         _loc2_.fumoLevel = param1.fumoLevel;
         _loc2_.maxLevel = param1.maxLevel;
         _loc2_.tmpMaxLevel = param1.tmpMaxLevel;
         _loc2_.blessValue = param1.blessValue;
         _loc2_.maxBlessValue = param1.maxBlessValue;
         _loc2_.levelAttr = new EquipFumoLevelAttr();
         if(param1.levelAttr)
         {
            _loc2_.levelAttr.hp = param1.levelAttr.hp;
            _loc2_.levelAttr.bodyAttack = param1.levelAttr.bodyAttack;
            _loc2_.levelAttr.bodyDefense = param1.levelAttr.bodyDefense;
            _loc2_.levelAttr.ninjaAttack = param1.levelAttr.ninjaAttack;
            _loc2_.levelAttr.ninjaDefense = param1.levelAttr.ninjaDefense;
            _loc2_.levelAttr.speed = param1.levelAttr.speed;
            _loc2_.levelAttr.critValue = param1.levelAttr.critValue;
            _loc2_.levelAttr.critDamageValue = param1.levelAttr.critDamageValue;
            _loc2_.levelAttr.controlValue = param1.levelAttr.controlValue;
            _loc2_.levelAttr.comboValue = param1.levelAttr.comboValue;
            _loc2_.levelAttr.nowLevelBaseRate = param1.levelAttr.nowLevelBaseRate;
            _loc2_.levelAttr.nowLevelForgeRate = param1.levelAttr.nowLevelForgeRate;
            _loc2_.levelAttr.nextLevelBaseRate = param1.levelAttr.nextLevelBaseRate;
            _loc2_.levelAttr.nextLevelForgeRate = param1.levelAttr.nextLevelForgeRate;
         }
         _loc2_.inlayInfoAry = [];
         if(param1.inlayInfoAry)
         {
            _loc3_ = param1.inlayInfoAry.length;
            _loc4_ = 0;
            while(_loc4_ < 3)
            {
               _loc5_ = param1.inlayInfoAry[_loc4_];
               _loc6_ = new EquipFumoInlayInfo();
               if(_loc5_)
               {
                  _loc6_.jadeInfo = parseGemProto(_loc5_.protoJadeInfo);
                  if(_loc6_.jadeInfo)
                  {
                     _loc6_.jadeInfo.isFumoInlay = true;
                  }
                  _loc6_.stoneInfo = parseStoneProto(_loc5_.protoStoneInfo);
                  if(_loc6_.stoneInfo)
                  {
                     _loc6_.stoneInfo.isFumoInlay = true;
                  }
                  _loc6_.isOpen = _loc5_.isOpen;
               }
               _loc2_.inlayInfoAry.push(_loc6_);
               _loc4_++;
            }
         }
         return _loc2_;
      }
      
      public static function parseGemsProto(param1:Array) : Vector.<GemItemData>
      {
         var _loc3_:ProtoJadeInfo = null;
         var _loc5_:GemItemData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc4_:Vector.<GemItemData> = new Vector.<GemItemData>();
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = param1[_loc6_] as ProtoJadeInfo;
            _loc5_ = parseGemProto(_loc3_,_loc6_);
            _loc4_[_loc6_] = _loc5_;
            _loc6_++;
         }
         return _loc4_;
      }
      
      public static function parseCardProto(param1:ProtoBagCardInfo, param2:int = 0) : CardItemData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc3_:CardItemData = new CardItemData();
         _loc3_.id = param1.id;
         _loc3_.index = param2;
         _loc3_.num = param1.num;
         _loc3_.combat = param1.combat;
         _loc3_.state = param1.recruitStatus;
         BagItemConf.fillData(_loc3_);
         return _loc3_;
      }
      
      public static function parseItems(param1:Array) : Vector.<ItemData>
      {
         var _loc3_:ProtoBagItemInfo = null;
         var _loc4_:ItemData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = param1[_loc6_] as ProtoBagItemInfo;
            _loc4_ = null;
            if(_loc3_.hasCommonItemInfo)
            {
               _loc4_ = parseCommonItemProto(_loc3_.commonItemInfo,_loc6_);
            }
            else if(_loc3_.hasJadeInfo)
            {
               _loc4_ = parseGemProto(_loc3_.jadeInfo,_loc6_);
            }
            if(_loc4_ != null)
            {
               _loc5_.push(_loc4_);
            }
            _loc6_++;
         }
         return Vector.<ItemData>(_loc5_);
      }
      
      public static function parseStoneItems(param1:Array) : Vector.<ItemData>
      {
         var _loc3_:ProtoBagStoneInfo = null;
         var _loc4_:ItemData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = param1[_loc6_] as ProtoBagStoneInfo;
            _loc4_ = parseStoneProto(_loc3_,_loc6_);
            if(_loc4_ != null)
            {
               _loc5_.push(_loc4_);
            }
            _loc6_++;
         }
         return Vector.<ItemData>(_loc5_);
      }
      
      public static function parseEquipStoneItems(param1:Array) : Vector.<GemItemData>
      {
         var _loc3_:ProtoBagStoneInfo = null;
         var _loc4_:ItemData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = param1[_loc6_] as ProtoBagStoneInfo;
            _loc4_ = parseStoneProto(_loc3_,_loc6_);
            if(_loc4_ != null)
            {
               _loc5_.push(_loc4_);
            }
            _loc6_++;
         }
         return Vector.<GemItemData>(_loc5_);
      }
      
      public static function parseTaskItems(param1:Array) : Vector.<TaskItemData>
      {
         var _loc3_:ProtoTaskItemInfo = null;
         var _loc4_:TaskItemData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = param1[_loc6_] as ProtoTaskItemInfo;
            _loc4_ = parseTaskProto(_loc3_,_loc6_);
            _loc5_.push(_loc4_);
            _loc6_++;
         }
         return Vector.<TaskItemData>(_loc5_);
      }
      
      public static function parseEquipmentItems(param1:Array) : Vector.<EquipmentItemData>
      {
         var _loc3_:ProtoEquipInfo = null;
         var _loc4_:EquipmentItemData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = param1[_loc6_] as ProtoEquipInfo;
            _loc4_ = parseEquipmentProto(_loc3_,_loc6_);
            _loc5_.push(_loc4_);
            _loc6_++;
         }
         return Vector.<EquipmentItemData>(_loc5_);
      }
      
      public static function parseGems(param1:Array) : Vector.<GemItemData>
      {
         var _loc3_:ProtoJadeInfo = null;
         var _loc5_:GemItemData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc4_:Vector.<GemItemData> = new Vector.<GemItemData>();
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = param1[_loc6_] as ProtoJadeInfo;
            _loc5_ = parseGemProto(_loc3_,_loc6_);
            _loc4_[_loc6_] = _loc5_;
            _loc6_++;
         }
         return _loc4_;
      }
      
      public static function parseCardItems(param1:Array) : Vector.<CardItemData>
      {
         var _loc3_:ProtoBagCardInfo = null;
         var _loc4_:CardItemData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = param1[_loc6_] as ProtoBagCardInfo;
            _loc4_ = parseCardProto(_loc3_,_loc6_);
            _loc5_.push(_loc4_);
            _loc6_++;
         }
         return Vector.<CardItemData>(_loc5_);
      }
      
      public static function parseTaskProto(param1:ProtoTaskItemInfo, param2:int = 0) : TaskItemData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc3_:TaskItemData = new TaskItemData();
         _loc3_.id = param1.id;
         _loc3_.index = param2;
         _loc3_.num = param1.num;
         _loc3_.expireTime = new Date(param1.expiredTime * 1000);
         _loc3_.expireSeconds = param1.expiredRemainderSecond;
         BagItemConf.fillData(_loc3_);
         return _loc3_;
      }
      
      public static function parseBeastFragments(param1:Array) : Vector.<BeastFragmentData>
      {
         var _loc3_:ProtoBagSummonMonsterCardInfo = null;
         var _loc5_:BeastFragmentData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc4_:Vector.<BeastFragmentData> = new Vector.<BeastFragmentData>();
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = param1[_loc6_] as ProtoBagSummonMonsterCardInfo;
            _loc5_ = parseBeastFragment(_loc3_);
            _loc4_[_loc6_] = _loc5_;
            _loc6_++;
         }
         return _loc4_;
      }
      
      public static function parseBeastFragment(param1:ProtoBagSummonMonsterCardInfo) : BeastFragmentData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:BeastFragmentData = new BeastFragmentData();
         _loc2_.id = param1.id;
         _loc2_.num = param1.num;
         BagItemConf.fillData(_loc2_);
         return _loc2_;
      }
      
      public static function parseBeastRunes(param1:Array) : Vector.<BeastRuneData>
      {
         var _loc3_:ProtoBagRuneInfo = null;
         var _loc5_:BeastRuneData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc4_:Vector.<BeastRuneData> = new Vector.<BeastRuneData>();
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = param1[_loc6_] as ProtoBagRuneInfo;
            _loc5_ = parseBeastRune(_loc3_);
            _loc4_[_loc6_] = _loc5_;
            _loc6_++;
         }
         return _loc4_;
      }
      
      public static function parseBeastRune(param1:ProtoBagRuneInfo) : BeastRuneData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:BeastRuneData = new BeastRuneData();
         _loc2_.id = param1.id;
         _loc2_.index = param1.index;
         _loc2_.num = param1.num;
         _loc2_.exp = param1.exp;
         _loc2_.isUltimate = param1.isUltimate;
         BagItemConf.fillData(_loc2_);
         _loc2_.matExp = param1.composeExp;
         _loc2_.levelExp = param1.levelUpExp;
         return _loc2_;
      }
      
      public static function parseTreasureMaps(param1:Array) : Vector.<TreasureMapItemData>
      {
         var _loc3_:ProtoBagTreasureMapInfo = null;
         var _loc5_:TreasureMapItemData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc4_:Vector.<TreasureMapItemData> = new Vector.<TreasureMapItemData>();
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc3_ = param1[_loc6_] as ProtoBagTreasureMapInfo;
            _loc5_ = parseTreasureMap(_loc3_);
            _loc4_[_loc6_] = _loc5_;
            _loc6_++;
         }
         return _loc4_;
      }
      
      public static function parseTreasureMap(param1:ProtoBagTreasureMapInfo) : TreasureMapItemData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:TreasureMapItemData = new TreasureMapItemData();
         _loc2_.id = param1.id;
         _loc2_.index = param1.index;
         _loc2_.mapId = param1.mapId;
         _loc2_.position = new Point(param1.point.x,param1.point.y);
         _loc2_.roleId = 60000 + Math.ceil(Math.random() * 3);
         BagItemConf.fillData(_loc2_);
         return _loc2_;
      }
   }
}
