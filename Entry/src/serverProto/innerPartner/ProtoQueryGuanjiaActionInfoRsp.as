package serverProto.innerPartner
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQueryGuanjiaActionInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoQueryGuanjiaActionInfoRsp.ret","ret",1 << 3 | WireType.VARINT);
      
      public static const DONE_DAYS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoQueryGuanjiaActionInfoRsp.done_days","doneDays",2 << 3 | WireType.VARINT);
      
      public static const MAX_CONTINUE_DAYS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoQueryGuanjiaActionInfoRsp.max_continue_days","maxContinueDays",3 << 3 | WireType.VARINT);
       
      private var ret$field:int;
      
      private var hasField$0:uint = 0;
      
      private var done_days$field:int;
      
      private var max_continue_days$field:int;
      
      public function ProtoQueryGuanjiaActionInfoRsp()
      {
         super();
      }
      
      public function clearRet() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ret$field = new int();
      }
      
      public function get hasRet() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ret(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ret$field = param1;
      }
      
      public function get ret() : int
      {
         return this.ret$field;
      }
      
      public function clearDoneDays() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.done_days$field = new int();
      }
      
      public function get hasDoneDays() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set doneDays(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.done_days$field = param1;
      }
      
      public function get doneDays() : int
      {
         return this.done_days$field;
      }
      
      public function clearMaxContinueDays() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.max_continue_days$field = new int();
      }
      
      public function get hasMaxContinueDays() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set maxContinueDays(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.max_continue_days$field = param1;
      }
      
      public function get maxContinueDays() : int
      {
         return this.max_continue_days$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.ret$field);
         }
         if(this.hasDoneDays)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.done_days$field);
         }
         if(this.hasMaxContinueDays)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.max_continue_days$field);
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
