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
   
   public final class ProtoInnerTest2Rsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoInnerTest2Rsp.ret","ret",1 << 3 | WireType.VARINT);
      
      public static const TYPE1:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoInnerTest2Rsp.type1","type1",2 << 3 | WireType.VARINT);
      
      public static const TYPE2:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoInnerTest2Rsp.type2","type2",3 << 3 | WireType.VARINT);
       
      private var ret$field:int;
      
      private var hasField$0:uint = 0;
      
      private var type1$field:uint;
      
      private var type2$field:uint;
      
      public function ProtoInnerTest2Rsp()
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
      
      public function clearType1() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.type1$field = new uint();
      }
      
      public function get hasType1() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set type1(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.type1$field = param1;
      }
      
      public function get type1() : uint
      {
         return this.type1$field;
      }
      
      public function clearType2() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.type2$field = new uint();
      }
      
      public function get hasType2() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set type2(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.type2$field = param1;
      }
      
      public function get type2() : uint
      {
         return this.type2$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.ret$field);
         }
         if(this.hasType1)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.type1$field);
         }
         if(this.hasType2)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.type2$field);
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
