package serverProto.cl5
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoCl5ServiceResponseInfo extends Message
   {
      
      public static const PTLOGIN_RSP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ServiceResponseInfo.ptlogin_rsp","ptloginRsp",1 << 3 | WireType.LENGTH_DELIMITED,ProtoCl5PtloginResponse);
       
      private var ptlogin_rsp$field:serverProto.cl5.ProtoCl5PtloginResponse;
      
      public function ProtoCl5ServiceResponseInfo()
      {
         super();
      }
      
      public function clearPtloginRsp() : void
      {
         this.ptlogin_rsp$field = null;
      }
      
      public function get hasPtloginRsp() : Boolean
      {
         return this.ptlogin_rsp$field != null;
      }
      
      public function set ptloginRsp(param1:serverProto.cl5.ProtoCl5PtloginResponse) : void
      {
         this.ptlogin_rsp$field = param1;
      }
      
      public function get ptloginRsp() : serverProto.cl5.ProtoCl5PtloginResponse
      {
         return this.ptlogin_rsp$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPtloginRsp)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ptlogin_rsp$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
