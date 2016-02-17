package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.GuildMemberIdentity;
   import serverProto.inc.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildMemberInfo extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildMemberInfo.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PLAYER_NICK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildMemberInfo.player_nick","playerNick",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const PLAYER_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.player_lvl","playerLvl",3 << 3 | WireType.VARINT);
      
      public static const PLAYER_COMBAT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.player_combat","playerCombat",4 << 3 | WireType.VARINT);
      
      public static const PLAYER_CAREER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.player_career","playerCareer",5 << 3 | WireType.VARINT);
      
      public static const IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildMemberInfo.identity","identity",6 << 3 | WireType.VARINT,GuildMemberIdentity);
      
      public static const LOGIN_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.login_flag","loginFlag",7 << 3 | WireType.VARINT);
      
      public static const OFFLINE_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.offline_time","offlineTime",8 << 3 | WireType.VARINT);
      
      public static const CURRENT_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.current_contri","currentContri",9 << 3 | WireType.VARINT);
      
      public static const HISTORY_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.history_contri","historyContri",10 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildMemberInfo.vip_level","vipLevel",11 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildMemberInfo.diamond_info","diamondInfo",12 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const IN_GVG_WHITE_LIST:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoGuildMemberInfo.in_gvg_white_list","inGvgWhiteList",13 << 3 | WireType.VARINT);
       
      private var player_id$field:ProtoPlayerKey;
      
      private var player_nick$field:String;
      
      private var player_lvl$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var player_combat$field:uint;
      
      private var player_career$field:uint;
      
      private var identity$field:int;
      
      private var login_flag$field:uint;
      
      private var offline_time$field:uint;
      
      private var current_contri$field:uint;
      
      private var history_contri$field:uint;
      
      private var vip_level$field:int;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var in_gvg_white_list$field:Boolean;
      
      public function ProtoGuildMemberInfo()
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
      
      public function clearPlayerNick() : void
      {
         this.player_nick$field = null;
      }
      
      public function get hasPlayerNick() : Boolean
      {
         return this.player_nick$field != null;
      }
      
      public function set playerNick(param1:String) : void
      {
         this.player_nick$field = param1;
      }
      
      public function get playerNick() : String
      {
         return this.player_nick$field;
      }
      
      public function clearPlayerLvl() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.player_lvl$field = new uint();
      }
      
      public function get hasPlayerLvl() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set playerLvl(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.player_lvl$field = param1;
      }
      
      public function get playerLvl() : uint
      {
         return this.player_lvl$field;
      }
      
      public function clearPlayerCombat() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.player_combat$field = new uint();
      }
      
      public function get hasPlayerCombat() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set playerCombat(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.player_combat$field = param1;
      }
      
      public function get playerCombat() : uint
      {
         return this.player_combat$field;
      }
      
      public function clearPlayerCareer() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.player_career$field = new uint();
      }
      
      public function get hasPlayerCareer() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set playerCareer(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.player_career$field = param1;
      }
      
      public function get playerCareer() : uint
      {
         return this.player_career$field;
      }
      
      public function clearIdentity() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.identity$field = new int();
      }
      
      public function get hasIdentity() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set identity(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.identity$field = param1;
      }
      
      public function get identity() : int
      {
         return this.identity$field;
      }
      
      public function clearLoginFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.login_flag$field = new uint();
      }
      
      public function get hasLoginFlag() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set loginFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.login_flag$field = param1;
      }
      
      public function get loginFlag() : uint
      {
         return this.login_flag$field;
      }
      
      public function clearOfflineTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.offline_time$field = new uint();
      }
      
      public function get hasOfflineTime() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set offlineTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.offline_time$field = param1;
      }
      
      public function get offlineTime() : uint
      {
         return this.offline_time$field;
      }
      
      public function clearCurrentContri() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.current_contri$field = new uint();
      }
      
      public function get hasCurrentContri() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set currentContri(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.current_contri$field = param1;
      }
      
      public function get currentContri() : uint
      {
         return this.current_contri$field;
      }
      
      public function clearHistoryContri() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.history_contri$field = new uint();
      }
      
      public function get hasHistoryContri() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set historyContri(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.history_contri$field = param1;
      }
      
      public function get historyContri() : uint
      {
         return this.history_contri$field;
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
      
      public function clearInGvgWhiteList() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.in_gvg_white_list$field = new Boolean();
      }
      
      public function get hasInGvgWhiteList() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set inGvgWhiteList(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.in_gvg_white_list$field = param1;
      }
      
      public function get inGvgWhiteList() : Boolean
      {
         return this.in_gvg_white_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasPlayerNick)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.player_nick$field);
         }
         if(this.hasPlayerLvl)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.player_lvl$field);
         }
         if(this.hasPlayerCombat)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.player_combat$field);
         }
         if(this.hasPlayerCareer)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.player_career$field);
         }
         if(this.hasIdentity)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_ENUM(param1,this.identity$field);
         }
         if(this.hasLoginFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.login_flag$field);
         }
         if(this.hasOfflineTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.offline_time$field);
         }
         if(this.hasCurrentContri)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.current_contri$field);
         }
         if(this.hasHistoryContri)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.history_contri$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,12);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasInGvgWhiteList)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_BOOL(param1,this.in_gvg_white_list$field);
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
          * Error type: IndexOutOfBoundsException (Index: 13, Size: 13)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
