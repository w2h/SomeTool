package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQixiTaskVolume extends Message
   {
      
      public static const VOLUMN_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiTaskVolume.volumn_id","volumnId",1 << 3 | WireType.VARINT);
      
      public static const SUB_TASK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQixiTaskVolume.sub_task","subTask",2 << 3 | WireType.LENGTH_DELIMITED,ProtoQixiTaskDesc);
      
      public static const TASK_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQixiTaskVolume.task_award","taskAward",3 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const TASK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiTaskVolume.task_status","taskStatus",4 << 3 | WireType.VARINT);
       
      private var volumn_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.activity.ProtoQixiTaskDesc")]
      public var subTask:Array;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var taskAward:Array;
      
      private var task_status$field:uint;
      
      public function ProtoQixiTaskVolume()
      {
         this.subTask = [];
         this.taskAward = [];
         super();
      }
      
      public function clearVolumnId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.volumn_id$field = new uint();
      }
      
      public function get hasVolumnId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set volumnId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.volumn_id$field = param1;
      }
      
      public function get volumnId() : uint
      {
         return this.volumn_id$field;
      }
      
      public function clearTaskStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.task_status$field = new uint();
      }
      
      public function get hasTaskStatus() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set taskStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.task_status$field = param1;
      }
      
      public function get taskStatus() : uint
      {
         return this.task_status$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasVolumnId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.volumn_id$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.subTask.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.subTask[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.taskAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.taskAward[_loc3_]);
            _loc3_++;
         }
         if(this.hasTaskStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.task_status$field);
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
