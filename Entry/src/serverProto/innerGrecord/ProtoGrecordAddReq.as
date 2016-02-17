package serverProto.innerGrecord
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGrecordAddReq extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.innerGrecord.ProtoGrecordAddReq.type","type",1 << 3 | WireType.VARINT);
      
      public static const IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.innerGrecord.ProtoGrecordAddReq.idx","idx",2 << 3 | WireType.VARINT);
      
      public static const DATA:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.innerGrecord.ProtoGrecordAddReq.data","data",3 << 3 | WireType.VARINT);
       
      private var type$field:int;
      
      private var hasField$0:uint = 0;
      
      private var idx$field:int;
      
      private var data$field:int;
      
      public function ProtoGrecordAddReq()
      {
         super();
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.type$field = new int();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set type(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.type$field = param1;
      }
      
      public function get type() : int
      {
         return this.type$field;
      }
      
      public function clearIdx() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.idx$field = new int();
      }
      
      public function get hasIdx() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set idx(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.idx$field = param1;
      }
      
      public function get idx() : int
      {
         return this.idx$field;
      }
      
      public function clearData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.data$field = new int();
      }
      
      public function get hasData() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set data(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.data$field = param1;
      }
      
      public function get data() : int
      {
         return this.data$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.type$field);
         }
         if(this.hasIdx)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.idx$field);
         }
         if(this.hasData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.data$field);
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
