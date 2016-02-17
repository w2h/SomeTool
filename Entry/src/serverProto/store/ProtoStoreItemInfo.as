package serverProto.store
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoStoreItemInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const CASH_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.cash_price","cashPrice",2 << 3 | WireType.VARINT);
      
      public static const GOLD_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.gold_price","goldPrice",3 << 3 | WireType.VARINT);
      
      public static const MEMBER_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.member_price","memberPrice",4 << 3 | WireType.VARINT);
      
      public static const PAGE_SIGN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.page_sign","pageSign",5 << 3 | WireType.VARINT);
      
      public static const SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.seq","seq",6 << 3 | WireType.VARINT);
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.begin_time","beginTime",7 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.end_time","endTime",8 << 3 | WireType.VARINT);
      
      public static const DAY_BUY_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.day_buy_num","dayBuyNum",9 << 3 | WireType.VARINT);
      
      public static const LIMIT_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.limit_level","limitLevel",10 << 3 | WireType.VARINT);
      
      public static const DAY_RECHARGE_AMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.day_recharge_amount","dayRechargeAmount",11 << 3 | WireType.VARINT);
      
      public static const MAX_BUY_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.max_buy_num","maxBuyNum",12 << 3 | WireType.VARINT);
      
      public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.remain_time","remainTime",13 << 3 | WireType.VARINT);
       
      public var id:uint;
      
      private var cash_price$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var gold_price$field:uint;
      
      private var member_price$field:uint;
      
      private var page_sign$field:uint;
      
      private var seq$field:uint;
      
      private var begin_time$field:uint;
      
      private var end_time$field:uint;
      
      private var day_buy_num$field:uint;
      
      private var limit_level$field:uint;
      
      private var day_recharge_amount$field:uint;
      
      private var max_buy_num$field:uint;
      
      private var remain_time$field:uint;
      
      public function ProtoStoreItemInfo()
      {
         super();
      }
      
      public function clearCashPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.cash_price$field = new uint();
      }
      
      public function get hasCashPrice() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set cashPrice(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.cash_price$field = param1;
      }
      
      public function get cashPrice() : uint
      {
         return this.cash_price$field;
      }
      
      public function clearGoldPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.gold_price$field = new uint();
      }
      
      public function get hasGoldPrice() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set goldPrice(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.gold_price$field = param1;
      }
      
      public function get goldPrice() : uint
      {
         return this.gold_price$field;
      }
      
      public function clearMemberPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.member_price$field = new uint();
      }
      
      public function get hasMemberPrice() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set memberPrice(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.member_price$field = param1;
      }
      
      public function get memberPrice() : uint
      {
         return this.member_price$field;
      }
      
      public function clearPageSign() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.page_sign$field = new uint();
      }
      
      public function get hasPageSign() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set pageSign(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.page_sign$field = param1;
      }
      
      public function get pageSign() : uint
      {
         return this.page_sign$field;
      }
      
      public function clearSeq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.seq$field = new uint();
      }
      
      public function get hasSeq() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set seq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.seq$field = param1;
      }
      
      public function get seq() : uint
      {
         return this.seq$field;
      }
      
      public function clearBeginTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.begin_time$field = new uint();
      }
      
      public function get hasBeginTime() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set beginTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.begin_time$field = param1;
      }
      
      public function get beginTime() : uint
      {
         return this.begin_time$field;
      }
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.end_time$field = new uint();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set endTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.end_time$field = param1;
      }
      
      public function get endTime() : uint
      {
         return this.end_time$field;
      }
      
      public function clearDayBuyNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.day_buy_num$field = new uint();
      }
      
      public function get hasDayBuyNum() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set dayBuyNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.day_buy_num$field = param1;
      }
      
      public function get dayBuyNum() : uint
      {
         return this.day_buy_num$field;
      }
      
      public function clearLimitLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.limit_level$field = new uint();
      }
      
      public function get hasLimitLevel() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set limitLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.limit_level$field = param1;
      }
      
      public function get limitLevel() : uint
      {
         return this.limit_level$field;
      }
      
      public function clearDayRechargeAmount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.day_recharge_amount$field = new uint();
      }
      
      public function get hasDayRechargeAmount() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set dayRechargeAmount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.day_recharge_amount$field = param1;
      }
      
      public function get dayRechargeAmount() : uint
      {
         return this.day_recharge_amount$field;
      }
      
      public function clearMaxBuyNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.max_buy_num$field = new uint();
      }
      
      public function get hasMaxBuyNum() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set maxBuyNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.max_buy_num$field = param1;
      }
      
      public function get maxBuyNum() : uint
      {
         return this.max_buy_num$field;
      }
      
      public function clearRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.remain_time$field = new uint();
      }
      
      public function get hasRemainTime() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set remainTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.remain_time$field = param1;
      }
      
      public function get remainTime() : uint
      {
         return this.remain_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.id);
         if(this.hasCashPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.cash_price$field);
         }
         if(this.hasGoldPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.gold_price$field);
         }
         if(this.hasMemberPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.member_price$field);
         }
         if(this.hasPageSign)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.page_sign$field);
         }
         if(this.hasSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.seq$field);
         }
         if(this.hasBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.begin_time$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.end_time$field);
         }
         if(this.hasDayBuyNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.day_buy_num$field);
         }
         if(this.hasLimitLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.limit_level$field);
         }
         if(this.hasDayRechargeAmount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.day_recharge_amount$field);
         }
         if(this.hasMaxBuyNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.max_buy_num$field);
         }
         if(this.hasRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_time$field);
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
          * Error type: IndexOutOfBoundsException (Index: 13, Size: 13)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
