package serverProto.innerActivity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoDiamondInfo;
   import serverProto.inc.GuildMemberIdentity;
   import serverProto.inc.ProtoTGPInfo;
   import com.netease.protobuf.Int64;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoInnerGetPlayerSimpleInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.ret","ret",1 << 3 | WireType.VARINT);
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.player_id","playerId",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.player_name","playerName",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const PLAYER_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.player_level","playerLevel",4 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.role_category","roleCategory",5 << 3 | WireType.VARINT);
      
      public static const ROLE_SEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.role_sex","roleSex",6 << 3 | WireType.VARINT);
      
      public static const ROLE_PROMOTE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.role_promote_level","rolePromoteLevel",7 << 3 | WireType.VARINT);
      
      public static const REGISTER_WAY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.register_way","registerWay",8 << 3 | WireType.VARINT);
      
      public static const LOGIN_WAY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.login_way","loginWay",9 << 3 | WireType.VARINT);
      
      public static const TEAM_ID:FieldDescriptor$TYPE_INT64 = new FieldDescriptor$TYPE_INT64("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.team_id","teamId",10 << 3 | WireType.VARINT);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.combat_power","combatPower",11 << 3 | WireType.VARINT);
      
      public static const HISTORY_MAX_COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.history_max_combat_power","historyMaxCombatPower",12 << 3 | WireType.VARINT);
      
      public static const LOGIN_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.login_flag","loginFlag",13 << 3 | WireType.VARINT);
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.guild_id","guildId",14 << 3 | WireType.VARINT);
      
      public static const COUPON_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.coupon_num","couponNum",15 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.vip_level","vipLevel",16 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const LAST_LOGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.last_login_time","lastLoginTime",17 << 3 | WireType.VARINT);
      
      public static const FIND_BACK_DAY_TASK_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.find_back_day_task_exp","findBackDayTaskExp",18 << 3 | WireType.VARINT);
      
      public static const FIND_BACK_OFFER_TASK_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.find_back_offer_task_exp","findBackOfferTaskExp",19 << 3 | WireType.VARINT);
      
      public static const FIND_BACK_LAST_QUERY_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.find_back_last_query_time","findBackLastQueryTime",20 << 3 | WireType.VARINT);
      
      public static const REGISTER_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.register_time","registerTime",21 << 3 | WireType.VARINT);
      
      public static const CLIENT_VERSION:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.client_version","clientVersion",22 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.diamond_info","diamondInfo",24 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const GUILD_IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.guild_identity","guildIdentity",25 << 3 | WireType.VARINT,GuildMemberIdentity);
      
      public static const SHOW_PRIVILEGE_WAY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.show_privilege_way","showPrivilegeWay",26 << 3 | WireType.VARINT);
      
      public static const TGP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.tgp_info","tgpInfo",27 << 3 | WireType.LENGTH_DELIMITED,ProtoTGPInfo);
      
      public static const LAST_LOGOUT_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.last_logout_time","lastLogoutTime",28 << 3 | WireType.VARINT);
       
      private var ret$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var player_id$field:ProtoPlayerKey;
      
      private var player_name$field:String;
      
      private var player_level$field:int;
      
      private var role_category$field:int;
      
      private var role_sex$field:int;
      
      private var role_promote_level$field:int;
      
      private var register_way$field:int;
      
      private var login_way$field:int;
      
      private var team_id$field:Int64;
      
      private var combat_power$field:uint;
      
      private var history_max_combat_power$field:uint;
      
      private var login_flag$field:uint;
      
      private var guild_id$field:UInt64;
      
      private var coupon_num$field:int;
      
      private var vip_level$field:int;
      
      private var last_login_time$field:uint;
      
      private var find_back_day_task_exp$field:uint;
      
      private var find_back_offer_task_exp$field:uint;
      
      private var find_back_last_query_time$field:uint;
      
      private var register_time$field:uint;
      
      private var client_version$field:String;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var guild_identity$field:int;
      
      private var show_privilege_way$field:int;
      
      private var tgp_info$field:ProtoTGPInfo;
      
      private var last_logout_time$field:uint;
      
      public function ProtoInnerGetPlayerSimpleInfoRsp()
      {
         super();
      }
      
      public function clearRet() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ret$field = new uint();
      }
      
      public function get hasRet() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ret(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ret$field = param1;
      }
      
      public function get ret() : uint
      {
         return this.ret$field;
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
      
      public function clearPlayerName() : void
      {
         this.player_name$field = null;
      }
      
      public function get hasPlayerName() : Boolean
      {
         return this.player_name$field != null;
      }
      
      public function set playerName(param1:String) : void
      {
         this.player_name$field = param1;
      }
      
      public function get playerName() : String
      {
         return this.player_name$field;
      }
      
      public function clearPlayerLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.player_level$field = new int();
      }
      
      public function get hasPlayerLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set playerLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.player_level$field = param1;
      }
      
      public function get playerLevel() : int
      {
         return this.player_level$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.role_category$field = new int();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set roleCategory(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : int
      {
         return this.role_category$field;
      }
      
      public function clearRoleSex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.role_sex$field = new int();
      }
      
      public function get hasRoleSex() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set roleSex(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.role_sex$field = param1;
      }
      
      public function get roleSex() : int
      {
         return this.role_sex$field;
      }
      
      public function clearRolePromoteLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.role_promote_level$field = new int();
      }
      
      public function get hasRolePromoteLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set rolePromoteLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.role_promote_level$field = param1;
      }
      
      public function get rolePromoteLevel() : int
      {
         return this.role_promote_level$field;
      }
      
      public function clearRegisterWay() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.register_way$field = new int();
      }
      
      public function get hasRegisterWay() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set registerWay(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.register_way$field = param1;
      }
      
      public function get registerWay() : int
      {
         return this.register_way$field;
      }
      
      public function clearLoginWay() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.login_way$field = new int();
      }
      
      public function get hasLoginWay() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set loginWay(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.login_way$field = param1;
      }
      
      public function get loginWay() : int
      {
         return this.login_way$field;
      }
      
      public function clearTeamId() : void
      {
         this.team_id$field = null;
      }
      
      public function get hasTeamId() : Boolean
      {
         return this.team_id$field != null;
      }
      
      public function set teamId(param1:Int64) : void
      {
         this.team_id$field = param1;
      }
      
      public function get teamId() : Int64
      {
         return this.team_id$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.combat_power$field = new uint();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set combatPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : uint
      {
         return this.combat_power$field;
      }
      
      public function clearHistoryMaxCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.history_max_combat_power$field = new uint();
      }
      
      public function get hasHistoryMaxCombatPower() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set historyMaxCombatPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.history_max_combat_power$field = param1;
      }
      
      public function get historyMaxCombatPower() : uint
      {
         return this.history_max_combat_power$field;
      }
      
      public function clearLoginFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.login_flag$field = new uint();
      }
      
      public function get hasLoginFlag() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set loginFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.login_flag$field = param1;
      }
      
      public function get loginFlag() : uint
      {
         return this.login_flag$field;
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
      
      public function clearCouponNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.coupon_num$field = new int();
      }
      
      public function get hasCouponNum() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set couponNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.coupon_num$field = param1;
      }
      
      public function get couponNum() : int
      {
         return this.coupon_num$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
      }
      
      public function clearLastLoginTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.last_login_time$field = new uint();
      }
      
      public function get hasLastLoginTime() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set lastLoginTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.last_login_time$field = param1;
      }
      
      public function get lastLoginTime() : uint
      {
         return this.last_login_time$field;
      }
      
      public function clearFindBackDayTaskExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.find_back_day_task_exp$field = new uint();
      }
      
      public function get hasFindBackDayTaskExp() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set findBackDayTaskExp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.find_back_day_task_exp$field = param1;
      }
      
      public function get findBackDayTaskExp() : uint
      {
         return this.find_back_day_task_exp$field;
      }
      
      public function clearFindBackOfferTaskExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294950911E9;
         this.find_back_offer_task_exp$field = new uint();
      }
      
      public function get hasFindBackOfferTaskExp() : Boolean
      {
         return (this.hasField$0 & 16384) != 0;
      }
      
      public function set findBackOfferTaskExp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16384;
         this.find_back_offer_task_exp$field = param1;
      }
      
      public function get findBackOfferTaskExp() : uint
      {
         return this.find_back_offer_task_exp$field;
      }
      
      public function clearFindBackLastQueryTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294934527E9;
         this.find_back_last_query_time$field = new uint();
      }
      
      public function get hasFindBackLastQueryTime() : Boolean
      {
         return (this.hasField$0 & 32768) != 0;
      }
      
      public function set findBackLastQueryTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32768;
         this.find_back_last_query_time$field = param1;
      }
      
      public function get findBackLastQueryTime() : uint
      {
         return this.find_back_last_query_time$field;
      }
      
      public function clearRegisterTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294901759E9;
         this.register_time$field = new uint();
      }
      
      public function get hasRegisterTime() : Boolean
      {
         return (this.hasField$0 & 65536) != 0;
      }
      
      public function set registerTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 65536;
         this.register_time$field = param1;
      }
      
      public function get registerTime() : uint
      {
         return this.register_time$field;
      }
      
      public function clearClientVersion() : void
      {
         this.client_version$field = null;
      }
      
      public function get hasClientVersion() : Boolean
      {
         return this.client_version$field != null;
      }
      
      public function set clientVersion(param1:String) : void
      {
         this.client_version$field = param1;
      }
      
      public function get clientVersion() : String
      {
         return this.client_version$field;
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
      
      public function clearGuildIdentity() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294836223E9;
         this.guild_identity$field = new int();
      }
      
      public function get hasGuildIdentity() : Boolean
      {
         return (this.hasField$0 & 131072) != 0;
      }
      
      public function set guildIdentity(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 131072;
         this.guild_identity$field = param1;
      }
      
      public function get guildIdentity() : int
      {
         return this.guild_identity$field;
      }
      
      public function clearShowPrivilegeWay() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294705151E9;
         this.show_privilege_way$field = new int();
      }
      
      public function get hasShowPrivilegeWay() : Boolean
      {
         return (this.hasField$0 & 262144) != 0;
      }
      
      public function set showPrivilegeWay(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 262144;
         this.show_privilege_way$field = param1;
      }
      
      public function get showPrivilegeWay() : int
      {
         return this.show_privilege_way$field;
      }
      
      public function clearTgpInfo() : void
      {
         this.tgp_info$field = null;
      }
      
      public function get hasTgpInfo() : Boolean
      {
         return this.tgp_info$field != null;
      }
      
      public function set tgpInfo(param1:ProtoTGPInfo) : void
      {
         this.tgp_info$field = param1;
      }
      
      public function get tgpInfo() : ProtoTGPInfo
      {
         return this.tgp_info$field;
      }
      
      public function clearLastLogoutTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294443007E9;
         this.last_logout_time$field = new uint();
      }
      
      public function get hasLastLogoutTime() : Boolean
      {
         return (this.hasField$0 & 524288) != 0;
      }
      
      public function set lastLogoutTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 524288;
         this.last_logout_time$field = param1;
      }
      
      public function get lastLogoutTime() : uint
      {
         return this.last_logout_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.ret$field);
         }
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasPlayerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.player_name$field);
         }
         if(this.hasPlayerLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.player_level$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.role_category$field);
         }
         if(this.hasRoleSex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.role_sex$field);
         }
         if(this.hasRolePromoteLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.role_promote_level$field);
         }
         if(this.hasRegisterWay)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.register_way$field);
         }
         if(this.hasLoginWay)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.login_way$field);
         }
         if(this.hasTeamId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT64(param1,this.team_id$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.combat_power$field);
         }
         if(this.hasHistoryMaxCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.history_max_combat_power$field);
         }
         if(this.hasLoginFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT32(param1,this.login_flag$field);
         }
         if(this.hasGuildId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_UINT64(param1,this.guild_id$field);
         }
         if(this.hasCouponNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_INT32(param1,this.coupon_num$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasLastLoginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,17);
            WriteUtils.write$TYPE_UINT32(param1,this.last_login_time$field);
         }
         if(this.hasFindBackDayTaskExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,18);
            WriteUtils.write$TYPE_UINT32(param1,this.find_back_day_task_exp$field);
         }
         if(this.hasFindBackOfferTaskExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,19);
            WriteUtils.write$TYPE_UINT32(param1,this.find_back_offer_task_exp$field);
         }
         if(this.hasFindBackLastQueryTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,20);
            WriteUtils.write$TYPE_UINT32(param1,this.find_back_last_query_time$field);
         }
         if(this.hasRegisterTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,21);
            WriteUtils.write$TYPE_UINT32(param1,this.register_time$field);
         }
         if(this.hasClientVersion)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,22);
            WriteUtils.write$TYPE_STRING(param1,this.client_version$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,24);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasGuildIdentity)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,25);
            WriteUtils.write$TYPE_ENUM(param1,this.guild_identity$field);
         }
         if(this.hasShowPrivilegeWay)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,26);
            WriteUtils.write$TYPE_INT32(param1,this.show_privilege_way$field);
         }
         if(this.hasTgpInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,27);
            WriteUtils.write$TYPE_MESSAGE(param1,this.tgp_info$field);
         }
         if(this.hasLastLogoutTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,28);
            WriteUtils.write$TYPE_UINT32(param1,this.last_logout_time$field);
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
          * Error type: IndexOutOfBoundsException (Index: 27, Size: 27)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
