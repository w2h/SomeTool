package serverProto.familyNinja
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFamilyNinjaInfoChatRsp extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.familyNinja.ProtoFamilyNinjaInfoChatRsp.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CLASS_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.familyNinja.ProtoFamilyNinjaInfoChatRsp.class_id","classId",2 << 3 | WireType.VARINT);
      
      public static const QUESTION_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaInfoChatRsp.question_id","questionId",3 << 3 | WireType.VARINT);
      
      public static const FAVOR_ADD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.familyNinja.ProtoFamilyNinjaInfoChatRsp.favor_add","favorAdd",4 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var class_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var question_id$field:uint;
      
      private var favor_add$field:int;
      
      public function ProtoFamilyNinjaInfoChatRsp()
      {
         super();
      }
      
      public function clearClassId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.class_id$field = new int();
      }
      
      public function get hasClassId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set classId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.class_id$field = param1;
      }
      
      public function get classId() : int
      {
         return this.class_id$field;
      }
      
      public function clearQuestionId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.question_id$field = new uint();
      }
      
      public function get hasQuestionId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set questionId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.question_id$field = param1;
      }
      
      public function get questionId() : uint
      {
         return this.question_id$field;
      }
      
      public function clearFavorAdd() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.favor_add$field = new int();
      }
      
      public function get hasFavorAdd() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set favorAdd(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.favor_add$field = param1;
      }
      
      public function get favorAdd() : int
      {
         return this.favor_add$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasClassId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.class_id$field);
         }
         if(this.hasQuestionId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.question_id$field);
         }
         if(this.hasFavorAdd)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.favor_add$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
