package serverProto.task
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoImmediatelyCompleteTaskResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoImmediatelyCompleteTaskResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TASK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoImmediatelyCompleteTaskResp.task","task",2 << 3 | WireType.LENGTH_DELIMITED,ProtoTaskInfo);
      
      public static const NEW_TASK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoImmediatelyCompleteTaskResp.new_task","newTask",3 << 3 | WireType.LENGTH_DELIMITED,ProtoTaskInfo);
      
      public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoImmediatelyCompleteTaskResp.award","award",4 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      public var ret:ProtoRetInfo;
      
      private var task$field:serverProto.task.ProtoTaskInfo;
      
      [ArrayElementType("serverProto.task.ProtoTaskInfo")]
      public var newTask:Array;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var award:Array;
      
      public function ProtoImmediatelyCompleteTaskResp()
      {
         this.newTask = [];
         this.award = [];
         super();
      }
      
      public function clearTask() : void
      {
         this.task$field = null;
      }
      
      public function get hasTask() : Boolean
      {
         return this.task$field != null;
      }
      
      public function set task(param1:serverProto.task.ProtoTaskInfo) : void
      {
         this.task$field = param1;
      }
      
      public function get task() : serverProto.task.ProtoTaskInfo
      {
         return this.task$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasTask)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.task$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.newTask.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.newTask[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.award.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award[_loc3_]);
            _loc3_++;
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
