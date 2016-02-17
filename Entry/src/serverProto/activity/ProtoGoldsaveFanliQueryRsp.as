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
   
   public final class ProtoGoldsaveFanliQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoGoldsaveFanliQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliQueryRsp.end_time","endTime",2 << 3 | WireType.VARINT);
      
      public static const LIMIT_TOTAL_COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliQueryRsp.limit_total_coupon","limitTotalCoupon",3 << 3 | WireType.VARINT);
      
      public static const RATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliQueryRsp.rate","rate",4 << 3 | WireType.VARINT);
      
      public static const AWARD_COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliQueryRsp.award_coupon","awardCoupon",5 << 3 | WireType.VARINT);
      
      public static const REMAIN_COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliQueryRsp.remain_coupon","remainCoupon",6 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var end_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var limit_total_coupon$field:uint;
      
      private var rate$field:uint;
      
      private var award_coupon$field:uint;
      
      private var remain_coupon$field:uint;
      
      public function ProtoGoldsaveFanliQueryRsp()
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
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.end_time$field = new uint();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set endTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.end_time$field = param1;
      }
      
      public function get endTime() : uint
      {
         return this.end_time$field;
      }
      
      public function clearLimitTotalCoupon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.limit_total_coupon$field = new uint();
      }
      
      public function get hasLimitTotalCoupon() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set limitTotalCoupon(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.limit_total_coupon$field = param1;
      }
      
      public function get limitTotalCoupon() : uint
      {
         return this.limit_total_coupon$field;
      }
      
      public function clearRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.rate$field = new uint();
      }
      
      public function get hasRate() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set rate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.rate$field = param1;
      }
      
      public function get rate() : uint
      {
         return this.rate$field;
      }
      
      public function clearAwardCoupon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.award_coupon$field = new uint();
      }
      
      public function get hasAwardCoupon() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set awardCoupon(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.award_coupon$field = param1;
      }
      
      public function get awardCoupon() : uint
      {
         return this.award_coupon$field;
      }
      
      public function clearRemainCoupon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.remain_coupon$field = new uint();
      }
      
      public function get hasRemainCoupon() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set remainCoupon(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.remain_coupon$field = param1;
      }
      
      public function get remainCoupon() : uint
      {
         return this.remain_coupon$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.end_time$field);
         }
         if(this.hasLimitTotalCoupon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.limit_total_coupon$field);
         }
         if(this.hasRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.rate$field);
         }
         if(this.hasAwardCoupon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.award_coupon$field);
         }
         if(this.hasRemainCoupon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_coupon$field);
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
