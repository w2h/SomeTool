package serverProto.user
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
   
   public final class ProtoSecondaryPasswordResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoSecondaryPasswordResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SECONDARY_PASSWORD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoSecondaryPasswordResponse.secondary_password_info","secondaryPasswordInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoSecondaryPasswordInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var secondary_password_info$field:serverProto.user.ProtoSecondaryPasswordInfo;
      
      public function ProtoSecondaryPasswordResponse()
      {
         super();
      }
      
      public function clearSecondaryPasswordInfo() : void
      {
         this.secondary_password_info$field = null;
      }
      
      public function get hasSecondaryPasswordInfo() : Boolean
      {
         return this.secondary_password_info$field != null;
      }
      
      public function set secondaryPasswordInfo(param1:serverProto.user.ProtoSecondaryPasswordInfo) : void
      {
         this.secondary_password_info$field = param1;
      }
      
      public function get secondaryPasswordInfo() : serverProto.user.ProtoSecondaryPasswordInfo
      {
         return this.secondary_password_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasSecondaryPasswordInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.secondary_password_info$field);
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
