package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTinyRoundNotify extends Message
   {
      
      public static const ACTION:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTinyRoundNotify.action","action",1 << 3 | WireType.LENGTH_DELIMITED,ProtoMetaAction);
      
      public static const IS_FIGHT_OVER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoTinyRoundNotify.is_fight_over","isFightOver",2 << 3 | WireType.VARINT);
      
      public static const TINY_ROUND_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoTinyRoundNotify.tiny_round_id","tinyRoundId",3 << 3 | WireType.VARINT);
      
      public static const LEFT_BATTLE_ROUND:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTinyRoundNotify.left_battle_round","leftBattleRound",4 << 3 | WireType.VARINT);
      
      public static const TOTAL_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoTinyRoundNotify.total_times","totalTimes",5 << 3 | WireType.VARINT);
       
      [ArrayElementType("serverProto.fight.ProtoMetaAction")]
      public var action:Array;
      
      private var is_fight_over$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var tiny_round_id$field:int;
      
      private var left_battle_round$field:int;
      
      private var total_times$field:uint;
      
      public function ProtoTinyRoundNotify()
      {
         this.action = [];
         super();
      }
      
      public function clearIsFightOver() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_fight_over$field = new Boolean();
      }
      
      public function get hasIsFightOver() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isFightOver(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_fight_over$field = param1;
      }
      
      public function get isFightOver() : Boolean
      {
         return this.is_fight_over$field;
      }
      
      public function clearTinyRoundId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.tiny_round_id$field = new int();
      }
      
      public function get hasTinyRoundId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set tinyRoundId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.tiny_round_id$field = param1;
      }
      
      public function get tinyRoundId() : int
      {
         return this.tiny_round_id$field;
      }
      
      public function clearLeftBattleRound() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.left_battle_round$field = new int();
      }
      
      public function get hasLeftBattleRound() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set leftBattleRound(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.left_battle_round$field = param1;
      }
      
      public function get leftBattleRound() : int
      {
         return this.left_battle_round$field;
      }
      
      public function clearTotalTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.total_times$field = new uint();
      }
      
      public function get hasTotalTimes() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set totalTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.total_times$field = param1;
      }
      
      public function get totalTimes() : uint
      {
         return this.total_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.action.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.action[_loc2_]);
            _loc2_++;
         }
         if(this.hasIsFightOver)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.is_fight_over$field);
         }
         if(this.hasTinyRoundId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.tiny_round_id$field);
         }
         if(this.hasLeftBattleRound)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.left_battle_round$field);
         }
         if(this.hasTotalTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.total_times$field);
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
