package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNewYearLotteryQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewYearLotteryQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewYearLotteryQueryRsp.package_boxes","packageBoxes",2 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const REMAIN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearLotteryQueryRsp.remain_count","remainCount",3 << 3 | WireType.VARINT);
      
      public static const TASK_STATUS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearLotteryQueryRsp.task_status","taskStatus",4 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearLotteryQueryRsp.end_time","endTime",5 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      private var remain_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("uint")]
      public var taskStatus:Array;
      
      private var end_time$field:uint;
      
      public function ProtoNewYearLotteryQueryRsp()
      {
         this.packageBoxes = [];
         this.taskStatus = [];
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
      
      public function clearRemainCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.remain_count$field = new uint();
      }
      
      public function get hasRemainCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set remainCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.remain_count$field = param1;
      }
      
      public function get remainCount() : uint
      {
         return this.remain_count$field;
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
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBoxes[_loc2_]);
            _loc2_++;
         }
         if(this.hasRemainCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_count$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.taskStatus.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.taskStatus[_loc3_]);
            _loc3_++;
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.end_time$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
