package serverProto.stone
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoStoneActivityExploreResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.stone.ProtoStoneActivityExploreResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const REST_SEC:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.stone.ProtoStoneActivityExploreResp.rest_sec","restSec",2 << 3 | WireType.VARINT);
      
      public static const KEY_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.stone.ProtoStoneActivityExploreResp.key_count","keyCount",3 << 3 | WireType.VARINT);
      
      public static const GOLDINGOT_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.stone.ProtoStoneActivityExploreResp.goldingot_num","goldingotNum",4 << 3 | WireType.VARINT);
      
      public static const COUPON_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.stone.ProtoStoneActivityExploreResp.coupon_num","couponNum",5 << 3 | WireType.VARINT);
      
      public static const AWARD_ITEM_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.stone.ProtoStoneActivityExploreResp.award_item_list","awardItemList",6 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      public var ret:ProtoRetInfo;
      
      private var rest_sec$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var key_count$field:uint;
      
      private var goldingot_num$field:uint;
      
      private var coupon_num$field:uint;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var awardItemList:Array;
      
      public function ProtoStoneActivityExploreResp()
      {
         this.awardItemList = [];
         super();
      }
      
      public function clearRestSec() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rest_sec$field = new uint();
      }
      
      public function get hasRestSec() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set restSec(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rest_sec$field = param1;
      }
      
      public function get restSec() : uint
      {
         return this.rest_sec$field;
      }
      
      public function clearKeyCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.key_count$field = new uint();
      }
      
      public function get hasKeyCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set keyCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.key_count$field = param1;
      }
      
      public function get keyCount() : uint
      {
         return this.key_count$field;
      }
      
      public function clearGoldingotNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.goldingot_num$field = new uint();
      }
      
      public function get hasGoldingotNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set goldingotNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.goldingot_num$field = param1;
      }
      
      public function get goldingotNum() : uint
      {
         return this.goldingot_num$field;
      }
      
      public function clearCouponNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.coupon_num$field = new uint();
      }
      
      public function get hasCouponNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set couponNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.coupon_num$field = param1;
      }
      
      public function get couponNum() : uint
      {
         return this.coupon_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasRestSec)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_sec$field);
         }
         if(this.hasKeyCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.key_count$field);
         }
         if(this.hasGoldingotNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.goldingot_num$field);
         }
         if(this.hasCouponNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.coupon_num$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.awardItemList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.awardItemList[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
