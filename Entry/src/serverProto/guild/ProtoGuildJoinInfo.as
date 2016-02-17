package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildJoinInfo extends Message
   {
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGuildJoinInfo.guild_id","guildId",1 << 3 | WireType.VARINT);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildJoinInfo.guild_name","guildName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CHIEF_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildJoinInfo.chief_id","chiefId",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const CHIEF_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildJoinInfo.chief_name","chiefName",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const GUILD_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildJoinInfo.guild_lvl","guildLvl",5 << 3 | WireType.VARINT);
      
      public static const GUILD_MEMBER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildJoinInfo.guild_member_num","guildMemberNum",6 << 3 | WireType.VARINT);
      
      public static const MAX_GUILD_MEMBER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildJoinInfo.max_guild_member_num","maxGuildMemberNum",7 << 3 | WireType.VARINT);
       
      private var guild_id$field:UInt64;
      
      private var guild_name$field:String;
      
      private var chief_id$field:ProtoPlayerKey;
      
      private var chief_name$field:String;
      
      private var guild_lvl$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var guild_member_num$field:uint;
      
      private var max_guild_member_num$field:uint;
      
      public function ProtoGuildJoinInfo()
      {
         super();
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
      
      public function clearGuildLvl() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.guild_lvl$field = new uint();
      }
      
      public function get hasGuildLvl() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set guildLvl(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.guild_lvl$field = param1;
      }
      
      public function get guildLvl() : uint
      {
         return this.guild_lvl$field;
      }
      
      public function clearGuildMemberNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.guild_member_num$field = new uint();
      }
      
      public function get hasGuildMemberNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set guildMemberNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.guild_member_num$field = param1;
      }
      
      public function get guildMemberNum() : uint
      {
         return this.guild_member_num$field;
      }
      
      public function clearMaxGuildMemberNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.max_guild_member_num$field = new uint();
      }
      
      public function get hasMaxGuildMemberNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set maxGuildMemberNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.max_guild_member_num$field = param1;
      }
      
      public function get maxGuildMemberNum() : uint
      {
         return this.max_guild_member_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasGuildId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT64(param1,this.guild_id$field);
         }
         if(this.hasGuildName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.guild_name$field);
         }
         if(this.hasChiefId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.chief_id$field);
         }
         if(this.hasChiefName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.chief_name$field);
         }
         if(this.hasGuildLvl)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_lvl$field);
         }
         if(this.hasGuildMemberNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_member_num$field);
         }
         if(this.hasMaxGuildMemberNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.max_guild_member_num$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
