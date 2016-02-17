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
   
   public final class ProtoGoldsaveFanliAwardRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoGoldsaveFanliAwardRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const AWARD_COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliAwardRsp.award_coupon","awardCoupon",2 << 3 | WireType.VARINT);
      
      public static const REMAIN_COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliAwardRsp.remain_coupon","remainCoupon",3 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var award_coupon$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var remain_coupon$field:uint;
      
      public function ProtoGoldsaveFanliAwardRsp()
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
      
      public function clearAwardCoupon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.award_coupon$field = new uint();
      }
      
      public function get hasAwardCoupon() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set awardCoupon(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.award_coupon$field = param1;
      }
      
      public function get awardCoupon() : uint
      {
         return this.award_coupon$field;
      }
      
      public function clearRemainCoupon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.remain_coupon$field = new uint();
      }
      
      public function get hasRemainCoupon() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainCoupon(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
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
         if(this.hasAwardCoupon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.award_coupon$field);
         }
         if(this.hasRemainCoupon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
