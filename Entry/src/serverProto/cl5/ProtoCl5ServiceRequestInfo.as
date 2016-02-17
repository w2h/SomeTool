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
   
   public final class ProtoCl5ServiceRequestInfo extends Message
   {
      
      public static const PTLOGIN_REQ:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ServiceRequestInfo.ptlogin_req","ptloginReq",1 << 3 | WireType.LENGTH_DELIMITED,ProtoCl5PtloginRequest);
       
      private var ptlogin_req$field:serverProto.cl5.ProtoCl5PtloginRequest;
      
      public function ProtoCl5ServiceRequestInfo()
      {
         super();
      }
      
      public function clearPtloginReq() : void
      {
         this.ptlogin_req$field = null;
      }
      
      public function get hasPtloginReq() : Boolean
      {
         return this.ptlogin_req$field != null;
      }
      
      public function set ptloginReq(param1:serverProto.cl5.ProtoCl5PtloginRequest) : void
      {
         this.ptlogin_req$field = param1;
      }
      
      public function get ptloginReq() : serverProto.cl5.ProtoCl5PtloginRequest
      {
         return this.ptlogin_req$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPtloginReq)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ptlogin_req$field);
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
