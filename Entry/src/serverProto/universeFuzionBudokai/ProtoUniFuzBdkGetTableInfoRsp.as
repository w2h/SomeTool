package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniFuzBdkGetTableInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoUniFuzBdkGetTableInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const HAVE_SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkGetTableInfoRsp.have_score","haveScore",2 << 3 | WireType.VARINT);
      
      public static const HAVE_CHIP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkGetTableInfoRsp.have_chip","haveChip",3 << 3 | WireType.VARINT);
      
      public static const LEFT_SCORE_BET_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkGetTableInfoRsp.left_score_bet_times","leftScoreBetTimes",4 << 3 | WireType.VARINT);
      
      public static const LEFT_CHIP_BET_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkGetTableInfoRsp.left_chip_bet_times","leftChipBetTimes",5 << 3 | WireType.VARINT);
      
      public static const BET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoUniFuzBdkGetTableInfoRsp.bet_info","betInfo",6 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkBetInfo);
       
      public var ret:ProtoRetInfo;
      
      private var have_score$field:int;
      
      private var hasField$0:uint = 0;
      
      private var have_chip$field:int;
      
      private var left_score_bet_times$field:int;
      
      private var left_chip_bet_times$field:int;
      
      private var bet_info$field:serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetInfo;
      
      public function ProtoUniFuzBdkGetTableInfoRsp()
      {
         super();
      }
      
      public function clearHaveScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.have_score$field = new int();
      }
      
      public function get hasHaveScore() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set haveScore(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.have_score$field = param1;
      }
      
      public function get haveScore() : int
      {
         return this.have_score$field;
      }
      
      public function clearHaveChip() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.have_chip$field = new int();
      }
      
      public function get hasHaveChip() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set haveChip(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.have_chip$field = param1;
      }
      
      public function get haveChip() : int
      {
         return this.have_chip$field;
      }
      
      public function clearLeftScoreBetTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.left_score_bet_times$field = new int();
      }
      
      public function get hasLeftScoreBetTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set leftScoreBetTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.left_score_bet_times$field = param1;
      }
      
      public function get leftScoreBetTimes() : int
      {
         return this.left_score_bet_times$field;
      }
      
      public function clearLeftChipBetTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.left_chip_bet_times$field = new int();
      }
      
      public function get hasLeftChipBetTimes() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set leftChipBetTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.left_chip_bet_times$field = param1;
      }
      
      public function get leftChipBetTimes() : int
      {
         return this.left_chip_bet_times$field;
      }
      
      public function clearBetInfo() : void
      {
         this.bet_info$field = null;
      }
      
      public function get hasBetInfo() : Boolean
      {
         return this.bet_info$field != null;
      }
      
      public function set betInfo(param1:serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetInfo) : void
      {
         this.bet_info$field = param1;
      }
      
      public function get betInfo() : serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetInfo
      {
         return this.bet_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasHaveScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.have_score$field);
         }
         if(this.hasHaveChip)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.have_chip$field);
         }
         if(this.hasLeftScoreBetTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.left_score_bet_times$field);
         }
         if(this.hasLeftChipBetTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.left_chip_bet_times$field);
         }
         if(this.hasBetInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.bet_info$field);
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
