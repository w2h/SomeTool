package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.bag.ProtoEquipInfo;
   import serverProto.formationBase.ProtoSecondAwakeInfoList;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaInfo extends Message
   {
      
      public static const NINJA_SEQUENCE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.ninja_sequence","ninjaSequence",1 << 3 | WireType.VARINT);
      
      public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.ninja_id","ninjaId",2 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.level","level",3 << 3 | WireType.VARINT);
      
      public static const NINJA_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.ninja_state","ninjaState",4 << 3 | WireType.VARINT);
      
      public static const DETAIL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.detail_info","detailInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaDetailInfo);
      
      public static const EQUIPEMENT_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.equipement_info","equipementInfo",6 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipInfo);
      
      public static const AWAKEN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.awaken_level","awakenLevel",7 << 3 | WireType.VARINT);
      
      public static const NINJA_AWAKE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.ninja_awake_info","ninjaAwakeInfo",8 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaAwake);
      
      public static const EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.exp","exp",9 << 3 | WireType.VARINT);
      
      public static const FULL_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.full_exp","fullExp",10 << 3 | WireType.VARINT);
      
      public static const COMBAT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.combat","combat",11 << 3 | WireType.VARINT);
      
      public static const MOOD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.mood","mood",12 << 3 | WireType.VARINT);
      
      public static const ALL_PROFIT_RATIO:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaInfo.all_profit_ratio","allProfitRatio",13 << 3 | WireType.VARINT);
      
      public static const ROLE_PROMOTE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaInfo.role_promote_level","rolePromoteLevel",14 << 3 | WireType.VARINT);
      
      public static const STAR_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaInfo.star_level","starLevel",15 << 3 | WireType.VARINT);
      
      public static const NINJA_STAR_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.ninja_star_info","ninjaStarInfo",16 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaStarInfo);
      
      public static const AWAKE_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.awake_level","awakeLevel",17 << 3 | WireType.VARINT);
      
      public static const AWAKE_ITEM_INFOS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.awake_item_infos","awakeItemInfos",18 << 3 | WireType.LENGTH_DELIMITED,ProtoAwakeItem);
      
      public static const NINJA_PIECES_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.ninja_pieces_count","ninjaPiecesCount",19 << 3 | WireType.VARINT);
      
      public static const UPGRADE_STAR_PIECES_NEED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.upgrade_star_pieces_need","upgradeStarPiecesNeed",20 << 3 | WireType.VARINT);
      
      public static const UPGRADE_MONEY_TONGBI_NEED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.upgrade_money_tongbi_need","upgradeMoneyTongbiNeed",21 << 3 | WireType.VARINT);
      
      public static const PROPERTY_STRENGTHEN_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.property_strengthen_info","propertyStrengthenInfo",22 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPropertyStrengthenInfoList);
      
      public static const EXPEDITION_HAS_FIGHT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.expedition_has_fight","expeditionHasFight",23 << 3 | WireType.VARINT);
      
      public static const ARENA_WIN_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.arena_win_flag","arenaWinFlag",24 << 3 | WireType.VARINT);
      
      public static const TRY_OUT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.try_out_info","tryOutInfo",25 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaTryOut);
      
      public static const FAVOUR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaInfo.favour","favour",26 << 3 | WireType.VARINT);
      
      public static const NINJA_LEGEND_CONF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.ninja_legend_conf","ninjaLegendConf",27 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaLegendConf);
      
      public static const SECOND_AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaInfo.second_awaken_level","secondAwakenLevel",28 << 3 | WireType.VARINT);
      
      public static const SECOND_AWAKEN_INFO_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaInfo.second_awaken_info_list","secondAwakenInfoList",29 << 3 | WireType.LENGTH_DELIMITED,ProtoSecondAwakeInfoList);
       
      public var ninjaSequence:uint;
      
      public var ninjaId:uint;
      
      public var level:uint;
      
      public var ninjaState:uint;
      
      private var detail_info$field:serverProto.baseInfo.ProtoNinjaDetailInfo;
      
      [ArrayElementType("serverProto.bag.ProtoEquipInfo")]
      public var equipementInfo:Array;
      
      private var awaken_level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var ninja_awake_info$field:serverProto.baseInfo.ProtoNinjaAwake;
      
      private var exp$field:uint;
      
      private var full_exp$field:uint;
      
      private var combat$field:uint;
      
      private var mood$field:uint;
      
      private var all_profit_ratio$field:int;
      
      private var role_promote_level$field:int;
      
      private var star_level$field:int;
      
      private var ninja_star_info$field:serverProto.baseInfo.ProtoNinjaStarInfo;
      
      private var awake_level$field:uint;
      
      [ArrayElementType("serverProto.baseInfo.ProtoAwakeItem")]
      public var awakeItemInfos:Array;
      
      private var ninja_pieces_count$field:uint;
      
      private var upgrade_star_pieces_need$field:uint;
      
      private var upgrade_money_tongbi_need$field:uint;
      
      private var property_strengthen_info$field:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList;
      
      private var expedition_has_fight$field:uint;
      
      private var arena_win_flag$field:uint;
      
      private var try_out_info$field:serverProto.baseInfo.ProtoNinjaTryOut;
      
      private var favour$field:uint;
      
      private var ninja_legend_conf$field:serverProto.baseInfo.ProtoNinjaLegendConf;
      
      private var second_awaken_level$field:int;
      
      private var second_awaken_info_list$field:ProtoSecondAwakeInfoList;
      
      public function ProtoNinjaInfo()
      {
         this.equipementInfo = [];
         this.awakeItemInfos = [];
         super();
      }
      
      public function clearDetailInfo() : void
      {
         this.detail_info$field = null;
      }
      
      public function get hasDetailInfo() : Boolean
      {
         return this.detail_info$field != null;
      }
      
      public function set detailInfo(param1:serverProto.baseInfo.ProtoNinjaDetailInfo) : void
      {
         this.detail_info$field = param1;
      }
      
      public function get detailInfo() : serverProto.baseInfo.ProtoNinjaDetailInfo
      {
         return this.detail_info$field;
      }
      
      public function clearAwakenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.awaken_level$field = new uint();
      }
      
      public function get hasAwakenLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set awakenLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.awaken_level$field = param1;
      }
      
      public function get awakenLevel() : uint
      {
         return this.awaken_level$field;
      }
      
      public function clearNinjaAwakeInfo() : void
      {
         this.ninja_awake_info$field = null;
      }
      
      public function get hasNinjaAwakeInfo() : Boolean
      {
         return this.ninja_awake_info$field != null;
      }
      
      public function set ninjaAwakeInfo(param1:serverProto.baseInfo.ProtoNinjaAwake) : void
      {
         this.ninja_awake_info$field = param1;
      }
      
      public function get ninjaAwakeInfo() : serverProto.baseInfo.ProtoNinjaAwake
      {
         return this.ninja_awake_info$field;
      }
      
      public function clearExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.exp$field = new uint();
      }
      
      public function get hasExp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set exp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.exp$field = param1;
      }
      
      public function get exp() : uint
      {
         return this.exp$field;
      }
      
      public function clearFullExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.full_exp$field = new uint();
      }
      
      public function get hasFullExp() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set fullExp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.full_exp$field = param1;
      }
      
      public function get fullExp() : uint
      {
         return this.full_exp$field;
      }
      
      public function clearCombat() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.combat$field = new uint();
      }
      
      public function get hasCombat() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set combat(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.combat$field = param1;
      }
      
      public function get combat() : uint
      {
         return this.combat$field;
      }
      
      public function clearMood() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.mood$field = new uint();
      }
      
      public function get hasMood() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set mood(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.mood$field = param1;
      }
      
      public function get mood() : uint
      {
         return this.mood$field;
      }
      
      public function clearAllProfitRatio() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.all_profit_ratio$field = new int();
      }
      
      public function get hasAllProfitRatio() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set allProfitRatio(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.all_profit_ratio$field = param1;
      }
      
      public function get allProfitRatio() : int
      {
         return this.all_profit_ratio$field;
      }
      
      public function clearRolePromoteLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.role_promote_level$field = new int();
      }
      
      public function get hasRolePromoteLevel() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set rolePromoteLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.role_promote_level$field = param1;
      }
      
      public function get rolePromoteLevel() : int
      {
         return this.role_promote_level$field;
      }
      
      public function clearStarLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.star_level$field = new int();
      }
      
      public function get hasStarLevel() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set starLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.star_level$field = param1;
      }
      
      public function get starLevel() : int
      {
         return this.star_level$field;
      }
      
      public function clearNinjaStarInfo() : void
      {
         this.ninja_star_info$field = null;
      }
      
      public function get hasNinjaStarInfo() : Boolean
      {
         return this.ninja_star_info$field != null;
      }
      
      public function set ninjaStarInfo(param1:serverProto.baseInfo.ProtoNinjaStarInfo) : void
      {
         this.ninja_star_info$field = param1;
      }
      
      public function get ninjaStarInfo() : serverProto.baseInfo.ProtoNinjaStarInfo
      {
         return this.ninja_star_info$field;
      }
      
      public function clearAwakeLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.awake_level$field = new uint();
      }
      
      public function get hasAwakeLevel() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set awakeLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.awake_level$field = param1;
      }
      
      public function get awakeLevel() : uint
      {
         return this.awake_level$field;
      }
      
      public function clearNinjaPiecesCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.ninja_pieces_count$field = new uint();
      }
      
      public function get hasNinjaPiecesCount() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set ninjaPiecesCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.ninja_pieces_count$field = param1;
      }
      
      public function get ninjaPiecesCount() : uint
      {
         return this.ninja_pieces_count$field;
      }
      
      public function clearUpgradeStarPiecesNeed() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.upgrade_star_pieces_need$field = new uint();
      }
      
      public function get hasUpgradeStarPiecesNeed() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set upgradeStarPiecesNeed(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.upgrade_star_pieces_need$field = param1;
      }
      
      public function get upgradeStarPiecesNeed() : uint
      {
         return this.upgrade_star_pieces_need$field;
      }
      
      public function clearUpgradeMoneyTongbiNeed() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.upgrade_money_tongbi_need$field = new uint();
      }
      
      public function get hasUpgradeMoneyTongbiNeed() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set upgradeMoneyTongbiNeed(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.upgrade_money_tongbi_need$field = param1;
      }
      
      public function get upgradeMoneyTongbiNeed() : uint
      {
         return this.upgrade_money_tongbi_need$field;
      }
      
      public function clearPropertyStrengthenInfo() : void
      {
         this.property_strengthen_info$field = null;
      }
      
      public function get hasPropertyStrengthenInfo() : Boolean
      {
         return this.property_strengthen_info$field != null;
      }
      
      public function set propertyStrengthenInfo(param1:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList) : void
      {
         this.property_strengthen_info$field = param1;
      }
      
      public function get propertyStrengthenInfo() : serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList
      {
         return this.property_strengthen_info$field;
      }
      
      public function clearExpeditionHasFight() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.expedition_has_fight$field = new uint();
      }
      
      public function get hasExpeditionHasFight() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set expeditionHasFight(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.expedition_has_fight$field = param1;
      }
      
      public function get expeditionHasFight() : uint
      {
         return this.expedition_has_fight$field;
      }
      
      public function clearArenaWinFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.arena_win_flag$field = new uint();
      }
      
      public function get hasArenaWinFlag() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set arenaWinFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.arena_win_flag$field = param1;
      }
      
      public function get arenaWinFlag() : uint
      {
         return this.arena_win_flag$field;
      }
      
      public function clearTryOutInfo() : void
      {
         this.try_out_info$field = null;
      }
      
      public function get hasTryOutInfo() : Boolean
      {
         return this.try_out_info$field != null;
      }
      
      public function set tryOutInfo(param1:serverProto.baseInfo.ProtoNinjaTryOut) : void
      {
         this.try_out_info$field = param1;
      }
      
      public function get tryOutInfo() : serverProto.baseInfo.ProtoNinjaTryOut
      {
         return this.try_out_info$field;
      }
      
      public function clearFavour() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294950911E9;
         this.favour$field = new uint();
      }
      
      public function get hasFavour() : Boolean
      {
         return (this.hasField$0 & 16384) != 0;
      }
      
      public function set favour(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16384;
         this.favour$field = param1;
      }
      
      public function get favour() : uint
      {
         return this.favour$field;
      }
      
      public function clearNinjaLegendConf() : void
      {
         this.ninja_legend_conf$field = null;
      }
      
      public function get hasNinjaLegendConf() : Boolean
      {
         return this.ninja_legend_conf$field != null;
      }
      
      public function set ninjaLegendConf(param1:serverProto.baseInfo.ProtoNinjaLegendConf) : void
      {
         this.ninja_legend_conf$field = param1;
      }
      
      public function get ninjaLegendConf() : serverProto.baseInfo.ProtoNinjaLegendConf
      {
         return this.ninja_legend_conf$field;
      }
      
      public function clearSecondAwakenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294934527E9;
         this.second_awaken_level$field = new int();
      }
      
      public function get hasSecondAwakenLevel() : Boolean
      {
         return (this.hasField$0 & 32768) != 0;
      }
      
      public function set secondAwakenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32768;
         this.second_awaken_level$field = param1;
      }
      
      public function get secondAwakenLevel() : int
      {
         return this.second_awaken_level$field;
      }
      
      public function clearSecondAwakenInfoList() : void
      {
         this.second_awaken_info_list$field = null;
      }
      
      public function get hasSecondAwakenInfoList() : Boolean
      {
         return this.second_awaken_info_list$field != null;
      }
      
      public function set secondAwakenInfoList(param1:ProtoSecondAwakeInfoList) : void
      {
         this.second_awaken_info_list$field = param1;
      }
      
      public function get secondAwakenInfoList() : ProtoSecondAwakeInfoList
      {
         return this.second_awaken_info_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaSequence);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaId);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.level);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaState);
         if(this.hasDetailInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.detail_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.equipementInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.equipementInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasAwakenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.awaken_level$field);
         }
         if(this.hasNinjaAwakeInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_awake_info$field);
         }
         if(this.hasExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.exp$field);
         }
         if(this.hasFullExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.full_exp$field);
         }
         if(this.hasCombat)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.combat$field);
         }
         if(this.hasMood)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.mood$field);
         }
         if(this.hasAllProfitRatio)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_SINT32(param1,this.all_profit_ratio$field);
         }
         if(this.hasRolePromoteLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_SINT32(param1,this.role_promote_level$field);
         }
         if(this.hasStarLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_SINT32(param1,this.star_level$field);
         }
         if(this.hasNinjaStarInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,16);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_star_info$field);
         }
         if(this.hasAwakeLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,17);
            WriteUtils.write$TYPE_UINT32(param1,this.awake_level$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.awakeItemInfos.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,18);
            WriteUtils.write$TYPE_MESSAGE(param1,this.awakeItemInfos[_loc3_]);
            _loc3_++;
         }
         if(this.hasNinjaPiecesCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,19);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_pieces_count$field);
         }
         if(this.hasUpgradeStarPiecesNeed)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,20);
            WriteUtils.write$TYPE_UINT32(param1,this.upgrade_star_pieces_need$field);
         }
         if(this.hasUpgradeMoneyTongbiNeed)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,21);
            WriteUtils.write$TYPE_UINT32(param1,this.upgrade_money_tongbi_need$field);
         }
         if(this.hasPropertyStrengthenInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,22);
            WriteUtils.write$TYPE_MESSAGE(param1,this.property_strengthen_info$field);
         }
         if(this.hasExpeditionHasFight)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,23);
            WriteUtils.write$TYPE_UINT32(param1,this.expedition_has_fight$field);
         }
         if(this.hasArenaWinFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,24);
            WriteUtils.write$TYPE_UINT32(param1,this.arena_win_flag$field);
         }
         if(this.hasTryOutInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,25);
            WriteUtils.write$TYPE_MESSAGE(param1,this.try_out_info$field);
         }
         if(this.hasFavour)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,26);
            WriteUtils.write$TYPE_UINT32(param1,this.favour$field);
         }
         if(this.hasNinjaLegendConf)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,27);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_legend_conf$field);
         }
         if(this.hasSecondAwakenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,28);
            WriteUtils.write$TYPE_SINT32(param1,this.second_awaken_level$field);
         }
         if(this.hasSecondAwakenInfoList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,29);
            WriteUtils.write$TYPE_MESSAGE(param1,this.second_awaken_info_list$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 29, Size: 29)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
