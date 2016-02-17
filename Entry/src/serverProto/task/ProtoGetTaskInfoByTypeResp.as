package serverProto.task
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetTaskInfoByTypeResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoGetTaskInfoByTypeResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TASKS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoGetTaskInfoByTypeResp.tasks","tasks",2 << 3 | WireType.LENGTH_DELIMITED,ProtoTaskInfo);
      
      public static const TASK_COUNT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoGetTaskInfoByTypeResp.task_count_info","taskCountInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoTaskCountInfo);
       
      public var ret:ProtoRetInfo;
      
      [ArrayElementType("serverProto.task.ProtoTaskInfo")]
      public var tasks:Array;
      
      private var task_count_info$field:serverProto.task.ProtoTaskCountInfo;
      
      public function ProtoGetTaskInfoByTypeResp()
      {
         this.tasks = [];
         super();
      }
      
      public function clearTaskCountInfo() : void
      {
         this.task_count_info$field = null;
      }
      
      public function get hasTaskCountInfo() : Boolean
      {
         return this.task_count_info$field != null;
      }
      
      public function set taskCountInfo(param1:serverProto.task.ProtoTaskCountInfo) : void
      {
         this.task_count_info$field = param1;
      }
      
      public function get taskCountInfo() : serverProto.task.ProtoTaskCountInfo
      {
         return this.task_count_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         var _loc2_:uint = 0;
         while(_loc2_ < this.tasks.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.tasks[_loc2_]);
            _loc2_++;
         }
         if(this.hasTaskCountInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.task_count_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
