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
   
   public final class ProtoValentineAwardRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoValentineAwardRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TASK_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineAwardRsp.task_id","taskId",2 << 3 | WireType.VARINT);
      
      public static const TASK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineAwardRsp.task_status","taskStatus",3 << 3 | WireType.VARINT);
      
      public static const CURRENT_COND_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineAwardRsp.current_cond_count","currentCondCount",4 << 3 | WireType.VARINT);
      
      public static const ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineAwardRsp.item_num","itemNum",5 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var task_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var task_status$field:uint;
      
      private var current_cond_count$field:uint;
      
      private var item_num$field:uint;
      
      public function ProtoValentineAwardRsp()
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
      
      public function clearCurrentCondCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.current_cond_count$field = new uint();
      }
      
      public function get hasCurrentCondCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set currentCondCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.current_cond_count$field = param1;
      }
      
      public function get currentCondCount() : uint
      {
         return this.current_cond_count$field;
      }
      
      public function clearItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.item_num$field = new uint();
      }
      
      public function get hasItemNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set itemNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.item_num$field = param1;
      }
      
      public function get itemNum() : uint
      {
         return this.item_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasTaskId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.task_id$field);
         }
         if(this.hasTaskStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.task_status$field);
         }
         if(this.hasCurrentCondCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.current_cond_count$field);
         }
         if(this.hasItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.item_num$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
