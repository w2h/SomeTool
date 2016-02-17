package serverProto.task
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTaskCountInfoUpdateNotify extends Message
   {
      
      public static const TASK_COUNT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoTaskCountInfoUpdateNotify.task_count_info","taskCountInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoTaskCountInfo);
       
      private var task_count_info$field:serverProto.task.ProtoTaskCountInfo;
      
      public function ProtoTaskCountInfoUpdateNotify()
      {
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
         var _loc2_:* = undefined;
         if(this.hasTaskCountInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.task_count_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
