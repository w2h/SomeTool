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
   
   public final class ProtoRechargeRebateRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoRechargeRebateRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoRechargeRebateRsp.activity_begin_time","activityBeginTime",2 << 3 | WireType.VARINT);
      
      public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoRechargeRebateRsp.activity_end_time","activityEndTime",3 << 3 | WireType.VARINT);
      
      public static const REBATED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoRechargeRebateRsp.rebated","rebated",4 << 3 | WireType.VARINT);
      
      public static const AVAILABLE_REBATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoRechargeRebateRsp.available_rebate","availableRebate",5 << 3 | WireType.VARINT);
      
      public static const REMAIND_REBATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoRechargeRebateRsp.remaind_rebate","remaindRebate",6 << 3 | WireType.VARINT);
      
      public static const RATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoRechargeRebateRsp.rate","rate",7 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var activity_begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var activity_end_time$field:uint;
      
      private var rebated$field:uint;
      
      private var available_rebate$field:uint;
      
      private var remaind_rebate$field:uint;
      
      private var rate$field:uint;
      
      public function ProtoRechargeRebateRsp()
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
      
      public function clearRebated() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.rebated$field = new uint();
      }
      
      public function get hasRebated() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set rebated(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.rebated$field = param1;
      }
      
      public function get rebated() : uint
      {
         return this.rebated$field;
      }
      
      public function clearAvailableRebate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.available_rebate$field = new uint();
      }
      
      public function get hasAvailableRebate() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set availableRebate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.available_rebate$field = param1;
      }
      
      public function get availableRebate() : uint
      {
         return this.available_rebate$field;
      }
      
      public function clearRemaindRebate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.remaind_rebate$field = new uint();
      }
      
      public function get hasRemaindRebate() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set remaindRebate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.remaind_rebate$field = param1;
      }
      
      public function get remaindRebate() : uint
      {
         return this.remaind_rebate$field;
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
         if(this.hasRebated)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.rebated$field);
         }
         if(this.hasAvailableRebate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.available_rebate$field);
         }
         if(this.hasRemaindRebate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.remaind_rebate$field);
         }
         if(this.hasRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.rate$field);
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
