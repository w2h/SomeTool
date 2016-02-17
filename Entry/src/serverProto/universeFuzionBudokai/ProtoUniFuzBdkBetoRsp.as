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
   
   public final class ProtoUniFuzBdkBetoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const HAVE_SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetoRsp.have_score","haveScore",2 << 3 | WireType.VARINT);
      
      public static const HAVE_CHIP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetoRsp.have_chip","haveChip",3 << 3 | WireType.VARINT);
      
      public static const LEFT_BET_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetoRsp.left_bet_times","leftBetTimes",4 << 3 | WireType.VARINT);
      
      public static const BET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetoRsp.bet_info","betInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkBetInfo);
       
      public var ret:ProtoRetInfo;
      
      private var have_score$field:int;
      
      private var hasField$0:uint = 0;
      
      private var have_chip$field:int;
      
      private var left_bet_times$field:int;
      
      private var bet_info$field:serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetInfo;
      
      public function ProtoUniFuzBdkBetoRsp()
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
      
      public function clearLeftBetTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.left_bet_times$field = new int();
      }
      
      public function get hasLeftBetTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set leftBetTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.left_bet_times$field = param1;
      }
      
      public function get leftBetTimes() : int
      {
         return this.left_bet_times$field;
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
         if(this.hasLeftBetTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.left_bet_times$field);
         }
         if(this.hasBetInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}