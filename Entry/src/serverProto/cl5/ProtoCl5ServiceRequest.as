package serverProto.cl5
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoCl5ServiceRequest extends Message
   {
      
      public static const CTX_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.cl5.ProtoCl5ServiceRequest.ctx_id","ctxId",1 << 3 | WireType.VARINT);
      
      public static const SERVICE_REQ:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ServiceRequest.service_req","serviceReq",2 << 3 | WireType.LENGTH_DELIMITED,ProtoCl5ServiceRequestInfo);
       
      public var ctxId:UInt64;
      
      private var service_req$field:serverProto.cl5.ProtoCl5ServiceRequestInfo;
      
      public function ProtoCl5ServiceRequest()
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
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT64(param1,this.ctxId);
         if(this.hasServiceReq)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
