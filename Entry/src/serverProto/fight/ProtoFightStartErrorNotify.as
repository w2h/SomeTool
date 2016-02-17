package serverProto.fight
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
   
   public final class ProtoFightStartErrorNotify extends Message
   {
      
      public static const ERROR_CODE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightStartErrorNotify.error_code","errorCode",1 << 3 | WireType.VARINT);
      
      public static const ERROR_MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.fight.ProtoFightStartErrorNotify.error_msg","errorMsg",2 << 3 | WireType.LENGTH_DELIMITED);
       
      public var errorCode:uint;
      
      private var error_msg$field:String;
      
      public function ProtoFightStartErrorNotify()
      {
         super();
      }
      
      public function clearErrorMsg() : void
      {
         this.error_msg$field = null;
      }
      
      public function get hasErrorMsg() : Boolean
      {
         return this.error_msg$field != null;
      }
      
      public function set errorMsg(param1:String) : void
      {
         this.error_msg$field = param1;
      }
      
      public function get errorMsg() : String
      {
         return this.error_msg$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.errorCode);
         if(this.hasErrorMsg)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.error_msg$field);
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
