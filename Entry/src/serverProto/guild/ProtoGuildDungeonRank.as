package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildDungeonRank extends Message
   {
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGuildDungeonRank.guild_id","guildId",1 << 3 | WireType.VARINT);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDungeonRank.guild_name","guildName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const PLAYER:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonRank.player","player",3 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildDungeonPlayer);
      
      public static const DIFFICULTY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonRank.difficulty","difficulty",4 << 3 | WireType.VARINT);
      
      public static const ROUND:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonRank.round","round",5 << 3 | WireType.VARINT);
      
      public static const DEAD_NONJA_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonRank.dead_nonja_count","deadNonjaCount",6 << 3 | WireType.VARINT);
       
      private var guild_id$field:UInt64;
      
      private var guild_name$field:String;
      
      [ArrayElementType("serverProto.guild.ProtoGuildDungeonPlayer")]
      public var player:Array;
      
      private var difficulty$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var round$field:uint;
      
      private var dead_nonja_count$field:uint;
      
      public function ProtoGuildDungeonRank()
      {
         this.player = [];
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
      
      public function clearDifficulty() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.difficulty$field = new uint();
      }
      
      public function get hasDifficulty() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set difficulty(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.difficulty$field = param1;
      }
      
      public function get difficulty() : uint
      {
         return this.difficulty$field;
      }
      
      public function clearRound() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.round$field = new uint();
      }
      
      public function get hasRound() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set round(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.round$field = param1;
      }
      
      public function get round() : uint
      {
         return this.round$field;
      }
      
      public function clearDeadNonjaCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.dead_nonja_count$field = new uint();
      }
      
      public function get hasDeadNonjaCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set deadNonjaCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.dead_nonja_count$field = param1;
      }
      
      public function get deadNonjaCount() : uint
      {
         return this.dead_nonja_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
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
         var _loc2_:uint = 0;
         while(_loc2_ < this.player.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player[_loc2_]);
            _loc2_++;
         }
         if(this.hasDifficulty)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.difficulty$field);
         }
         if(this.hasRound)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.round$field);
         }
         if(this.hasDeadNonjaCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.dead_nonja_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
