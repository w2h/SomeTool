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
   
   public final class ProtoChakraMergeReq extends Message
   {
      
      public static const SRC_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraMergeReq.src_type","srcType",1 << 3 | WireType.VARINT);
      
      public static const SRC_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraMergeReq.src_index","srcIndex",2 << 3 | WireType.VARINT);
      
      public static const DST_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraMergeReq.dst_type","dstType",3 << 3 | WireType.VARINT);
      
      public static const DST_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraMergeReq.dst_index","dstIndex",4 << 3 | WireType.VARINT);
       
      private var src_type$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var src_index$field:uint;
      
      private var dst_type$field:uint;
      
      private var dst_index$field:uint;
      
      public function ProtoChakraMergeReq()
      {
         super();
      }
      
      public function clearSrcType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.src_type$field = new uint();
      }
      
      public function get hasSrcType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set srcType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.src_type$field = param1;
      }
      
      public function get srcType() : uint
      {
         return this.src_type$field;
      }
      
      public function clearSrcIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.src_index$field = new uint();
      }
      
      public function get hasSrcIndex() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set srcIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.src_index$field = param1;
      }
      
      public function get srcIndex() : uint
      {
         return this.src_index$field;
      }
      
      public function clearDstType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.dst_type$field = new uint();
      }
      
      public function get hasDstType() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set dstType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.dst_type$field = param1;
      }
      
      public function get dstType() : uint
      {
         return this.dst_type$field;
      }
      
      public function clearDstIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.dst_index$field = new uint();
      }
      
      public function get hasDstIndex() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set dstIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.dst_index$field = param1;
      }
      
      public function get dstIndex() : uint
      {
         return this.dst_index$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasSrcType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.src_type$field);
         }
         if(this.hasSrcIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.src_index$field);
         }
         if(this.hasDstType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.dst_type$field);
         }
         if(this.hasDstIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.dst_index$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
