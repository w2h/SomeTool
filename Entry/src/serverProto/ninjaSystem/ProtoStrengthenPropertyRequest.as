package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoStrengthenPropertyRequest extends Message
   {
      
      public static const NINJA_SEQ:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoStrengthenPropertyRequest.ninja_seq","ninjaSeq",1 << 3 | WireType.VARINT);
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaSystem.ProtoStrengthenPropertyRequest.type","type",2 << 3 | WireType.VARINT,ProtoStrengthenPropertyType);
      
      public static const ONE_KEY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoStrengthenPropertyRequest.one_key","oneKey",3 << 3 | WireType.VARINT);
       
      public var ninjaSeq:int;
      
      public var type:int;
      
      private var one_key$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoStrengthenPropertyRequest()
      {
         super();
      }
      
      public function clearOneKey() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.one_key$field = new int();
      }
      
      public function get hasOneKey() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set oneKey(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.one_key$field = param1;
      }
      
      public function get oneKey() : int
      {
         return this.one_key$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.ninjaSeq);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasOneKey)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.one_key$field);
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
