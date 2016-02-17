package serverProto.innerPay
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class InnerUseGoldIngotResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerUseGoldIngotResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const AMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerUseGoldIngotResponse.amount","amount",2 << 3 | WireType.VARINT);
      
      public static const REAL_USE_AMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerUseGoldIngotResponse.real_use_amount","realUseAmount",3 << 3 | WireType.VARINT);
      
      public static const ITEM_INFO_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerUseGoldIngotResponse.item_info_ary","itemInfoAry",4 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var amount$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var real_use_amount$field:uint;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var itemInfoAry:Array;
      
      public function InnerUseGoldIngotResponse()
      {
         this.itemInfoAry = [];
         super();
      }
      
      public function clearAmount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.amount$field = new uint();
      }
      
      public function get hasAmount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set amount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.amount$field = param1;
      }
      
      public function get amount() : uint
      {
         return this.amount$field;
      }
      
      public function clearRealUseAmount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.real_use_amount$field = new uint();
      }
      
      public function get hasRealUseAmount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set realUseAmount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.real_use_amount$field = param1;
      }
      
      public function get realUseAmount() : uint
      {
         return this.real_use_amount$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasAmount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.amount$field);
         }
         if(this.hasRealUseAmount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.real_use_amount$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.itemInfoAry.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.itemInfoAry[_loc2_]);
            _loc2_++;
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
