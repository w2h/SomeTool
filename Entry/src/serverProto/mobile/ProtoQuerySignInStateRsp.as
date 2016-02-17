package serverProto.mobile
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQuerySignInStateRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.mobile.ProtoQuerySignInStateRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SIGN_STATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.mobile.ProtoQuerySignInStateRsp.sign_state","signState",2 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var sign_state$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoQuerySignInStateRsp()
      {
         super();
      }
      
      public function clearSignState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.sign_state$field = new int();
      }
      
      public function get hasSignState() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set signState(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.sign_state$field = param1;
      }
      
      public function get signState() : int
      {
         return this.sign_state$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasSignState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.sign_state$field);
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
