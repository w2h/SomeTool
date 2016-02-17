package serverProto.innerPay
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
   
   public final class InnerGetAcctInfoResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerGetAcctInfoResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const STAT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerGetAcctInfoResponse.stat","stat",2 << 3 | WireType.VARINT);
      
      public static const BALANCE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerGetAcctInfoResponse.balance","balance",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var stat$field:int;
      
      private var hasField$0:uint = 0;
      
      private var balance$field:int;
      
      public function InnerGetAcctInfoResponse()
      {
         super();
      }
      
      public function clearStat() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.stat$field = new int();
      }
      
      public function get hasStat() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set stat(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.stat$field = param1;
      }
      
      public function get stat() : int
      {
         return this.stat$field;
      }
      
      public function clearBalance() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.balance$field = new int();
      }
      
      public function get hasBalance() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set balance(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.balance$field = param1;
      }
      
      public function get balance() : int
      {
         return this.balance$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasStat)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.stat$field);
         }
         if(this.hasBalance)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.balance$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
