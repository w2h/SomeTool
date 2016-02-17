package serverProto.task
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFreshTaskReq extends Message
   {
      
      public static const PAY_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoFreshTaskReq.pay_flag","payFlag",1 << 3 | WireType.VARINT);
      
      public static const TASK_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoFreshTaskReq.task_type","taskType",2 << 3 | WireType.VARINT);
      
      public static const TASK_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoFreshTaskReq.task_id","taskId",3 << 3 | WireType.VARINT);
       
      public var payFlag:uint;
      
      private var task_type$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var task_id$field:uint;
      
      public function ProtoFreshTaskReq()
      {
         super();
      }
      
      public function clearTaskType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.task_type$field = new uint();
      }
      
      public function get hasTaskType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set taskType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.task_type$field = param1;
      }
      
      public function get taskType() : uint
      {
         return this.task_type$field;
      }
      
      public function clearTaskId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.task_id$field = new uint();
      }
      
      public function get hasTaskId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set taskId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.task_id$field = param1;
      }
      
      public function get taskId() : uint
      {
         return this.task_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.payFlag);
         if(this.hasTaskType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.task_type$field);
         }
         if(this.hasTaskId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.task_id$field);
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
