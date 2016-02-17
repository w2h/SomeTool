package serverProto.universeFuzionPre
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoNinjaSimpleInfo;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSimpleUserInfo extends Message
   {
      
      public static const USER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoSimpleUserInfo.user_key","userKey",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoSimpleUserInfo.role_category","roleCategory",2 << 3 | WireType.VARINT);
      
      public static const ROLE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.universeFuzionPre.ProtoSimpleUserInfo.role_name","roleName",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoSimpleUserInfo.level","level",4 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.universeFuzionPre.ProtoSimpleUserInfo.vip_level","vipLevel",5 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoSimpleUserInfo.ninja_list","ninjaList",6 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaSimpleInfo);
      
      public static const SUMMON_MONSTER_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoSimpleUserInfo.summon_monster_id","summonMonsterId",7 << 3 | WireType.VARINT);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoSimpleUserInfo.diamond_info","diamondInfo",8 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const DIAMOND_INFO_EXPIRED_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoSimpleUserInfo.diamond_info_expired_time","diamondInfoExpiredTime",9 << 3 | WireType.VARINT);
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.universeFuzionPre.ProtoSimpleUserInfo.guild_id","guildId",10 << 3 | WireType.VARINT);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.universeFuzionPre.ProtoSimpleUserInfo.guild_name","guildName",11 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoSimpleUserInfo.combat_power","combatPower",12 << 3 | WireType.VARINT);
       
      private var user_key$field:ProtoPlayerKey;
      
      private var role_category$field:int;
      
      private var hasField$0:uint = 0;
      
      private var role_name$field:String;
      
      private var level$field:uint;
      
      private var vip_level$field:int;
      
      [ArrayElementType("serverProto.inc.ProtoNinjaSimpleInfo")]
      public var ninjaList:Array;
      
      private var summon_monster_id$field:uint;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var diamond_info_expired_time$field:uint;
      
      private var guild_id$field:UInt64;
      
      private var guild_name$field:String;
      
      private var combat_power$field:uint;
      
      public function ProtoSimpleUserInfo()
      {
         this.ninjaList = [];
         super();
      }
      
      public function clearUserKey() : void
      {
         this.user_key$field = null;
      }
      
      public function get hasUserKey() : Boolean
      {
         return this.user_key$field != null;
      }
      
      public function set userKey(param1:ProtoPlayerKey) : void
      {
         this.user_key$field = param1;
      }
      
      public function get userKey() : ProtoPlayerKey
      {
         return this.user_key$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.role_category$field = new int();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set roleCategory(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : int
      {
         return this.role_category$field;
      }
      
      public function clearRoleName() : void
      {
         this.role_name$field = null;
      }
      
      public function get hasRoleName() : Boolean
      {
         return this.role_name$field != null;
      }
      
      public function set roleName(param1:String) : void
      {
         this.role_name$field = param1;
      }
      
      public function get roleName() : String
      {
         return this.role_name$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.level$field = new uint();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set level(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.level$field = param1;
      }
      
      public function get level() : uint
      {
         return this.level$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
      }
      
      public function clearSummonMonsterId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.summon_monster_id$field = new uint();
      }
      
      public function get hasSummonMonsterId() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set summonMonsterId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.summon_monster_id$field = param1;
      }
      
      public function get summonMonsterId() : uint
      {
         return this.summon_monster_id$field;
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
      
      public function clearDiamondInfoExpiredTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.diamond_info_expired_time$field = new uint();
      }
      
      public function get hasDiamondInfoExpiredTime() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set diamondInfoExpiredTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.diamond_info_expired_time$field = param1;
      }
      
      public function get diamondInfoExpiredTime() : uint
      {
         return this.diamond_info_expired_time$field;
      }
      
      public function clearGuildId() : void
      {
         this.guild_id$field = null;
      }
      
      public function get hasGuildId() : Boolean
      {
         return this.guild_id$field != null;
      }
      
      public function set guildId(param1:UInt64) : void
      {
         this.guild_id$field = param1;
      }
      
      public function get guildId() : UInt64
      {
         return this.guild_id$field;
      }
      
      public function clearGuildName() : void
      {
         this.guild_name$field = null;
      }
      
      public function get hasGuildName() : Boolean
      {
         return this.guild_name$field != null;
      }
      
      public function set guildName(param1:String) : void
      {
         this.guild_name$field = param1;
      }
      
      public function get guildName() : String
      {
         return this.guild_name$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.combat_power$field = new uint();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set combatPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : uint
      {
         return this.combat_power$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasUserKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.user_key$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.role_category$field);
         }
         if(this.hasRoleName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.role_name$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.level$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaList[_loc2_]);
            _loc2_++;
         }
         if(this.hasSummonMonsterId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.summon_monster_id$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasDiamondInfoExpiredTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.diamond_info_expired_time$field);
         }
         if(this.hasGuildId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT64(param1,this.guild_id$field);
         }
         if(this.hasGuildName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_STRING(param1,this.guild_name$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.combat_power$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
