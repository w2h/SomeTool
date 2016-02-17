package serverProto.ninjaexam
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetNinjaExamReliveCostResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const RELIVE_ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.relive_item_num","reliveItemNum",2 << 3 | WireType.VARINT);
      
      public static const MONEY_COUPON_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.money_coupon_num","moneyCouponNum",3 << 3 | WireType.VARINT);
      
      public static const MONEY_GOLD_INGOT_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.money_gold_ingot_num","moneyGoldIngotNum",4 << 3 | WireType.VARINT);
      
      public static const NEED_RELIVE_ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.need_relive_item_num","needReliveItemNum",5 << 3 | WireType.VARINT);
      
      public static const NEED_MONEY_COUPON_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.need_money_coupon_num","needMoneyCouponNum",6 << 3 | WireType.VARINT);
      
      public static const NEED_MONEY_GOLD_INGOT_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoGetNinjaExamReliveCostResponse.need_money_gold_ingot_num","needMoneyGoldIngotNum",7 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var relive_item_num$field:int;
      
      private var hasField$0:uint = 0;
      
      private var money_coupon_num$field:int;
      
      private var money_gold_ingot_num$field:int;
      
      private var need_relive_item_num$field:int;
      
      private var need_money_coupon_num$field:int;
      
      private var need_money_gold_ingot_num$field:int;
      
      public function ProtoGetNinjaExamReliveCostResponse()
      {
         super();
      }
      
      public function clearReliveItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.relive_item_num$field = new int();
      }
      
      public function get hasReliveItemNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set reliveItemNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.relive_item_num$field = param1;
      }
      
      public function get reliveItemNum() : int
      {
         return this.relive_item_num$field;
      }
      
      public function clearMoneyCouponNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.money_coupon_num$field = new int();
      }
      
      public function get hasMoneyCouponNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set moneyCouponNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.money_coupon_num$field = param1;
      }
      
      public function get moneyCouponNum() : int
      {
         return this.money_coupon_num$field;
      }
      
      public function clearMoneyGoldIngotNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.money_gold_ingot_num$field = new int();
      }
      
      public function get hasMoneyGoldIngotNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set moneyGoldIngotNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.money_gold_ingot_num$field = param1;
      }
      
      public function get moneyGoldIngotNum() : int
      {
         return this.money_gold_ingot_num$field;
      }
      
      public function clearNeedReliveItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.need_relive_item_num$field = new int();
      }
      
      public function get hasNeedReliveItemNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set needReliveItemNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.need_relive_item_num$field = param1;
      }
      
      public function get needReliveItemNum() : int
      {
         return this.need_relive_item_num$field;
      }
      
      public function clearNeedMoneyCouponNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.need_money_coupon_num$field = new int();
      }
      
      public function get hasNeedMoneyCouponNum() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set needMoneyCouponNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.need_money_coupon_num$field = param1;
      }
      
      public function get needMoneyCouponNum() : int
      {
         return this.need_money_coupon_num$field;
      }
      
      public function clearNeedMoneyGoldIngotNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.need_money_gold_ingot_num$field = new int();
      }
      
      public function get hasNeedMoneyGoldIngotNum() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set needMoneyGoldIngotNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.need_money_gold_ingot_num$field = param1;
      }
      
      public function get needMoneyGoldIngotNum() : int
      {
         return this.need_money_gold_ingot_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasReliveItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.relive_item_num$field);
         }
         if(this.hasMoneyCouponNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.money_coupon_num$field);
         }
         if(this.hasMoneyGoldIngotNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.money_gold_ingot_num$field);
         }
         if(this.hasNeedReliveItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.need_relive_item_num$field);
         }
         if(this.hasNeedMoneyCouponNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.need_money_coupon_num$field);
         }
         if(this.hasNeedMoneyGoldIngotNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.need_money_gold_ingot_num$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
