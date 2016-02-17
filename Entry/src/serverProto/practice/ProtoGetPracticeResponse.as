package serverProto.practice
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetPracticeResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoGetPracticeResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PRACTICE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoGetPracticeResponse.practice_info","practiceInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPracticeInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var practice_info$field:serverProto.practice.ProtoPracticeInfo;
      
      public function ProtoGetPracticeResponse()
      {
         super();
      }
      
      public function clearPracticeInfo() : void
      {
         this.practice_info$field = null;
      }
      
      public function get hasPracticeInfo() : Boolean
      {
         return this.practice_info$field != null;
      }
      
      public function set practiceInfo(param1:serverProto.practice.ProtoPracticeInfo) : void
      {
         this.practice_info$field = param1;
      }
      
      public function get practiceInfo() : serverProto.practice.ProtoPracticeInfo
      {
         return this.practice_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasPracticeInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.practice_info$field);
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
