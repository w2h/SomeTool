package serverProto.sceneEscort
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerBaseInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSceneEscortRobInfo extends Message
   {
      
      public static const BASE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.sceneEscort.ProtoSceneEscortRobInfo.base_info","baseInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerBaseInfo);
      
      public static const TASK_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoSceneEscortRobInfo.task_id","taskId",2 << 3 | WireType.VARINT);
       
      private var base_info$field:ProtoPlayerBaseInfo;
      
      private var task_id$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoSceneEscortRobInfo()
      {
         super();
      }
      
      public function clearBaseInfo() : void
      {
         this.base_info$field = null;
      }
      
      public function get hasBaseInfo() : Boolean
      {
         return this.base_info$field != null;
      }
      
      public function set baseInfo(param1:ProtoPlayerBaseInfo) : void
      {
         this.base_info$field = param1;
      }
      
      public function get baseInfo() : ProtoPlayerBaseInfo
      {
         return this.base_info$field;
      }
      
      public function clearTaskId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.task_id$field = new int();
      }
      
      public function get hasTaskId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set taskId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.task_id$field = param1;
      }
      
      public function get taskId() : int
      {
         return this.task_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBaseInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_info$field);
         }
         if(this.hasTaskId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.task_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
