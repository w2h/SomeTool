package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDailyWelfareQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoDailyWelfareQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyWelfareQueryRsp.vip_level","vipLevel",2 << 3 | WireType.VARINT);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoDailyWelfareQueryRsp.package_boxes","packageBoxes",3 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const MONTH_CARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyWelfareQueryRsp.month_card_status","monthCardStatus",4 << 3 | WireType.VARINT);
      
      public static const MONTH_CARD_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyWelfareQueryRsp.month_card_price","monthCardPrice",5 << 3 | WireType.VARINT);
      
      public static const MONTH_CARD_AWARD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyWelfareQueryRsp.month_card_award","monthCardAward",6 << 3 | WireType.VARINT);
      
      public static const MONTH_CARD_DAY_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyWelfareQueryRsp.month_card_day_count","monthCardDayCount",7 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var vip_level$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      private var month_card_status$field:uint;
      
      private var month_card_price$field:uint;
      
      private var month_card_award$field:uint;
      
      private var month_card_day_count$field:uint;
      
      public function ProtoDailyWelfareQueryRsp()
      {
         this.packageBoxes = [];
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
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.vip_level$field = new uint();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set vipLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : uint
      {
         return this.vip_level$field;
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
      
      public function clearMonthCardPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.month_card_price$field = new uint();
      }
      
      public function get hasMonthCardPrice() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set monthCardPrice(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.month_card_price$field = param1;
      }
      
      public function get monthCardPrice() : uint
      {
         return this.month_card_price$field;
      }
      
      public function clearMonthCardAward() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.month_card_award$field = new uint();
      }
      
      public function get hasMonthCardAward() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set monthCardAward(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.month_card_award$field = param1;
      }
      
      public function get monthCardAward() : uint
      {
         return this.month_card_award$field;
      }
      
      public function clearMonthCardDayCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.month_card_day_count$field = new uint();
      }
      
      public function get hasMonthCardDayCount() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set monthCardDayCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.month_card_day_count$field = param1;
      }
      
      public function get monthCardDayCount() : uint
      {
         return this.month_card_day_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.vip_level$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBoxes[_loc2_]);
            _loc2_++;
         }
         if(this.hasMonthCardStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.month_card_status$field);
         }
         if(this.hasMonthCardPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.month_card_price$field);
         }
         if(this.hasMonthCardAward)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.month_card_award$field);
         }
         if(this.hasMonthCardDayCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.month_card_day_count$field);
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
