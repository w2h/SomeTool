package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.formationBase.ProtoFormationInfo;
   import serverProto.inc.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoDiamondInfo;
   import serverProto.inc.GuildMemberIdentity;
   import serverProto.fashion.ProtoFashionPropertyInfo;
   import serverProto.summonMonster.ProtoContractInfoList;
   import serverProto.tabard.ProtoTabardInfo;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetOtherPlayerInfoResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.player_key","playerKey",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.name","name",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const MAX_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.max_hp","maxHp",4 << 3 | WireType.VARINT);
      
      public static const CURRENT_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.current_hp","currentHp",5 << 3 | WireType.VARINT);
      
      public static const CHAKRA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.chakra","chakra",6 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.level","level",7 << 3 | WireType.VARINT);
      
      public static const NINJA_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.ninja_info","ninjaInfo",8 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
      
      public static const FORMATION_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.formation_info","formationInfo",9 << 3 | WireType.LENGTH_DELIMITED,ProtoFormationInfo);
      
      public static const ROLE_TALENT_AWAKEN_SKILL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.role_talent_awaken_skill","roleTalentAwakenSkill",10 << 3 | WireType.VARINT);
      
      public static const ROLE_TALENT_COMMON_SKILL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.role_talent_common_skill","roleTalentCommonSkill",11 << 3 | WireType.VARINT);
      
      public static const ROLE_TALENT_SKILL:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.role_talent_skill","roleTalentSkill",12 << 3 | WireType.VARINT);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.combat_power","combatPower",13 << 3 | WireType.VARINT);
      
      public static const TEAM_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.team_id","teamId",14 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.role_category","roleCategory",15 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.vip_level","vipLevel",16 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.diamond_info","diamondInfo",17 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.guild_name","guildName",18 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const MEMBER_IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.member_identity","memberIdentity",19 << 3 | WireType.VARINT,GuildMemberIdentity);
      
      public static const CHOSED_TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.chosed_title_id","chosedTitleId",20 << 3 | WireType.VARINT);
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.guild_id","guildId",21 << 3 | WireType.VARINT);
      
      public static const PROPERTY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.property_info","propertyInfo",22 << 3 | WireType.LENGTH_DELIMITED,ProtoFashionPropertyInfo);
      
      public static const LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.list","list",23 << 3 | WireType.LENGTH_DELIMITED,ProtoContractInfoList);
      
      public static const TABARD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.tabard_info","tabardInfo",24 << 3 | WireType.LENGTH_DELIMITED,ProtoTabardInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var player_key$field:ProtoPlayerKey;
      
      private var name$field:String;
      
      private var max_hp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var current_hp$field:int;
      
      private var chakra$field:int;
      
      private var level$field:int;
      
      [ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
      public var ninjaInfo:Array;
      
      private var formation_info$field:ProtoFormationInfo;
      
      private var role_talent_awaken_skill$field:int;
      
      private var role_talent_common_skill$field:int;
      
      [ArrayElementType("int")]
      public var roleTalentSkill:Array;
      
      private var combat_power$field:int;
      
      private var team_id$field:UInt64;
      
      private var role_category$field:int;
      
      private var vip_level$field:int;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var guild_name$field:String;
      
      private var member_identity$field:int;
      
      private var chosed_title_id$field:uint;
      
      private var guild_id$field:UInt64;
      
      private var property_info$field:ProtoFashionPropertyInfo;
      
      private var list$field:ProtoContractInfoList;
      
      private var tabard_info$field:ProtoTabardInfo;
      
      public function ProtoGetOtherPlayerInfoResponse()
      {
         this.ninjaInfo = [];
         this.roleTalentSkill = [];
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
      
      public function clearMaxHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.max_hp$field = new int();
      }
      
      public function get hasMaxHp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set maxHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.max_hp$field = param1;
      }
      
      public function get maxHp() : int
      {
         return this.max_hp$field;
      }
      
      public function clearCurrentHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.current_hp$field = new int();
      }
      
      public function get hasCurrentHp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set currentHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.current_hp$field = param1;
      }
      
      public function get currentHp() : int
      {
         return this.current_hp$field;
      }
      
      public function clearChakra() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.chakra$field = new int();
      }
      
      public function get hasChakra() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set chakra(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.chakra$field = param1;
      }
      
      public function get chakra() : int
      {
         return this.chakra$field;
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
      
      public function clearFormationInfo() : void
      {
         this.formation_info$field = null;
      }
      
      public function get hasFormationInfo() : Boolean
      {
         return this.formation_info$field != null;
      }
      
      public function set formationInfo(param1:ProtoFormationInfo) : void
      {
         this.formation_info$field = param1;
      }
      
      public function get formationInfo() : ProtoFormationInfo
      {
         return this.formation_info$field;
      }
      
      public function clearRoleTalentAwakenSkill() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.role_talent_awaken_skill$field = new int();
      }
      
      public function get hasRoleTalentAwakenSkill() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set roleTalentAwakenSkill(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.role_talent_awaken_skill$field = param1;
      }
      
      public function get roleTalentAwakenSkill() : int
      {
         return this.role_talent_awaken_skill$field;
      }
      
      public function clearRoleTalentCommonSkill() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.role_talent_common_skill$field = new int();
      }
      
      public function get hasRoleTalentCommonSkill() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set roleTalentCommonSkill(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.role_talent_common_skill$field = param1;
      }
      
      public function get roleTalentCommonSkill() : int
      {
         return this.role_talent_common_skill$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.combat_power$field = new int();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set combatPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : int
      {
         return this.combat_power$field;
      }
      
      public function clearTeamId() : void
      {
         this.team_id$field = null;
      }
      
      public function get hasTeamId() : Boolean
      {
         return this.team_id$field != null;
      }
      
      public function set teamId(param1:UInt64) : void
      {
         this.team_id$field = param1;
      }
      
      public function get teamId() : UInt64
      {
         return this.team_id$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.role_category$field = new int();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set roleCategory(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : int
      {
         return this.role_category$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
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
      
      public function clearMemberIdentity() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.member_identity$field = new int();
      }
      
      public function get hasMemberIdentity() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set memberIdentity(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.member_identity$field = param1;
      }
      
      public function get memberIdentity() : int
      {
         return this.member_identity$field;
      }
      
      public function clearChosedTitleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.chosed_title_id$field = new uint();
      }
      
      public function get hasChosedTitleId() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set chosedTitleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.chosed_title_id$field = param1;
      }
      
      public function get chosedTitleId() : uint
      {
         return this.chosed_title_id$field;
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
      
      public function clearPropertyInfo() : void
      {
         this.property_info$field = null;
      }
      
      public function get hasPropertyInfo() : Boolean
      {
         return this.property_info$field != null;
      }
      
      public function set propertyInfo(param1:ProtoFashionPropertyInfo) : void
      {
         this.property_info$field = param1;
      }
      
      public function get propertyInfo() : ProtoFashionPropertyInfo
      {
         return this.property_info$field;
      }
      
      public function clearList() : void
      {
         this.list$field = null;
      }
      
      public function get hasList() : Boolean
      {
         return this.list$field != null;
      }
      
      public function set list(param1:ProtoContractInfoList) : void
      {
         this.list$field = param1;
      }
      
      public function get list() : ProtoContractInfoList
      {
         return this.list$field;
      }
      
      public function clearTabardInfo() : void
      {
         this.tabard_info$field = null;
      }
      
      public function get hasTabardInfo() : Boolean
      {
         return this.tabard_info$field != null;
      }
      
      public function set tabardInfo(param1:ProtoTabardInfo) : void
      {
         this.tabard_info$field = param1;
      }
      
      public function get tabardInfo() : ProtoTabardInfo
      {
         return this.tabard_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasPlayerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_key$field);
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasMaxHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.max_hp$field);
         }
         if(this.hasCurrentHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.current_hp$field);
         }
         if(this.hasChakra)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.chakra$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.level$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasFormationInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.formation_info$field);
         }
         if(this.hasRoleTalentAwakenSkill)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.role_talent_awaken_skill$field);
         }
         if(this.hasRoleTalentCommonSkill)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.role_talent_common_skill$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.roleTalentSkill.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_INT32(param1,this.roleTalentSkill[_loc3_]);
            _loc3_++;
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_INT32(param1,this.combat_power$field);
         }
         if(this.hasTeamId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_UINT64(param1,this.team_id$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_INT32(param1,this.role_category$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,17);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasGuildName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,18);
            WriteUtils.write$TYPE_STRING(param1,this.guild_name$field);
         }
         if(this.hasMemberIdentity)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,19);
            WriteUtils.write$TYPE_ENUM(param1,this.member_identity$field);
         }
         if(this.hasChosedTitleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,20);
            WriteUtils.write$TYPE_UINT32(param1,this.chosed_title_id$field);
         }
         if(this.hasGuildId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,21);
            WriteUtils.write$TYPE_UINT64(param1,this.guild_id$field);
         }
         if(this.hasPropertyInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,22);
            WriteUtils.write$TYPE_MESSAGE(param1,this.property_info$field);
         }
         if(this.hasList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,23);
            WriteUtils.write$TYPE_MESSAGE(param1,this.list$field);
         }
         if(this.hasTabardInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,24);
            WriteUtils.write$TYPE_MESSAGE(param1,this.tabard_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 24, Size: 24)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
