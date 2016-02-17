package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.GuildMemberIdentity;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildClientData extends Message
   {
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGuildClientData.guild_id","guildId",1 << 3 | WireType.VARINT);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildClientData.guild_name","guildName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const GUILD_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildClientData.guild_lvl","guildLvl",3 << 3 | WireType.VARINT);
      
      public static const MEMBER_IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildClientData.member_identity","memberIdentity",4 << 3 | WireType.VARINT,GuildMemberIdentity);
      
      public static const OPEN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildClientData.open_level","openLevel",5 << 3 | WireType.VARINT);
      
      public static const CREATE_INGOT_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildClientData.create_ingot_cost","createIngotCost",6 << 3 | WireType.VARINT);
       
      private var guild_id$field:UInt64;
      
      private var guild_name$field:String;
      
      private var guild_lvl$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var member_identity$field:int;
      
      private var open_level$field:uint;
      
      private var create_ingot_cost$field:uint;
      
      public function ProtoGuildClientData()
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
      
      public function clearMemberIdentity() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.member_identity$field = new int();
      }
      
      public function get hasMemberIdentity() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set memberIdentity(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.member_identity$field = param1;
      }
      
      public function get memberIdentity() : int
      {
         return this.member_identity$field;
      }
      
      public function clearOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.open_level$field = new uint();
      }
      
      public function get hasOpenLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set openLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.open_level$field = param1;
      }
      
      public function get openLevel() : uint
      {
         return this.open_level$field;
      }
      
      public function clearCreateIngotCost() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.create_ingot_cost$field = new uint();
      }
      
      public function get hasCreateIngotCost() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set createIngotCost(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.create_ingot_cost$field = param1;
      }
      
      public function get createIngotCost() : uint
      {
         return this.create_ingot_cost$field;
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
         if(this.hasGuildLvl)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_lvl$field);
         }
         if(this.hasMemberIdentity)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_ENUM(param1,this.member_identity$field);
         }
         if(this.hasOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.open_level$field);
         }
         if(this.hasCreateIngotCost)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.create_ingot_cost$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
