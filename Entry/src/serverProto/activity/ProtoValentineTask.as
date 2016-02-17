package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoValentineTask extends Message
   {
      
      public static const TASK_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineTask.task_idx","taskIdx",1 << 3 | WireType.VARINT);
      
      public static const TASK_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoValentineTask.task_name","taskName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const TASK_DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoValentineTask.task_desc","taskDesc",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ITME_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineTask.itme_num","itmeNum",4 << 3 | WireType.VARINT);
      
      public static const LIMIT_COND_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineTask.limit_cond_count","limitCondCount",5 << 3 | WireType.VARINT);
      
      public static const CURRENT_COND_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineTask.current_cond_count","currentCondCount",6 << 3 | WireType.VARINT);
      
      public static const TASK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineTask.task_status","taskStatus",9 << 3 | WireType.VARINT);
       
      private var task_idx$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var task_name$field:String;
      
      private var task_desc$field:String;
      
      private var itme_num$field:uint;
      
      private var limit_cond_count$field:uint;
      
      private var current_cond_count$field:uint;
      
      private var task_status$field:uint;
      
      public function ProtoValentineTask()
      {
         super();
      }
      
      public function clearTaskIdx() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.task_idx$field = new uint();
      }
      
      public function get hasTaskIdx() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set taskIdx(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.task_idx$field = param1;
      }
      
      public function get taskIdx() : uint
      {
         return this.task_idx$field;
      }
      
      public function clearTaskName() : void
      {
         this.task_name$field = null;
      }
      
      public function get hasTaskName() : Boolean
      {
         return this.task_name$field != null;
      }
      
      public function set taskName(param1:String) : void
      {
         this.task_name$field = param1;
      }
      
      public function get taskName() : String
      {
         return this.task_name$field;
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
      
      public function clearItmeNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.itme_num$field = new uint();
      }
      
      public function get hasItmeNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set itmeNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.itme_num$field = param1;
      }
      
      public function get itmeNum() : uint
      {
         return this.itme_num$field;
      }
      
      public function clearLimitCondCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.limit_cond_count$field = new uint();
      }
      
      public function get hasLimitCondCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set limitCondCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.limit_cond_count$field = param1;
      }
      
      public function get limitCondCount() : uint
      {
         return this.limit_cond_count$field;
      }
      
      public function clearCurrentCondCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.current_cond_count$field = new uint();
      }
      
      public function get hasCurrentCondCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set currentCondCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.current_cond_count$field = param1;
      }
      
      public function get currentCondCount() : uint
      {
         return this.current_cond_count$field;
      }
      
      public function clearTaskStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.task_status$field = new uint();
      }
      
      public function get hasTaskStatus() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set taskStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.task_status$field = param1;
      }
      
      public function get taskStatus() : uint
      {
         return this.task_status$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTaskIdx)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.task_idx$field);
         }
         if(this.hasTaskName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.task_name$field);
         }
         if(this.hasTaskDesc)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.task_desc$field);
         }
         if(this.hasItmeNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.itme_num$field);
         }
         if(this.hasLimitCondCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.limit_cond_count$field);
         }
         if(this.hasCurrentCondCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.current_cond_count$field);
         }
         if(this.hasTaskStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.task_status$field);
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
