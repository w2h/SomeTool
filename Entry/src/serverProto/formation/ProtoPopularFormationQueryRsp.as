package serverProto.formation
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.formationBase.ProtoFormationInfo;
   import serverProto.baseInfo.ProtoNinjaInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPopularFormationQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoPopularFormationQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoPopularFormationQueryRsp.player_id","playerId",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const ROLE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.formation.ProtoPopularFormationQueryRsp.role_name","roleName",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ROLE_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationQueryRsp.role_level","roleLevel",4 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationQueryRsp.role_category","roleCategory",5 << 3 | WireType.VARINT);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.formation.ProtoPopularFormationQueryRsp.guild_name","guildName",6 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationQueryRsp.rank","rank",7 << 3 | WireType.VARINT);
      
      public static const CHECK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationQueryRsp.check_status","checkStatus",8 << 3 | WireType.VARINT);
      
      public static const FORMATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoPopularFormationQueryRsp.formation","formation",9 << 3 | WireType.LENGTH_DELIMITED,ProtoFormationInfo);
      
      public static const TALENT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoPopularFormationQueryRsp.talent","talent",10 << 3 | WireType.LENGTH_DELIMITED,ProtoPopularFormationTalent);
      
      public static const NINJA_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoPopularFormationQueryRsp.ninja_info","ninjaInfo",11 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
       
      public var ret:ProtoRetInfo;
      
      private var player_id$field:ProtoPlayerKey;
      
      private var role_name$field:String;
      
      private var role_level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var role_category$field:uint;
      
      private var guild_name$field:String;
      
      private var rank$field:uint;
      
      private var check_status$field:uint;
      
      private var formation$field:ProtoFormationInfo;
      
      private var talent$field:serverProto.formation.ProtoPopularFormationTalent;
      
      [ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
      public var ninjaInfo:Array;
      
      public function ProtoPopularFormationQueryRsp()
      {
         this.ninjaInfo = [];
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
      
      public function clearRoleLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.role_level$field = new uint();
      }
      
      public function get hasRoleLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set roleLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.role_level$field = param1;
      }
      
      public function get roleLevel() : uint
      {
         return this.role_level$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.role_category$field = new uint();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set roleCategory(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : uint
      {
         return this.role_category$field;
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
      
      public function clearRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.rank$field = new uint();
      }
      
      public function get hasRank() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set rank(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.rank$field = param1;
      }
      
      public function get rank() : uint
      {
         return this.rank$field;
      }
      
      public function clearCheckStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.check_status$field = new uint();
      }
      
      public function get hasCheckStatus() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set checkStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.check_status$field = param1;
      }
      
      public function get checkStatus() : uint
      {
         return this.check_status$field;
      }
      
      public function clearFormation() : void
      {
         this.formation$field = null;
      }
      
      public function get hasFormation() : Boolean
      {
         return this.formation$field != null;
      }
      
      public function set formation(param1:ProtoFormationInfo) : void
      {
         this.formation$field = param1;
      }
      
      public function get formation() : ProtoFormationInfo
      {
         return this.formation$field;
      }
      
      public function clearTalent() : void
      {
         this.talent$field = null;
      }
      
      public function get hasTalent() : Boolean
      {
         return this.talent$field != null;
      }
      
      public function set talent(param1:serverProto.formation.ProtoPopularFormationTalent) : void
      {
         this.talent$field = param1;
      }
      
      public function get talent() : serverProto.formation.ProtoPopularFormationTalent
      {
         return this.talent$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasRoleName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.role_name$field);
         }
         if(this.hasRoleLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.role_level$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.role_category$field);
         }
         if(this.hasGuildName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_STRING(param1,this.guild_name$field);
         }
         if(this.hasRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.rank$field);
         }
         if(this.hasCheckStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.check_status$field);
         }
         if(this.hasFormation)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.formation$field);
         }
         if(this.hasTalent)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.talent$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaInfo[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
