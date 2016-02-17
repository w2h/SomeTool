package serverProto.familyNinja
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFamilyNinjaInfoOrderRsp extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.familyNinja.ProtoFamilyNinjaInfoOrderRsp.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const REST_ORDER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaInfoOrderRsp.rest_order_num","restOrderNum",2 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var rest_order_num$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoFamilyNinjaInfoOrderRsp()
      {
         super();
      }
      
      public function clearRestOrderNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rest_order_num$field = new uint();
      }
      
      public function get hasRestOrderNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set restOrderNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rest_order_num$field = param1;
      }
      
      public function get restOrderNum() : uint
      {
         return this.rest_order_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasRestOrderNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_order_num$field);
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
