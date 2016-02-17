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
   
   public final class ProtoSellChakraReq extends Message
   {
      
      public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoSellChakraReq.index","index",1 << 3 | WireType.VARINT);
      
      public static const GRADE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoSellChakraReq.grade","grade",2 << 3 | WireType.VARINT);
      
      public static const MERGE_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoSellChakraReq.merge_flag","mergeFlag",3 << 3 | WireType.VARINT);
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoSellChakraReq.type","type",4 << 3 | WireType.VARINT);
       
      private var index$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var grade$field:uint;
      
      private var merge_flag$field:uint;
      
      private var type$field:uint;
      
      public function ProtoSellChakraReq()
      {
         super();
      }
      
      public function clearIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.index$field = new uint();
      }
      
      public function get hasIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set index(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.index$field = param1;
      }
      
      public function get index() : uint
      {
         return this.index$field;
      }
      
      public function clearGrade() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.grade$field = new uint();
      }
      
      public function get hasGrade() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set grade(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.grade$field = param1;
      }
      
      public function get grade() : uint
      {
         return this.grade$field;
      }
      
      public function clearMergeFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.merge_flag$field = new uint();
      }
      
      public function get hasMergeFlag() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set mergeFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.merge_flag$field = param1;
      }
      
      public function get mergeFlag() : uint
      {
         return this.merge_flag$field;
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.type$field = new uint();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set type(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.type$field = param1;
      }
      
      public function get type() : uint
      {
         return this.type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.index$field);
         }
         if(this.hasGrade)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.grade$field);
         }
         if(this.hasMergeFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.merge_flag$field);
         }
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.type$field);
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
