package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoPoint;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPlayerInfo extends Message
   {
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoPlayerInfo.player_key","playerKey",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const ROLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.role_id","roleId",2 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoPlayerInfo.name","name",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const NINJIA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.ninjia","ninjia",4 << 3 | WireType.VARINT);
      
      public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoPlayerInfo.location","location",5 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
      
      public static const DIRECTION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.direction","direction",6 << 3 | WireType.VARINT);
      
      public static const MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.money","money",7 << 3 | WireType.VARINT);
      
      public static const YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.yuanbao","yuanbao",8 << 3 | WireType.VARINT);
      
      public static const DIANQUAN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.dianquan","dianquan",9 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.level","level",10 << 3 | WireType.VARINT);
      
      public static const HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.hp","hp",11 << 3 | WireType.VARINT);
      
      public static const MAX_HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.max_hp","maxHp",12 << 3 | WireType.VARINT);
      
      public static const KATHA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.katha","katha",13 << 3 | WireType.VARINT);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.combat_power","combatPower",14 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.exp","exp",15 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfo.role_category","roleCategory",16 << 3 | WireType.VARINT);
      
      public static const STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.strength","strength",17 << 3 | WireType.VARINT);
      
      public static const MAX_STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.max_strength","maxStrength",18 << 3 | WireType.VARINT);
      
      public static const CAN_REACH_MAX_STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.can_reach_max_strength","canReachMaxStrength",19 << 3 | WireType.VARINT);
      
      public static const BUY_STRENGTH_GOLD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfo.buy_strength_gold","buyStrengthGold",20 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoPlayerInfo.vip_level","vipLevel",21 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const VIP_EXPIRED_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.vip_expired_time","vipExpiredTime",22 << 3 | WireType.VARINT);
      
      public static const VIP_REMAINDER_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.vip_remainder_day","vipRemainderDay",23 << 3 | WireType.VARINT);
      
      public static const SHOW_NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfo.show_ninja_id","showNinjaId",24 << 3 | WireType.VARINT);
      
      public static const CHOSED_TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.chosed_title_id","chosedTitleId",25 << 3 | WireType.VARINT);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoPlayerInfo.diamond_info","diamondInfo",26 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const IS_GM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfo.is_gm","isGm",27 << 3 | WireType.VARINT);
      
      public static const TASK_SIGN:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoPlayerInfo.task_sign","taskSign",28 << 3 | WireType.VARINT,ProtoTaskSign);
      
      public static const FASHION_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfo.fashion_ninja","fashionNinja",29 << 3 | WireType.VARINT);
      
      public static const EXTRA_SHOW_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoPlayerInfo.extra_show_info","extraShowInfo",30 << 3 | WireType.LENGTH_DELIMITED,ProtoExtraShowInfo);
       
      private var player_key$field:ProtoPlayerKey;
      
      private var role_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var name$field:String;
      
      private var ninjia$field:uint;
      
      private var location$field:ProtoPoint;
      
      private var direction$field:uint;
      
      private var money$field:uint;
      
      private var yuanbao$field:uint;
      
      private var dianquan$field:uint;
      
      private var level$field:uint;
      
      private var hp$field:uint;
      
      private var max_hp$field:uint;
      
      private var katha$field:uint;
      
      private var combat_power$field:uint;
      
      private var exp$field:uint;
      
      private var role_category$field:int;
      
      private var strength$field:uint;
      
      private var max_strength$field:uint;
      
      private var can_reach_max_strength$field:uint;
      
      private var buy_strength_gold$field:int;
      
      private var vip_level$field:int;
      
      private var vip_expired_time$field:uint;
      
      private var vip_remainder_day$field:uint;
      
      private var show_ninja_id$field:int;
      
      private var chosed_title_id$field:uint;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var is_gm$field:int;
      
      private var task_sign$field:int;
      
      private var fashion_ninja$field:int;
      
      private var extra_show_info$field:serverProto.user.ProtoExtraShowInfo;
      
      public function ProtoPlayerInfo()
      {
         super();
      }
      
      public function clearPlayerKey() : void
      {
         this.player_key$field = null;
      }
      
      public function get hasPlayerKey() : Boolean
      {
         return this.player_key$field != null;
      }
      
      public function set playerKey(param1:ProtoPlayerKey) : void
      {
         this.player_key$field = param1;
      }
      
      public function get playerKey() : ProtoPlayerKey
      {
         return this.player_key$field;
      }
      
      public function clearRoleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.role_id$field = new uint();
      }
      
      public function get hasRoleId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set roleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.role_id$field = param1;
      }
      
      public function get roleId() : uint
      {
         return this.role_id$field;
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearNinjia() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.ninjia$field = new uint();
      }
      
      public function get hasNinjia() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set ninjia(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.ninjia$field = param1;
      }
      
      public function get ninjia() : uint
      {
         return this.ninjia$field;
      }
      
      public function clearLocation() : void
      {
         this.location$field = null;
      }
      
      public function get hasLocation() : Boolean
      {
         return this.location$field != null;
      }
      
      public function set location(param1:ProtoPoint) : void
      {
         this.location$field = param1;
      }
      
      public function get location() : ProtoPoint
      {
         return this.location$field;
      }
      
      public function clearDirection() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.direction$field = new uint();
      }
      
      public function get hasDirection() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set direction(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.direction$field = param1;
      }
      
      public function get direction() : uint
      {
         return this.direction$field;
      }
      
      public function clearMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.money$field = new uint();
      }
      
      public function get hasMoney() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set money(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.money$field = param1;
      }
      
      public function get money() : uint
      {
         return this.money$field;
      }
      
      public function clearYuanbao() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.yuanbao$field = new uint();
      }
      
      public function get hasYuanbao() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set yuanbao(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.yuanbao$field = param1;
      }
      
      public function get yuanbao() : uint
      {
         return this.yuanbao$field;
      }
      
      public function clearDianquan() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.dianquan$field = new uint();
      }
      
      public function get hasDianquan() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set dianquan(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.dianquan$field = param1;
      }
      
      public function get dianquan() : uint
      {
         return this.dianquan$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.level$field = new uint();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set level(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.level$field = param1;
      }
      
      public function get level() : uint
      {
         return this.level$field;
      }
      
      public function clearHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.hp$field = new uint();
      }
      
      public function get hasHp() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set hp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.hp$field = param1;
      }
      
      public function get hp() : uint
      {
         return this.hp$field;
      }
      
      public function clearMaxHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.max_hp$field = new uint();
      }
      
      public function get hasMaxHp() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set maxHp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.max_hp$field = param1;
      }
      
      public function get maxHp() : uint
      {
         return this.max_hp$field;
      }
      
      public function clearKatha() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.katha$field = new uint();
      }
      
      public function get hasKatha() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set katha(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.katha$field = param1;
      }
      
      public function get katha() : uint
      {
         return this.katha$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.combat_power$field = new uint();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set combatPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : uint
      {
         return this.combat_power$field;
      }
      
      public function clearExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.exp$field = new uint();
      }
      
      public function get hasExp() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set exp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.exp$field = param1;
      }
      
      public function get exp() : uint
      {
         return this.exp$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.role_category$field = new int();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set roleCategory(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : int
      {
         return this.role_category$field;
      }
      
      public function clearStrength() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.strength$field = new uint();
      }
      
      public function get hasStrength() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set strength(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.strength$field = param1;
      }
      
      public function get strength() : uint
      {
         return this.strength$field;
      }
      
      public function clearMaxStrength() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294950911E9;
         this.max_strength$field = new uint();
      }
      
      public function get hasMaxStrength() : Boolean
      {
         return (this.hasField$0 & 16384) != 0;
      }
      
      public function set maxStrength(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16384;
         this.max_strength$field = param1;
      }
      
      public function get maxStrength() : uint
      {
         return this.max_strength$field;
      }
      
      public function clearCanReachMaxStrength() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294934527E9;
         this.can_reach_max_strength$field = new uint();
      }
      
      public function get hasCanReachMaxStrength() : Boolean
      {
         return (this.hasField$0 & 32768) != 0;
      }
      
      public function set canReachMaxStrength(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32768;
         this.can_reach_max_strength$field = param1;
      }
      
      public function get canReachMaxStrength() : uint
      {
         return this.can_reach_max_strength$field;
      }
      
      public function clearBuyStrengthGold() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294901759E9;
         this.buy_strength_gold$field = new int();
      }
      
      public function get hasBuyStrengthGold() : Boolean
      {
         return (this.hasField$0 & 65536) != 0;
      }
      
      public function set buyStrengthGold(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 65536;
         this.buy_strength_gold$field = param1;
      }
      
      public function get buyStrengthGold() : int
      {
         return this.buy_strength_gold$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294836223E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 131072) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 131072;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
      }
      
      public function clearVipExpiredTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294705151E9;
         this.vip_expired_time$field = new uint();
      }
      
      public function get hasVipExpiredTime() : Boolean
      {
         return (this.hasField$0 & 262144) != 0;
      }
      
      public function set vipExpiredTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 262144;
         this.vip_expired_time$field = param1;
      }
      
      public function get vipExpiredTime() : uint
      {
         return this.vip_expired_time$field;
      }
      
      public function clearVipRemainderDay() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294443007E9;
         this.vip_remainder_day$field = new uint();
      }
      
      public function get hasVipRemainderDay() : Boolean
      {
         return (this.hasField$0 & 524288) != 0;
      }
      
      public function set vipRemainderDay(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 524288;
         this.vip_remainder_day$field = param1;
      }
      
      public function get vipRemainderDay() : uint
      {
         return this.vip_remainder_day$field;
      }
      
      public function clearShowNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.293918719E9;
         this.show_ninja_id$field = new int();
      }
      
      public function get hasShowNinjaId() : Boolean
      {
         return (this.hasField$0 & 1048576) != 0;
      }
      
      public function set showNinjaId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1048576;
         this.show_ninja_id$field = param1;
      }
      
      public function get showNinjaId() : int
      {
         return this.show_ninja_id$field;
      }
      
      public function clearChosedTitleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.292870143E9;
         this.chosed_title_id$field = new uint();
      }
      
      public function get hasChosedTitleId() : Boolean
      {
         return (this.hasField$0 & 2097152) != 0;
      }
      
      public function set chosedTitleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2097152;
         this.chosed_title_id$field = param1;
      }
      
      public function get chosedTitleId() : uint
      {
         return this.chosed_title_id$field;
      }
      
      public function clearDiamondInfo() : void
      {
         this.diamond_info$field = null;
      }
      
      public function get hasDiamondInfo() : Boolean
      {
         return this.diamond_info$field != null;
      }
      
      public function set diamondInfo(param1:ProtoDiamondInfo) : void
      {
         this.diamond_info$field = param1;
      }
      
      public function get diamondInfo() : ProtoDiamondInfo
      {
         return this.diamond_info$field;
      }
      
      public function clearIsGm() : void
      {
         this.hasField$0 = this.hasField$0 & 4.290772991E9;
         this.is_gm$field = new int();
      }
      
      public function get hasIsGm() : Boolean
      {
         return (this.hasField$0 & 4194304) != 0;
      }
      
      public function set isGm(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4194304;
         this.is_gm$field = param1;
      }
      
      public function get isGm() : int
      {
         return this.is_gm$field;
      }
      
      public function clearTaskSign() : void
      {
         this.hasField$0 = this.hasField$0 & 4.286578687E9;
         this.task_sign$field = new int();
      }
      
      public function get hasTaskSign() : Boolean
      {
         return (this.hasField$0 & 8388608) != 0;
      }
      
      public function set taskSign(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8388608;
         this.task_sign$field = param1;
      }
      
      public function get taskSign() : int
      {
         return this.task_sign$field;
      }
      
      public function clearFashionNinja() : void
      {
         this.hasField$0 = this.hasField$0 & 4.278190079E9;
         this.fashion_ninja$field = new int();
      }
      
      public function get hasFashionNinja() : Boolean
      {
         return (this.hasField$0 & 16777216) != 0;
      }
      
      public function set fashionNinja(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16777216;
         this.fashion_ninja$field = param1;
      }
      
      public function get fashionNinja() : int
      {
         return this.fashion_ninja$field;
      }
      
      public function clearExtraShowInfo() : void
      {
         this.extra_show_info$field = null;
      }
      
      public function get hasExtraShowInfo() : Boolean
      {
         return this.extra_show_info$field != null;
      }
      
      public function set extraShowInfo(param1:serverProto.user.ProtoExtraShowInfo) : void
      {
         this.extra_show_info$field = param1;
      }
      
      public function get extraShowInfo() : serverProto.user.ProtoExtraShowInfo
      {
         return this.extra_show_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_key$field);
         }
         if(this.hasRoleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.role_id$field);
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasNinjia)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.ninjia$field);
         }
         if(this.hasLocation)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.location$field);
         }
         if(this.hasDirection)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.direction$field);
         }
         if(this.hasMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.money$field);
         }
         if(this.hasYuanbao)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.yuanbao$field);
         }
         if(this.hasDianquan)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.dianquan$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.level$field);
         }
         if(this.hasHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.hp$field);
         }
         if(this.hasMaxHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.max_hp$field);
         }
         if(this.hasKatha)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT32(param1,this.katha$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_UINT32(param1,this.combat_power$field);
         }
         if(this.hasExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_UINT32(param1,this.exp$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_INT32(param1,this.role_category$field);
         }
         if(this.hasStrength)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,17);
            WriteUtils.write$TYPE_UINT32(param1,this.strength$field);
         }
         if(this.hasMaxStrength)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,18);
            WriteUtils.write$TYPE_UINT32(param1,this.max_strength$field);
         }
         if(this.hasCanReachMaxStrength)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,19);
            WriteUtils.write$TYPE_UINT32(param1,this.can_reach_max_strength$field);
         }
         if(this.hasBuyStrengthGold)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,20);
            WriteUtils.write$TYPE_INT32(param1,this.buy_strength_gold$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,21);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasVipExpiredTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,22);
            WriteUtils.write$TYPE_UINT32(param1,this.vip_expired_time$field);
         }
         if(this.hasVipRemainderDay)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,23);
            WriteUtils.write$TYPE_UINT32(param1,this.vip_remainder_day$field);
         }
         if(this.hasShowNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,24);
            WriteUtils.write$TYPE_INT32(param1,this.show_ninja_id$field);
         }
         if(this.hasChosedTitleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,25);
            WriteUtils.write$TYPE_UINT32(param1,this.chosed_title_id$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,26);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasIsGm)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,27);
            WriteUtils.write$TYPE_INT32(param1,this.is_gm$field);
         }
         if(this.hasTaskSign)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,28);
            WriteUtils.write$TYPE_ENUM(param1,this.task_sign$field);
         }
         if(this.hasFashionNinja)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,29);
            WriteUtils.write$TYPE_INT32(param1,this.fashion_ninja$field);
         }
         if(this.hasExtraShowInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,30);
            WriteUtils.write$TYPE_MESSAGE(param1,this.extra_show_info$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 30, Size: 30)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
