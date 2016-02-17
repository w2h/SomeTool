package serverProto.universeFuzionPre
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoNinjaSimpleInfo;
   import serverProto.user.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBattleRivalInfo extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoBattleRivalInfo.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const ROLE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.universeFuzionPre.ProtoBattleRivalInfo.role_name","roleName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CAREER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoBattleRivalInfo.career","career",3 << 3 | WireType.VARINT);
      
      public static const RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoBattleRivalInfo.rank","rank",4 << 3 | WireType.VARINT);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoBattleRivalInfo.combat_power","combatPower",5 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoBattleRivalInfo.level","level",6 << 3 | WireType.VARINT);
      
      public static const NINJA_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoBattleRivalInfo.ninja_list","ninjaList",7 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaSimpleInfo);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.universeFuzionPre.ProtoBattleRivalInfo.guild_name","guildName",8 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.universeFuzionPre.ProtoBattleRivalInfo.vip_level","vipLevel",9 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoBattleRivalInfo.diamond_info","diamondInfo",10 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const SUMMON_MONSTER_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionPre.ProtoBattleRivalInfo.summon_monster_id","summonMonsterId",11 << 3 | WireType.VARINT);
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.universeFuzionPre.ProtoBattleRivalInfo.guild_id","guildId",12 << 3 | WireType.VARINT);
       
      private var player_id$field:ProtoPlayerKey;
      
      private var role_name$field:String;
      
      private var career$field:int;
      
      private var hasField$0:uint = 0;
      
      private var rank$field:int;
      
      private var combat_power$field:int;
      
      private var level$field:int;
      
      private var ninja_list$field:ProtoNinjaSimpleInfo;
      
      private var guild_name$field:String;
      
      private var vip_level$field:int;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var summon_monster_id$field:int;
      
      private var guild_id$field:UInt64;
      
      public function ProtoBattleRivalInfo()
      {
         super();
      }
      
      public function clearPlayerId() : void
      {
         this.player_id$field = null;
      }
      
      public function get hasPlayerId() : Boolean
      {
         return this.player_id$field != null;
      }
      
      public function set playerId(param1:ProtoPlayerKey) : void
      {
         this.player_id$field = param1;
      }
      
      public function get playerId() : ProtoPlayerKey
      {
         return this.player_id$field;
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
      
      public function clearCareer() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.career$field = new int();
      }
      
      public function get hasCareer() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set career(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.career$field = param1;
      }
      
      public function get career() : int
      {
         return this.career$field;
      }
      
      public function clearRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.rank$field = new int();
      }
      
      public function get hasRank() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set rank(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.rank$field = param1;
      }
      
      public function get rank() : int
      {
         return this.rank$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.combat_power$field = new int();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set combatPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : int
      {
         return this.combat_power$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      public function clearNinjaList() : void
      {
         this.ninja_list$field = null;
      }
      
      public function get hasNinjaList() : Boolean
      {
         return this.ninja_list$field != null;
      }
      
      public function set ninjaList(param1:ProtoNinjaSimpleInfo) : void
      {
         this.ninja_list$field = param1;
      }
      
      public function get ninjaList() : ProtoNinjaSimpleInfo
      {
         return this.ninja_list$field;
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
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
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
      
      public function clearSummonMonsterId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.summon_monster_id$field = new int();
      }
      
      public function get hasSummonMonsterId() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set summonMonsterId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.summon_monster_id$field = param1;
      }
      
      public function get summonMonsterId() : int
      {
         return this.summon_monster_id$field;
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
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasRoleName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.role_name$field);
         }
         if(this.hasCareer)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.career$field);
         }
         if(this.hasRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.rank$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.combat_power$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.level$field);
         }
         if(this.hasNinjaList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_list$field);
         }
         if(this.hasGuildName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_STRING(param1,this.guild_name$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasSummonMonsterId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_SINT32(param1,this.summon_monster_id$field);
         }
         if(this.hasGuildId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT64(param1,this.guild_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
