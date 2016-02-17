package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoPlayerVipLevel;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoVipRenewGiftRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoVipRenewGiftRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.activity_begin_time","activityBeginTime",2 << 3 | WireType.VARINT);
      
      public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.activity_end_time","activityEndTime",3 << 3 | WireType.VARINT);
      
      public static const PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.price","price",4 << 3 | WireType.VARINT);
      
      public static const DAYS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.days","days",5 << 3 | WireType.VARINT);
      
      public static const MAX_REBATE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.max_rebate_count","maxRebateCount",6 << 3 | WireType.VARINT);
      
      public static const RATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.rate","rate",7 << 3 | WireType.VARINT);
      
      public static const AVAILABLE_REBATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.available_rebate","availableRebate",8 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.activity.ProtoVipRenewGiftRsp.vip_level","vipLevel",9 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const REMAINDER_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.remainder_day","remainderDay",10 << 3 | WireType.VARINT);
      
      public static const VIP3_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.vip3_count","vip3Count",11 << 3 | WireType.VARINT);
      
      public static const NEXT_REBATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.next_rebate","nextRebate",12 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var activity_begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var activity_end_time$field:uint;
      
      private var price$field:uint;
      
      private var days$field:uint;
      
      private var max_rebate_count$field:uint;
      
      private var rate$field:uint;
      
      private var available_rebate$field:uint;
      
      private var vip_level$field:int;
      
      private var remainder_day$field:uint;
      
      private var vip3_count$field:uint;
      
      private var next_rebate$field:uint;
      
      public function ProtoVipRenewGiftRsp()
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
      
      public function clearActivityBeginTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.activity_begin_time$field = new uint();
      }
      
      public function get hasActivityBeginTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set activityBeginTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.activity_begin_time$field = param1;
      }
      
      public function get activityBeginTime() : uint
      {
         return this.activity_begin_time$field;
      }
      
      public function clearActivityEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.activity_end_time$field = new uint();
      }
      
      public function get hasActivityEndTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set activityEndTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.activity_end_time$field = param1;
      }
      
      public function get activityEndTime() : uint
      {
         return this.activity_end_time$field;
      }
      
      public function clearPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.price$field = new uint();
      }
      
      public function get hasPrice() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set price(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.price$field = param1;
      }
      
      public function get price() : uint
      {
         return this.price$field;
      }
      
      public function clearDays() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.days$field = new uint();
      }
      
      public function get hasDays() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set days(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.days$field = param1;
      }
      
      public function get days() : uint
      {
         return this.days$field;
      }
      
      public function clearMaxRebateCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.max_rebate_count$field = new uint();
      }
      
      public function get hasMaxRebateCount() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set maxRebateCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.max_rebate_count$field = param1;
      }
      
      public function get maxRebateCount() : uint
      {
         return this.max_rebate_count$field;
      }
      
      public function clearRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.rate$field = new uint();
      }
      
      public function get hasRate() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set rate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.rate$field = param1;
      }
      
      public function get rate() : uint
      {
         return this.rate$field;
      }
      
      public function clearAvailableRebate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.available_rebate$field = new uint();
      }
      
      public function get hasAvailableRebate() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set availableRebate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.available_rebate$field = param1;
      }
      
      public function get availableRebate() : uint
      {
         return this.available_rebate$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
      }
      
      public function clearRemainderDay() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.remainder_day$field = new uint();
      }
      
      public function get hasRemainderDay() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set remainderDay(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.remainder_day$field = param1;
      }
      
      public function get remainderDay() : uint
      {
         return this.remainder_day$field;
      }
      
      public function clearVip3Count() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.vip3_count$field = new uint();
      }
      
      public function get hasVip3Count() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set vip3Count(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.vip3_count$field = param1;
      }
      
      public function get vip3Count() : uint
      {
         return this.vip3_count$field;
      }
      
      public function clearNextRebate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.next_rebate$field = new uint();
      }
      
      public function get hasNextRebate() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set nextRebate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.next_rebate$field = param1;
      }
      
      public function get nextRebate() : uint
      {
         return this.next_rebate$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasActivityBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.activity_begin_time$field);
         }
         if(this.hasActivityEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.activity_end_time$field);
         }
         if(this.hasPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.price$field);
         }
         if(this.hasDays)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.days$field);
         }
         if(this.hasMaxRebateCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.max_rebate_count$field);
         }
         if(this.hasRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.rate$field);
         }
         if(this.hasAvailableRebate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.available_rebate$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasRemainderDay)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.remainder_day$field);
         }
         if(this.hasVip3Count)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.vip3_count$field);
         }
         if(this.hasNextRebate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.next_rebate$field);
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
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
