package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBuyMonthCardRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoBuyMonthCardRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const AWARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBuyMonthCardRsp.award_status","awardStatus",2 << 3 | WireType.VARINT);
      
      public static const MONTH_CARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBuyMonthCardRsp.month_card_status","monthCardStatus",3 << 3 | WireType.VARINT);
      
      public static const MONTH_CARD_DAY_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBuyMonthCardRsp.month_card_day_count","monthCardDayCount",4 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var award_status$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var month_card_status$field:uint;
      
      private var month_card_day_count$field:uint;
      
      public function ProtoBuyMonthCardRsp()
      {
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearAwardStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.award_status$field = new uint();
      }
      
      public function get hasAwardStatus() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set awardStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.award_status$field = param1;
      }
      
      public function get awardStatus() : uint
      {
         return this.award_status$field;
      }
      
      public function clearMonthCardStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.month_card_status$field = new uint();
      }
      
      public function get hasMonthCardStatus() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set monthCardStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.month_card_status$field = param1;
      }
      
      public function get monthCardStatus() : uint
      {
         return this.month_card_status$field;
      }
      
      public function clearMonthCardDayCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.month_card_day_count$field = new uint();
      }
      
      public function get hasMonthCardDayCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set monthCardDayCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.month_card_day_count$field = param1;
      }
      
      public function get monthCardDayCount() : uint
      {
         return this.month_card_day_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasAwardStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.award_status$field);
         }
         if(this.hasMonthCardStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.month_card_status$field);
         }
         if(this.hasMonthCardDayCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.month_card_day_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
