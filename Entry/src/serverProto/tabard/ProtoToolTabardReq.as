package serverProto.tabard
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoToolTabardReq extends Message
   {
      
      public static const FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoToolTabardReq.flag","flag",1 << 3 | WireType.VARINT);
      
      public static const DATA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoToolTabardReq.data","data",2 << 3 | WireType.VARINT);
       
      public var flag:int;
      
      private var data$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoToolTabardReq()
      {
         super();
      }
      
      public function clearData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.data$field = new int();
      }
      
      public function get hasData() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set data(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.data$field = param1;
      }
      
      public function get data() : int
      {
         return this.data$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.flag);
         if(this.hasData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.data$field);
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
