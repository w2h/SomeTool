package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQixiTaskDesc extends Message
   {
      
      public static const TASK_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiTaskDesc.task_id","taskId",1 << 3 | WireType.VARINT);
      
      public static const TASK_DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoQixiTaskDesc.task_desc","taskDesc",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const TASK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiTaskDesc.task_status","taskStatus",3 << 3 | WireType.VARINT);
      
      public static const TASK_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQixiTaskDesc.task_award","taskAward",4 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const IMME_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.activity.ProtoQixiTaskDesc.imme_flag","immeFlag",5 << 3 | WireType.VARINT);
      
      public static const CURRENT_COND_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiTaskDesc.current_cond_num","currentCondNum",6 << 3 | WireType.VARINT);
      
      public static const MAX_COND_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiTaskDesc.max_cond_num","maxCondNum",7 << 3 | WireType.VARINT);
       
      private var task_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var task_desc$field:String;
      
      private var task_status$field:uint;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var taskAward:Array;
      
      private var imme_flag$field:Boolean;
      
      private var current_cond_num$field:uint;
      
      private var max_cond_num$field:uint;
      
      public function ProtoQixiTaskDesc()
      {
         this.taskAward = [];
         super();
      }
      
      public function clearTaskId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.task_id$field = new uint();
      }
      
      public function get hasTaskId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set taskId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.task_id$field = param1;
      }
      
      public function get taskId() : uint
      {
         return this.task_id$field;
      }
      
      public function clearTaskDesc() : void
      {
         this.task_desc$field = null;
      }
      
      public function get hasTaskDesc() : Boolean
      {
         return this.task_desc$field != null;
      }
      
      public function set taskDesc(param1:String) : void
      {
         this.task_desc$field = param1;
      }
      
      public function get taskDesc() : String
      {
         return this.task_desc$field;
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
      
      public function clearImmeFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.imme_flag$field = new Boolean();
      }
      
      public function get hasImmeFlag() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set immeFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.imme_flag$field = param1;
      }
      
      public function get immeFlag() : Boolean
      {
         return this.imme_flag$field;
      }
      
      public function clearCurrentCondNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.current_cond_num$field = new uint();
      }
      
      public function get hasCurrentCondNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set currentCondNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.current_cond_num$field = param1;
      }
      
      public function get currentCondNum() : uint
      {
         return this.current_cond_num$field;
      }
      
      public function clearMaxCondNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.max_cond_num$field = new uint();
      }
      
      public function get hasMaxCondNum() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set maxCondNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.max_cond_num$field = param1;
      }
      
      public function get maxCondNum() : uint
      {
         return this.max_cond_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasTaskId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.task_id$field);
         }
         if(this.hasTaskDesc)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.task_desc$field);
         }
         if(this.hasTaskStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.task_status$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.taskAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.taskAward[_loc2_]);
            _loc2_++;
         }
         if(this.hasImmeFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_BOOL(param1,this.imme_flag$field);
         }
         if(this.hasCurrentCondNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.current_cond_num$field);
         }
         if(this.hasMaxCondNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.max_cond_num$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
