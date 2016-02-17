package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildRank extends Message
   {
      
      public static const RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRank.rank","rank",1 << 3 | WireType.VARINT);
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGuildRank.guild_id","guildId",2 << 3 | WireType.VARINT);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildRank.guild_name","guildName",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const GUILD_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRank.guild_level","guildLevel",4 << 3 | WireType.VARINT);
      
      public static const CHIEF_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildRank.chief_id","chiefId",5 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const CHIEF_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildRank.chief_name","chiefName",6 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const GUILD_DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRank.guild_data","guildData",7 << 3 | WireType.VARINT);
      
      public static const GUILD_MEMBER_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRank.guild_member_count","guildMemberCount",8 << 3 | WireType.VARINT);
      
      public static const MAX_GUILD_MEMBER_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRank.max_guild_member_count","maxGuildMemberCount",9 << 3 | WireType.VARINT);
       
      private var rank$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var guild_id$field:UInt64;
      
      private var guild_name$field:String;
      
      private var guild_level$field:uint;
      
      private var chief_id$field:ProtoPlayerKey;
      
      private var chief_name$field:String;
      
      private var guild_data$field:uint;
      
      private var guild_member_count$field:uint;
      
      private var max_guild_member_count$field:uint;
      
      public function ProtoGuildRank()
      {
         super();
      }
      
      public function clearRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rank$field = new uint();
      }
      
      public function get hasRank() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set rank(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rank$field = param1;
      }
      
      public function get rank() : uint
      {
         return this.rank$field;
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
      
      public function clearGuildLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.guild_level$field = new uint();
      }
      
      public function get hasGuildLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set guildLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.guild_level$field = param1;
      }
      
      public function get guildLevel() : uint
      {
         return this.guild_level$field;
      }
      
      public function clearChiefId() : void
      {
         this.chief_id$field = null;
      }
      
      public function get hasChiefId() : Boolean
      {
         return this.chief_id$field != null;
      }
      
      public function set chiefId(param1:ProtoPlayerKey) : void
      {
         this.chief_id$field = param1;
      }
      
      public function get chiefId() : ProtoPlayerKey
      {
         return this.chief_id$field;
      }
      
      public function clearChiefName() : void
      {
         this.chief_name$field = null;
      }
      
      public function get hasChiefName() : Boolean
      {
         return this.chief_name$field != null;
      }
      
      public function set chiefName(param1:String) : void
      {
         this.chief_name$field = param1;
      }
      
      public function get chiefName() : String
      {
         return this.chief_name$field;
      }
      
      public function clearGuildData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.guild_data$field = new uint();
      }
      
      public function get hasGuildData() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set guildData(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.guild_data$field = param1;
      }
      
      public function get guildData() : uint
      {
         return this.guild_data$field;
      }
      
      public function clearGuildMemberCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.guild_member_count$field = new uint();
      }
      
      public function get hasGuildMemberCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set guildMemberCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.guild_member_count$field = param1;
      }
      
      public function get guildMemberCount() : uint
      {
         return this.guild_member_count$field;
      }
      
      public function clearMaxGuildMemberCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.max_guild_member_count$field = new uint();
      }
      
      public function get hasMaxGuildMemberCount() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set maxGuildMemberCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.max_guild_member_count$field = param1;
      }
      
      public function get maxGuildMemberCount() : uint
      {
         return this.max_guild_member_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.rank$field);
         }
         if(this.hasGuildId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT64(param1,this.guild_id$field);
         }
         if(this.hasGuildName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.guild_name$field);
         }
         if(this.hasGuildLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_level$field);
         }
         if(this.hasChiefId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.chief_id$field);
         }
         if(this.hasChiefName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_STRING(param1,this.chief_name$field);
         }
         if(this.hasGuildData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_data$field);
         }
         if(this.hasGuildMemberCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_member_count$field);
         }
         if(this.hasMaxGuildMemberCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.max_guild_member_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
