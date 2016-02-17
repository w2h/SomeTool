package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPlayerInfoChangeNotify extends Message
   {
      
      public static const REASON:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfoChangeNotify.reason","reason",1 << 3 | WireType.VARINT);
      
      public static const STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.strength","strength",2 << 3 | WireType.VARINT);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.combat_power","combatPower",3 << 3 | WireType.VARINT);
      
      public static const MAX_HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.max_hp","maxHp",4 << 3 | WireType.VARINT);
      
      public static const CURRENT_HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.current_hp","currentHp",5 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.level","level",6 << 3 | WireType.VARINT);
      
      public static const MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.money","money",7 << 3 | WireType.VARINT);
      
      public static const COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.coupon","coupon",8 << 3 | WireType.VARINT);
      
      public static const GOLD_INGOT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.gold_ingot","goldIngot",9 << 3 | WireType.VARINT);
      
      public static const CHAKRA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.chakra","chakra",10 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.exp","exp",11 << 3 | WireType.VARINT);
      
      public static const MAX_STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.max_strength","maxStrength",12 << 3 | WireType.VARINT);
      
      public static const CAN_REACH_MAX_STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.can_reach_max_strength","canReachMaxStrength",13 << 3 | WireType.VARINT);
      
      public static const BUY_STRENGTH_GOLD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfoChangeNotify.buy_strength_gold","buyStrengthGold",14 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoPlayerInfoChangeNotify.vip_level","vipLevel",15 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const VIP_EXPIRED_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.vip_expired_time","vipExpiredTime",16 << 3 | WireType.VARINT);
      
      public static const SHOW_NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfoChangeNotify.show_ninja_id","showNinjaId",17 << 3 | WireType.VARINT);
      
      public static const TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfoChangeNotify.title_id","titleId",18 << 3 | WireType.VARINT);
      
      public static const TASK_SIGN:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoPlayerInfoChangeNotify.task_sign","taskSign",19 << 3 | WireType.VARINT,ProtoTaskSign);
      
      public static const NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfoChangeNotify.ninja","ninja",20 << 3 | WireType.VARINT);
      
      public static const FASHION_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfoChangeNotify.fashion_ninja","fashionNinja",21 << 3 | WireType.VARINT);
      
      public static const EXTRA_SHOW_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoPlayerInfoChangeNotify.extra_show_info","extraShowInfo",22 << 3 | WireType.LENGTH_DELIMITED,ProtoExtraShowInfo);
       
      private var reason$field:int;
      
      private var hasField$0:uint = 0;
      
      private var strength$field:uint;
      
      private var combat_power$field:uint;
      
      private var max_hp$field:uint;
      
      private var current_hp$field:uint;
      
      private var level$field:uint;
      
      private var money$field:uint;
      
      private var coupon$field:uint;
      
      private var gold_ingot$field:uint;
      
      private var chakra$field:uint;
      
      private var exp$field:uint;
      
      private var max_strength$field:uint;
      
      private var can_reach_max_strength$field:uint;
      
      private var buy_strength_gold$field:int;
      
      private var vip_level$field:int;
      
      private var vip_expired_time$field:uint;
      
      private var show_ninja_id$field:int;
      
      private var title_id$field:uint;
      
      private var task_sign$field:int;
      
      private var ninja$field:int;
      
      private var fashion_ninja$field:int;
      
      private var extra_show_info$field:serverProto.user.ProtoExtraShowInfo;
      
      public function ProtoPlayerInfoChangeNotify()
      {
         super();
      }
      
      public function clearReason() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.reason$field = new int();
      }
      
      public function get hasReason() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set reason(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.reason$field = param1;
      }
      
      public function get reason() : int
      {
         return this.reason$field;
      }
      
      public function clearStrength() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.strength$field = new uint();
      }
      
      public function get hasStrength() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set strength(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.strength$field = param1;
      }
      
      public function get strength() : uint
      {
         return this.strength$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.combat_power$field = new uint();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set combatPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : uint
      {
         return this.combat_power$field;
      }
      
      public function clearMaxHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.max_hp$field = new uint();
      }
      
      public function get hasMaxHp() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set maxHp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.max_hp$field = param1;
      }
      
      public function get maxHp() : uint
      {
         return this.max_hp$field;
      }
      
      public function clearCurrentHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.current_hp$field = new uint();
      }
      
      public function get hasCurrentHp() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set currentHp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.current_hp$field = param1;
      }
      
      public function get currentHp() : uint
      {
         return this.current_hp$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.level$field = new uint();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set level(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.level$field = param1;
      }
      
      public function get level() : uint
      {
         return this.level$field;
      }
      
      public function clearMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.money$field = new uint();
      }
      
      public function get hasMoney() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set money(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.money$field = param1;
      }
      
      public function get money() : uint
      {
         return this.money$field;
      }
      
      public function clearCoupon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.coupon$field = new uint();
      }
      
      public function get hasCoupon() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set coupon(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.coupon$field = param1;
      }
      
      public function get coupon() : uint
      {
         return this.coupon$field;
      }
      
      public function clearGoldIngot() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.gold_ingot$field = new uint();
      }
      
      public function get hasGoldIngot() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set goldIngot(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.gold_ingot$field = param1;
      }
      
      public function get goldIngot() : uint
      {
         return this.gold_ingot$field;
      }
      
      public function clearChakra() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.chakra$field = new uint();
      }
      
      public function get hasChakra() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set chakra(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.chakra$field = param1;
      }
      
      public function get chakra() : uint
      {
         return this.chakra$field;
      }
      
      public function clearExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.exp$field = new uint();
      }
      
      public function get hasExp() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set exp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.exp$field = param1;
      }
      
      public function get exp() : uint
      {
         return this.exp$field;
      }
      
      public function clearMaxStrength() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.max_strength$field = new uint();
      }
      
      public function get hasMaxStrength() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set maxStrength(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.max_strength$field = param1;
      }
      
      public function get maxStrength() : uint
      {
         return this.max_strength$field;
      }
      
      public function clearCanReachMaxStrength() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.can_reach_max_strength$field = new uint();
      }
      
      public function get hasCanReachMaxStrength() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set canReachMaxStrength(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.can_reach_max_strength$field = param1;
      }
      
      public function get canReachMaxStrength() : uint
      {
         return this.can_reach_max_strength$field;
      }
      
      public function clearBuyStrengthGold() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.buy_strength_gold$field = new int();
      }
      
      public function get hasBuyStrengthGold() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set buyStrengthGold(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.buy_strength_gold$field = param1;
      }
      
      public function get buyStrengthGold() : int
      {
         return this.buy_strength_gold$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294950911E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 16384) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16384;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
      }
      
      public function clearVipExpiredTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294934527E9;
         this.vip_expired_time$field = new uint();
      }
      
      public function get hasVipExpiredTime() : Boolean
      {
         return (this.hasField$0 & 32768) != 0;
      }
      
      public function set vipExpiredTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32768;
         this.vip_expired_time$field = param1;
      }
      
      public function get vipExpiredTime() : uint
      {
         return this.vip_expired_time$field;
      }
      
      public function clearShowNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294901759E9;
         this.show_ninja_id$field = new int();
      }
      
      public function get hasShowNinjaId() : Boolean
      {
         return (this.hasField$0 & 65536) != 0;
      }
      
      public function set showNinjaId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 65536;
         this.show_ninja_id$field = param1;
      }
      
      public function get showNinjaId() : int
      {
         return this.show_ninja_id$field;
      }
      
      public function clearTitleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294836223E9;
         this.title_id$field = new uint();
      }
      
      public function get hasTitleId() : Boolean
      {
         return (this.hasField$0 & 131072) != 0;
      }
      
      public function set titleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 131072;
         this.title_id$field = param1;
      }
      
      public function get titleId() : uint
      {
         return this.title_id$field;
      }
      
      public function clearTaskSign() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294705151E9;
         this.task_sign$field = new int();
      }
      
      public function get hasTaskSign() : Boolean
      {
         return (this.hasField$0 & 262144) != 0;
      }
      
      public function set taskSign(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 262144;
         this.task_sign$field = param1;
      }
      
      public function get taskSign() : int
      {
         return this.task_sign$field;
      }
      
      public function clearNinja() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294443007E9;
         this.ninja$field = new int();
      }
      
      public function get hasNinja() : Boolean
      {
         return (this.hasField$0 & 524288) != 0;
      }
      
      public function set ninja(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 524288;
         this.ninja$field = param1;
      }
      
      public function get ninja() : int
      {
         return this.ninja$field;
      }
      
      public function clearFashionNinja() : void
      {
         this.hasField$0 = this.hasField$0 & 4.293918719E9;
         this.fashion_ninja$field = new int();
      }
      
      public function get hasFashionNinja() : Boolean
      {
         return (this.hasField$0 & 1048576) != 0;
      }
      
      public function set fashionNinja(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1048576;
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
         if(this.hasReason)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.reason$field);
         }
         if(this.hasStrength)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.strength$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.combat_power$field);
         }
         if(this.hasMaxHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.max_hp$field);
         }
         if(this.hasCurrentHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.current_hp$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.level$field);
         }
         if(this.hasMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.money$field);
         }
         if(this.hasCoupon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.coupon$field);
         }
         if(this.hasGoldIngot)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.gold_ingot$field);
         }
         if(this.hasChakra)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.chakra$field);
         }
         if(this.hasExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.exp$field);
         }
         if(this.hasMaxStrength)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.max_strength$field);
         }
         if(this.hasCanReachMaxStrength)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT32(param1,this.can_reach_max_strength$field);
         }
         if(this.hasBuyStrengthGold)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_INT32(param1,this.buy_strength_gold$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasVipExpiredTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_UINT32(param1,this.vip_expired_time$field);
         }
         if(this.hasShowNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,17);
            WriteUtils.write$TYPE_INT32(param1,this.show_ninja_id$field);
         }
         if(this.hasTitleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,18);
            WriteUtils.write$TYPE_UINT32(param1,this.title_id$field);
         }
         if(this.hasTaskSign)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,19);
            WriteUtils.write$TYPE_ENUM(param1,this.task_sign$field);
         }
         if(this.hasNinja)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,20);
            WriteUtils.write$TYPE_INT32(param1,this.ninja$field);
         }
         if(this.hasFashionNinja)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,21);
            WriteUtils.write$TYPE_INT32(param1,this.fashion_ninja$field);
         }
         if(this.hasExtraShowInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,22);
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
          * Error type: IndexOutOfBoundsException (Index: 22, Size: 22)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
