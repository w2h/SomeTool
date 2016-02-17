package serverProto.innerPartner
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQueryGuanjiaLoginAndRocketInfoRsp extends Message
   {
      
      public static const RET1:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoQueryGuanjiaLoginAndRocketInfoRsp.ret1","ret1",1 << 3 | WireType.VARINT);
      
      public static const IS_ONLINE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoQueryGuanjiaLoginAndRocketInfoRsp.is_online","isOnline",2 << 3 | WireType.VARINT);
      
      public static const RET2:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoQueryGuanjiaLoginAndRocketInfoRsp.ret2","ret2",3 << 3 | WireType.VARINT);
      
      public static const DONE_DAYS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoQueryGuanjiaLoginAndRocketInfoRsp.done_days","doneDays",4 << 3 | WireType.VARINT);
      
      public static const MAX_CONTINUE_DAYS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoQueryGuanjiaLoginAndRocketInfoRsp.max_continue_days","maxContinueDays",5 << 3 | WireType.VARINT);
       
      private var ret1$field:int;
      
      private var hasField$0:uint = 0;
      
      private var is_online$field:uint;
      
      private var ret2$field:int;
      
      private var done_days$field:int;
      
      private var max_continue_days$field:int;
      
      public function ProtoQueryGuanjiaLoginAndRocketInfoRsp()
      {
         super();
      }
      
      public function clearRet1() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ret1$field = new int();
      }
      
      public function get hasRet1() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ret1(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ret1$field = param1;
      }
      
      public function get ret1() : int
      {
         return this.ret1$field;
      }
      
      public function clearIsOnline() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.is_online$field = new uint();
      }
      
      public function get hasIsOnline() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set isOnline(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.is_online$field = param1;
      }
      
      public function get isOnline() : uint
      {
         return this.is_online$field;
      }
      
      public function clearRet2() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.ret2$field = new int();
      }
      
      public function get hasRet2() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set ret2(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.ret2$field = param1;
      }
      
      public function get ret2() : int
      {
         return this.ret2$field;
      }
      
      public function clearDoneDays() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.done_days$field = new int();
      }
      
      public function get hasDoneDays() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set doneDays(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.done_days$field = param1;
      }
      
      public function get doneDays() : int
      {
         return this.done_days$field;
      }
      
      public function clearMaxContinueDays() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.max_continue_days$field = new int();
      }
      
      public function get hasMaxContinueDays() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set maxContinueDays(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.max_continue_days$field = param1;
      }
      
      public function get maxContinueDays() : int
      {
         return this.max_continue_days$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet1)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.ret1$field);
         }
         if(this.hasIsOnline)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.is_online$field);
         }
         if(this.hasRet2)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.ret2$field);
         }
         if(this.hasDoneDays)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.done_days$field);
         }
         if(this.hasMaxContinueDays)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
