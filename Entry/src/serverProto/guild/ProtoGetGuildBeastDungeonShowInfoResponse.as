package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetGuildBeastDungeonShowInfoResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGetGuildBeastDungeonShowInfoResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const GUILD_BEAST_MAX_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGetGuildBeastDungeonShowInfoResponse.guild_beast_max_hp","guildBeastMaxHp",2 << 3 | WireType.VARINT);
      
      public static const GUILD_BEAST_CURRENT_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGetGuildBeastDungeonShowInfoResponse.guild_beast_current_hp","guildBeastCurrentHp",3 << 3 | WireType.VARINT);
      
      public static const RANK_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGetGuildBeastDungeonShowInfoResponse.rank_list","rankList",4 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildBeastDungeonRankInfo);
      
      public static const SELF_RANK_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGetGuildBeastDungeonShowInfoResponse.self_rank_info","selfRankInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildBeastDungeonRankInfo);
      
      public static const REMAINDER_SECOND:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGetGuildBeastDungeonShowInfoResponse.remainder_second","remainderSecond",6 << 3 | WireType.VARINT);
      
      public static const BATTLE_NPC_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGetGuildBeastDungeonShowInfoResponse.battle_npc_id","battleNpcId",7 << 3 | WireType.VARINT);
      
      public static const MAX_RELIVE_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGetGuildBeastDungeonShowInfoResponse.max_relive_times","maxReliveTimes",8 << 3 | WireType.VARINT);
      
      public static const REMAINDER_RELIVE_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGetGuildBeastDungeonShowInfoResponse.remainder_relive_times","remainderReliveTimes",9 << 3 | WireType.VARINT);
      
      public static const GUILD_BEAST_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGetGuildBeastDungeonShowInfoResponse.guild_beast_level","guildBeastLevel",10 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var guild_beast_max_hp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var guild_beast_current_hp$field:int;
      
      [ArrayElementType("serverProto.guild.ProtoGuildBeastDungeonRankInfo")]
      public var rankList:Array;
      
      private var self_rank_info$field:serverProto.guild.ProtoGuildBeastDungeonRankInfo;
      
      private var remainder_second$field:int;
      
      private var battle_npc_id$field:int;
      
      private var max_relive_times$field:int;
      
      private var remainder_relive_times$field:int;
      
      private var guild_beast_level$field:int;
      
      public function ProtoGetGuildBeastDungeonShowInfoResponse()
      {
         this.rankList = [];
         super();
      }
      
      public function clearGuildBeastMaxHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.guild_beast_max_hp$field = new int();
      }
      
      public function get hasGuildBeastMaxHp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set guildBeastMaxHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.guild_beast_max_hp$field = param1;
      }
      
      public function get guildBeastMaxHp() : int
      {
         return this.guild_beast_max_hp$field;
      }
      
      public function clearGuildBeastCurrentHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.guild_beast_current_hp$field = new int();
      }
      
      public function get hasGuildBeastCurrentHp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set guildBeastCurrentHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.guild_beast_current_hp$field = param1;
      }
      
      public function get guildBeastCurrentHp() : int
      {
         return this.guild_beast_current_hp$field;
      }
      
      public function clearSelfRankInfo() : void
      {
         this.self_rank_info$field = null;
      }
      
      public function get hasSelfRankInfo() : Boolean
      {
         return this.self_rank_info$field != null;
      }
      
      public function set selfRankInfo(param1:serverProto.guild.ProtoGuildBeastDungeonRankInfo) : void
      {
         this.self_rank_info$field = param1;
      }
      
      public function get selfRankInfo() : serverProto.guild.ProtoGuildBeastDungeonRankInfo
      {
         return this.self_rank_info$field;
      }
      
      public function clearRemainderSecond() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.remainder_second$field = new int();
      }
      
      public function get hasRemainderSecond() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set remainderSecond(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.remainder_second$field = param1;
      }
      
      public function get remainderSecond() : int
      {
         return this.remainder_second$field;
      }
      
      public function clearBattleNpcId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.battle_npc_id$field = new int();
      }
      
      public function get hasBattleNpcId() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set battleNpcId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.battle_npc_id$field = param1;
      }
      
      public function get battleNpcId() : int
      {
         return this.battle_npc_id$field;
      }
      
      public function clearMaxReliveTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.max_relive_times$field = new int();
      }
      
      public function get hasMaxReliveTimes() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set maxReliveTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.max_relive_times$field = param1;
      }
      
      public function get maxReliveTimes() : int
      {
         return this.max_relive_times$field;
      }
      
      public function clearRemainderReliveTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.remainder_relive_times$field = new int();
      }
      
      public function get hasRemainderReliveTimes() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set remainderReliveTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.remainder_relive_times$field = param1;
      }
      
      public function get remainderReliveTimes() : int
      {
         return this.remainder_relive_times$field;
      }
      
      public function clearGuildBeastLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.guild_beast_level$field = new int();
      }
      
      public function get hasGuildBeastLevel() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set guildBeastLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.guild_beast_level$field = param1;
      }
      
      public function get guildBeastLevel() : int
      {
         return this.guild_beast_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasGuildBeastMaxHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.guild_beast_max_hp$field);
         }
         if(this.hasGuildBeastCurrentHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.guild_beast_current_hp$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.rankList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rankList[_loc2_]);
            _loc2_++;
         }
         if(this.hasSelfRankInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.self_rank_info$field);
         }
         if(this.hasRemainderSecond)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_second$field);
         }
         if(this.hasBattleNpcId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.battle_npc_id$field);
         }
         if(this.hasMaxReliveTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.max_relive_times$field);
         }
         if(this.hasRemainderReliveTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_relive_times$field);
         }
         if(this.hasGuildBeastLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.guild_beast_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
