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
   
   public final class ProtoCl5ProxyRequest extends Message
   {
      
      public static const SERVICE_REQ:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ProxyRequest.service_req","serviceReq",1 << 3 | WireType.LENGTH_DELIMITED,ProtoCl5ServiceRequestInfo);
       
      private var service_req$field:serverProto.cl5.ProtoCl5ServiceRequestInfo;
      
      public function ProtoCl5ProxyRequest()
      {
         super();
      }
      
      public function clearServiceReq() : void
      {
         this.service_req$field = null;
      }
      
      public function get hasServiceReq() : Boolean
      {
         return this.service_req$field != null;
      }
      
      public function set serviceReq(param1:serverProto.cl5.ProtoCl5ServiceRequestInfo) : void
      {
         this.service_req$field = param1;
      }
      
      public function get serviceReq() : serverProto.cl5.ProtoCl5ServiceRequestInfo
      {
         return this.service_req$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasServiceReq)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.service_req$field);
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
