package serverProto.innerPay
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class InnerGetAcctInfoRequest extends Message
   {
      
      public static const NEED_RET:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerGetAcctInfoRequest.need_ret","needRet",1 << 3 | WireType.VARINT);
       
      private var need_ret$field:int;
      
      private var hasField$0:uint = 0;
      
      public function InnerGetAcctInfoRequest()
      {
         super();
      }
      
      public function clearNeedRet() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.need_ret$field = new int();
      }
      
      public function get hasNeedRet() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set needRet(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.need_ret$field = param1;
      }
      
      public function get needRet() : int
      {
         return this.need_ret$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasNeedRet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.need_ret$field);
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
