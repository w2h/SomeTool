package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildBeastTransformReq extends Message
   {
      
      public static const QUALITY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastTransformReq.quality","quality",1 << 3 | WireType.VARINT);
       
      private var quality$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoGuildBeastTransformReq()
      {
         super();
      }
      
      public function clearQuality() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.quality$field = new int();
      }
      
      public function get hasQuality() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set quality(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.quality$field = param1;
      }
      
      public function get quality() : int
      {
         return this.quality$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasQuality)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.quality$field);
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
