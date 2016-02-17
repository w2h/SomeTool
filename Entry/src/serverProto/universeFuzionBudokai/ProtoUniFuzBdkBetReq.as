package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniFuzBdkBetReq extends Message
   {
      
      public static const GROUP_IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetReq.group_idx","groupIdx",1 << 3 | WireType.VARINT);
      
      public static const WAR_IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetReq.war_idx","warIdx",2 << 3 | WireType.VARINT);
      
      public static const BATTLE_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetReq.battle_count","battleCount",3 << 3 | WireType.VARINT);
      
      public static const BET_SIDE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetReq.bet_side","betSide",4 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetReq.score","score",5 << 3 | WireType.VARINT);
      
      public static const CHIP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetReq.chip","chip",6 << 3 | WireType.VARINT);
       
      public var groupIdx:int;
      
      public var warIdx:int;
      
      public var battleCount:int;
      
      public var betSide:int;
      
      private var score$field:int;
      
      private var hasField$0:uint = 0;
      
      private var chip$field:int;
      
      public function ProtoUniFuzBdkBetReq()
      {
         super();
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.score$field = new int();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set score(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.score$field = param1;
      }
      
      public function get score() : int
      {
         return this.score$field;
      }
      
      public function clearChip() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.chip$field = new int();
      }
      
      public function get hasChip() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set chip(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.chip$field = param1;
      }
      
      public function get chip() : int
      {
         return this.chip$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.groupIdx);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_SINT32(param1,this.warIdx);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_SINT32(param1,this.battleCount);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_SINT32(param1,this.betSide);
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.score$field);
         }
         if(this.hasChip)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.chip$field);
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
