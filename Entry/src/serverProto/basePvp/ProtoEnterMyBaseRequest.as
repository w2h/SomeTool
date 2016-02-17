package serverProto.basePvp
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEnterMyBaseRequest extends Message
   {
      
      public static const RETURN_TO_MY_BASE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoEnterMyBaseRequest.return_to_my_base","returnToMyBase",1 << 3 | WireType.VARINT);
       
      private var return_to_my_base$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoEnterMyBaseRequest()
      {
         super();
      }
      
      public function clearReturnToMyBase() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.return_to_my_base$field = new int();
      }
      
      public function get hasReturnToMyBase() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set returnToMyBase(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.return_to_my_base$field = param1;
      }
      
      public function get returnToMyBase() : int
      {
         return this.return_to_my_base$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasReturnToMyBase)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.return_to_my_base$field);
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
