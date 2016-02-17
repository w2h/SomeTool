package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGvGBattleFieldData extends Message
   {
      
      public static const BATTLE_RESULT:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGvGBattleFieldData.battle_result","battleResult",1 << 3 | WireType.VARINT,ProtoGvGBattleResult);
      
      public static const BATTLE_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldData.battle_score","battleScore",2 << 3 | WireType.VARINT);
      
      public static const PLAYER_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldData.player_info","playerInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGBattleFieldPlayerData);
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldData.id","id",4 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGvGBattleFieldData.name","name",5 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const WIN_REASON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldData.win_reason","winReason",6 << 3 | WireType.VARINT);
      
      public static const BEAST_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldData.beast_info","beastInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildBeastInfo);
       
      private var battle_result$field:int;
      
      private var hasField$0:uint = 0;
      
      private var battle_score$field:uint;
      
      [ArrayElementType("serverProto.guild.ProtoGvGBattleFieldPlayerData")]
      public var playerInfo:Array;
      
      private var id$field:uint;
      
      private var name$field:String;
      
      private var win_reason$field:uint;
      
      private var beast_info$field:serverProto.guild.ProtoGuildBeastInfo;
      
      public function ProtoGvGBattleFieldData()
      {
         this.playerInfo = [];
         super();
      }
      
      public function clearBattleResult() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.battle_result$field = new int();
      }
      
      public function get hasBattleResult() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set battleResult(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.battle_result$field = param1;
      }
      
      public function get battleResult() : int
      {
         return this.battle_result$field;
      }
      
      public function clearBattleScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.battle_score$field = new uint();
      }
      
      public function get hasBattleScore() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set battleScore(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.battle_score$field = param1;
      }
      
      public function get battleScore() : uint
      {
         return this.battle_score$field;
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.id$field = new uint();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set id(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.id$field = param1;
      }
      
      public function get id() : uint
      {
         return this.id$field;
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearWinReason() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.win_reason$field = new uint();
      }
      
      public function get hasWinReason() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set winReason(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.win_reason$field = param1;
      }
      
      public function get winReason() : uint
      {
         return this.win_reason$field;
      }
      
      public function clearBeastInfo() : void
      {
         this.beast_info$field = null;
      }
      
      public function get hasBeastInfo() : Boolean
      {
         return this.beast_info$field != null;
      }
      
      public function set beastInfo(param1:serverProto.guild.ProtoGuildBeastInfo) : void
      {
         this.beast_info$field = param1;
      }
      
      public function get beastInfo() : serverProto.guild.ProtoGuildBeastInfo
      {
         return this.beast_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasBattleResult)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.battle_result$field);
         }
         if(this.hasBattleScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.battle_score$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.playerInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.playerInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.id$field);
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasWinReason)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.win_reason$field);
         }
         if(this.hasBeastInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.beast_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
