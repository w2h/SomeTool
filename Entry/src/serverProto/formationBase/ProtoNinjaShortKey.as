package serverProto.formationBase
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaShortKey extends Message
   {
      
      public static const SHORT_KEY_0:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoNinjaShortKey.short_key_0","shortKey_0",1 << 3 | WireType.VARINT);
      
      public static const SHORT_KEY_1:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoNinjaShortKey.short_key_1","shortKey_1",2 << 3 | WireType.VARINT);
      
      public static const SHORT_KEY_2:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoNinjaShortKey.short_key_2","shortKey_2",3 << 3 | WireType.VARINT);
      
      public static const SHORT_KEY_3:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoNinjaShortKey.short_key_3","shortKey_3",4 << 3 | WireType.VARINT);
      
      public static const SHORT_KEY_4:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoNinjaShortKey.short_key_4","shortKey_4",5 << 3 | WireType.VARINT);
       
      public var shortKey_0:int;
      
      public var shortKey_1:int;
      
      public var shortKey_2:int;
      
      public var shortKey_3:int;
      
      public var shortKey_4:int;
      
      public function ProtoNinjaShortKey()
      {
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.shortKey_0);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.shortKey_1);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.shortKey_2);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_INT32(param1,this.shortKey_3);
         WriteUtils.writeTag(param1,WireType.VARINT,5);
         WriteUtils.write$TYPE_INT32(param1,this.shortKey_4);
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
