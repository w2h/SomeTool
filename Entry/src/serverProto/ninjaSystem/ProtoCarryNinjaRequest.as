package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoCarryNinjaRequest extends Message
   {
      
      public static const NINJA_SEQUENCE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoCarryNinjaRequest.ninja_sequence","ninjaSequence",1 << 3 | WireType.VARINT);
      
      public static const REPLACE_NINJA_SEQUENCE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoCarryNinjaRequest.replace_ninja_sequence","replaceNinjaSequence",2 << 3 | WireType.VARINT);
       
      public var ninjaSequence:uint;
      
      private var replace_ninja_sequence$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoCarryNinjaRequest()
      {
         super();
      }
      
      public function clearReplaceNinjaSequence() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.replace_ninja_sequence$field = new uint();
      }
      
      public function get hasReplaceNinjaSequence() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set replaceNinjaSequence(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.replace_ninja_sequence$field = param1;
      }
      
      public function get replaceNinjaSequence() : uint
      {
         return this.replace_ninja_sequence$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaSequence);
         if(this.hasReplaceNinjaSequence)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.replace_ninja_sequence$field);
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
