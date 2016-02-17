package serverProto.innerPay
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class InnerItcGetAcctInfoReq extends Message
   {
      
      public static const IP_FORWARD:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcGetAcctInfoReq.ip_forward","ipForward",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const AREA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoReq.area","area",2 << 3 | WireType.VARINT);
      
      public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcGetAcctInfoReq.uin","uin",3 << 3 | WireType.VARINT);
       
      private var ip_forward$field:String;
      
      public var area:int;
      
      public var uin:uint;
      
      public function InnerItcGetAcctInfoReq()
      {
         super();
      }
      
      public function clearIpForward() : void
      {
         this.ip_forward$field = null;
      }
      
      public function get hasIpForward() : Boolean
      {
         return this.ip_forward$field != null;
      }
      
      public function set ipForward(param1:String) : void
      {
         this.ip_forward$field = param1;
      }
      
      public function get ipForward() : String
      {
         return this.ip_forward$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasIpForward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_STRING(param1,this.ip_forward$field);
         }
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.area);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.uin);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
