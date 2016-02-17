package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class MonthCardInfo extends Message
   {
      
      public static const MONTH_CARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.MonthCardInfo.month_card_status","monthCardStatus",1 << 3 | WireType.VARINT);
      
      public static const DAILY_AWARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.MonthCardInfo.daily_award_status","dailyAwardStatus",2 << 3 | WireType.VARINT);
      
      public static const AWARD_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.MonthCardInfo.award_list","awardList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardList);
       
      private var month_card_status$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var daily_award_status$field:uint;
      
      private var award_list$field:serverProto.activity.ProtoAwardList;
      
      public function MonthCardInfo()
      {
         super();
      }
      
      public function clearMonthCardStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.month_card_status$field = new uint();
      }
      
      public function get hasMonthCardStatus() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set monthCardStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.month_card_status$field = param1;
      }
      
      public function get monthCardStatus() : uint
      {
         return this.month_card_status$field;
      }
      
      public function clearDailyAwardStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.daily_award_status$field = new uint();
      }
      
      public function get hasDailyAwardStatus() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set dailyAwardStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.daily_award_status$field = param1;
      }
      
      public function get dailyAwardStatus() : uint
      {
         return this.daily_award_status$field;
      }
      
      public function clearAwardList() : void
      {
         this.award_list$field = null;
      }
      
      public function get hasAwardList() : Boolean
      {
         return this.award_list$field != null;
      }
      
      public function set awardList(param1:serverProto.activity.ProtoAwardList) : void
      {
         this.award_list$field = param1;
      }
      
      public function get awardList() : serverProto.activity.ProtoAwardList
      {
         return this.award_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasMonthCardStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.month_card_status$field);
         }
         if(this.hasDailyAwardStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.daily_award_status$field);
         }
         if(this.hasAwardList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award_list$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
