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
   
   public final class ProtoAnniversaryLuckyWheelQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoAnniversaryLuckyWheelQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoAnniversaryLuckyWheelQueryRsp.begin_time","beginTime",2 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoAnniversaryLuckyWheelQueryRsp.end_time","endTime",3 << 3 | WireType.VARINT);
      
      public static const KEY_ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoAnniversaryLuckyWheelQueryRsp.key_item_id","keyItemId",4 << 3 | WireType.VARINT);
      
      public static const TASK_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoAnniversaryLuckyWheelQueryRsp.task_info","taskInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoAnniversaryLuckyWheelTaskInfo);
      
      public static const LOTTERY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoAnniversaryLuckyWheelQueryRsp.lottery_info","lotteryInfo",6 << 3 | WireType.LENGTH_DELIMITED,ProtoAnniversaryLuckyWheelLotteryInfo);
       
      private var ret$field:ProtoRetInfo;
      
      private var begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var end_time$field:uint;
      
      private var key_item_id$field:uint;
      
      private var task_info$field:serverProto.activity.ProtoAnniversaryLuckyWheelTaskInfo;
      
      private var lottery_info$field:serverProto.activity.ProtoAnniversaryLuckyWheelLotteryInfo;
      
      public function ProtoAnniversaryLuckyWheelQueryRsp()
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
      
      public function clearBeginTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.begin_time$field = new uint();
      }
      
      public function get hasBeginTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set beginTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.begin_time$field = param1;
      }
      
      public function get beginTime() : uint
      {
         return this.begin_time$field;
      }
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.end_time$field = new uint();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set endTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.end_time$field = param1;
      }
      
      public function get endTime() : uint
      {
         return this.end_time$field;
      }
      
      public function clearKeyItemId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.key_item_id$field = new uint();
      }
      
      public function get hasKeyItemId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set keyItemId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.key_item_id$field = param1;
      }
      
      public function get keyItemId() : uint
      {
         return this.key_item_id$field;
      }
      
      public function clearTaskInfo() : void
      {
         this.task_info$field = null;
      }
      
      public function get hasTaskInfo() : Boolean
      {
         return this.task_info$field != null;
      }
      
      public function set taskInfo(param1:serverProto.activity.ProtoAnniversaryLuckyWheelTaskInfo) : void
      {
         this.task_info$field = param1;
      }
      
      public function get taskInfo() : serverProto.activity.ProtoAnniversaryLuckyWheelTaskInfo
      {
         return this.task_info$field;
      }
      
      public function clearLotteryInfo() : void
      {
         this.lottery_info$field = null;
      }
      
      public function get hasLotteryInfo() : Boolean
      {
         return this.lottery_info$field != null;
      }
      
      public function set lotteryInfo(param1:serverProto.activity.ProtoAnniversaryLuckyWheelLotteryInfo) : void
      {
         this.lottery_info$field = param1;
      }
      
      public function get lotteryInfo() : serverProto.activity.ProtoAnniversaryLuckyWheelLotteryInfo
      {
         return this.lottery_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.begin_time$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.end_time$field);
         }
         if(this.hasKeyItemId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.key_item_id$field);
         }
         if(this.hasTaskInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.task_info$field);
         }
         if(this.hasLotteryInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.lottery_info$field);
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
