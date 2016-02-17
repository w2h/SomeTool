package serverProto.innerActivity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoInnerOpenServiceReportReq extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerOpenServiceReportReq.type","type",1 << 3 | WireType.VARINT);
      
      public static const DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerOpenServiceReportReq.data","data",2 << 3 | WireType.VARINT);
       
      private var type$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var data$field:uint;
      
      public function ProtoInnerOpenServiceReportReq()
      {
         super();
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.type$field = new uint();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set type(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.type$field = param1;
      }
      
      public function get type() : uint
      {
         return this.type$field;
      }
      
      public function clearData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.data$field = new uint();
      }
      
      public function get hasData() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set data(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.data$field = param1;
      }
      
      public function get data() : uint
      {
         return this.data$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.type$field);
         }
         if(this.hasData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.data$field);
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
