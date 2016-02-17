package serverProto.huntlife
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoCallNpcReq extends Message
   {
      
      public static const NPD_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoCallNpcReq.npd_id","npdId",1 << 3 | WireType.VARINT);
       
      private var npd_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoCallNpcReq()
      {
         super();
      }
      
      public function clearNpdId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.npd_id$field = new uint();
      }
      
      public function get hasNpdId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set npdId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.npd_id$field = param1;
      }
      
      public function get npdId() : uint
      {
         return this.npd_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasNpdId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.npd_id$field);
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
