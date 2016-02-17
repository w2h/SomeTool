package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoNinjaSimpleInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildDungeonPlayer extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonPlayer.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDungeonPlayer.player_name","playerName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const NINJA_SIMPLE_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonPlayer.ninja_simple_info","ninjaSimpleInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaSimpleInfo);
      
      public static const TOTAL_COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonPlayer.total_combat_power","totalCombatPower",4 << 3 | WireType.VARINT);
      
      public static const SUMMON_MONSTER_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonPlayer.summon_monster_id","summonMonsterId",5 << 3 | WireType.VARINT);
       
      private var player_id$field:ProtoPlayerKey;
      
      private var player_name$field:String;
      
      [ArrayElementType("serverProto.inc.ProtoNinjaSimpleInfo")]
      public var ninjaSimpleInfo:Array;
      
      private var total_combat_power$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var summon_monster_id$field:uint;
      
      public function ProtoGuildDungeonPlayer()
      {
         this.ninjaSimpleInfo = [];
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
      
      public function clearTotalCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.total_combat_power$field = new uint();
      }
      
      public function get hasTotalCombatPower() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set totalCombatPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.total_combat_power$field = param1;
      }
      
      public function get totalCombatPower() : uint
      {
         return this.total_combat_power$field;
      }
      
      public function clearSummonMonsterId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.summon_monster_id$field = new uint();
      }
      
      public function get hasSummonMonsterId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set summonMonsterId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.summon_monster_id$field = param1;
      }
      
      public function get summonMonsterId() : uint
      {
         return this.summon_monster_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasPlayerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.player_name$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaSimpleInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaSimpleInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasTotalCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.total_combat_power$field);
         }
         if(this.hasSummonMonsterId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.summon_monster_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
