package serverProto.cl5
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
   
   public final class ProtoCl5ProxyResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ProxyResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SERVICE_RSP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cl5.ProtoCl5ProxyResponse.service_rsp","serviceRsp",2 << 3 | WireType.LENGTH_DELIMITED,ProtoCl5ServiceResponseInfo);
       
      public var ret:ProtoRetInfo;
      
      private var service_rsp$field:serverProto.cl5.ProtoCl5ServiceResponseInfo;
      
      public function ProtoCl5ProxyResponse()
      {
         super();
      }
      
      public function clearServiceRsp() : void
      {
         this.service_rsp$field = null;
      }
      
      public function get hasServiceRsp() : Boolean
      {
         return this.service_rsp$field != null;
      }
      
      public function set serviceRsp(param1:serverProto.cl5.ProtoCl5ServiceResponseInfo) : void
      {
         this.service_rsp$field = param1;
      }
      
      public function get serviceRsp() : serverProto.cl5.ProtoCl5ServiceResponseInfo
      {
         return this.service_rsp$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasServiceRsp)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.service_rsp$field);
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
