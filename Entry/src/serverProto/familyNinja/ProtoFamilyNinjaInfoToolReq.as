package serverProto.familyNinja
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFamilyNinjaInfoToolReq extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaInfoToolReq.type","type",1 << 3 | WireType.VARINT);
      
      public static const DATA1:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaInfoToolReq.data1","data1",2 << 3 | WireType.VARINT);
      
      public static const DATA2:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaInfoToolReq.data2","data2",3 << 3 | WireType.VARINT);
      
      public static const DATA3:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaInfoToolReq.data3","data3",4 << 3 | WireType.VARINT);
       
      private var type$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var data1$field:uint;
      
      private var data2$field:uint;
      
      private var data3$field:uint;
      
      public function ProtoFamilyNinjaInfoToolReq()
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
      
      public function clearData1() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.data1$field = new uint();
      }
      
      public function get hasData1() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set data1(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.data1$field = param1;
      }
      
      public function get data1() : uint
      {
         return this.data1$field;
      }
      
      public function clearData2() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.data2$field = new uint();
      }
      
      public function get hasData2() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set data2(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.data2$field = param1;
      }
      
      public function get data2() : uint
      {
         return this.data2$field;
      }
      
      public function clearData3() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.data3$field = new uint();
      }
      
      public function get hasData3() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set data3(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.data3$field = param1;
      }
      
      public function get data3() : uint
      {
         return this.data3$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.type$field);
         }
         if(this.hasData1)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.data1$field);
         }
         if(this.hasData2)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.data2$field);
         }
         if(this.hasData3)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.data3$field);
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
