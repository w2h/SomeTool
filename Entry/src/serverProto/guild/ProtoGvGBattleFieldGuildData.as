package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGvGBattleFieldGuildData extends Message
   {
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGvGBattleFieldGuildData.guild_id","guildId",1 << 3 | WireType.VARINT);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGvGBattleFieldGuildData.guild_name","guildName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const GUILD_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldGuildData.guild_lvl","guildLvl",3 << 3 | WireType.VARINT);
      
      public static const JOIN_MEMBER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldGuildData.join_member_num","joinMemberNum",4 << 3 | WireType.VARINT);
      
      public static const TOTAL_BATTLE_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldGuildData.total_battle_score","totalBattleScore",5 << 3 | WireType.VARINT);
       
      private var guild_id$field:UInt64;
      
      private var guild_name$field:String;
      
      private var guild_lvl$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var join_member_num$field:uint;
      
      private var total_battle_score$field:uint;
      
      public function ProtoGvGBattleFieldGuildData()
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
      
      public function clearJoinMemberNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.join_member_num$field = new uint();
      }
      
      public function get hasJoinMemberNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set joinMemberNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.join_member_num$field = param1;
      }
      
      public function get joinMemberNum() : uint
      {
         return this.join_member_num$field;
      }
      
      public function clearTotalBattleScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.total_battle_score$field = new uint();
      }
      
      public function get hasTotalBattleScore() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set totalBattleScore(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.total_battle_score$field = param1;
      }
      
      public function get totalBattleScore() : uint
      {
         return this.total_battle_score$field;
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
         if(this.hasJoinMemberNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.join_member_num$field);
         }
         if(this.hasTotalBattleScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.total_battle_score$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
