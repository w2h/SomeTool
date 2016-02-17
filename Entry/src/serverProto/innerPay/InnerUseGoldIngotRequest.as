package serverProto.innerPay
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class InnerUseGoldIngotRequest extends Message
   {
      
      public static const RESON:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerUseGoldIngotRequest.reson","reson",1 << 3 | WireType.VARINT);
      
      public static const GOLD_INGOT_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerUseGoldIngotRequest.gold_ingot_num","goldIngotNum",2 << 3 | WireType.VARINT);
      
      public static const UPDATE_ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerUseGoldIngotRequest.update_item_info","updateItemInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoUpdateItemInfo);
      
      public static const DATA1:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerUseGoldIngotRequest.data1","data1",4 << 3 | WireType.VARINT);
      
      public static const DATA2:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerUseGoldIngotRequest.data2","data2",5 << 3 | WireType.VARINT);
      
      public static const DATA3:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerUseGoldIngotRequest.data3","data3",6 << 3 | WireType.VARINT);
      
      public static const CHAKRA_ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerUseGoldIngotRequest.chakra_item_info","chakraItemInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoUpdateItemInfo);
       
      public var reson:int;
      
      public var goldIngotNum:int;
      
      [ArrayElementType("serverProto.inc.ProtoUpdateItemInfo")]
      public var updateItemInfo:Array;
      
      private var data1$field:int;
      
      private var hasField$0:uint = 0;
      
      private var data2$field:int;
      
      private var data3$field:int;
      
      [ArrayElementType("serverProto.inc.ProtoUpdateItemInfo")]
      public var chakraItemInfo:Array;
      
      public function InnerUseGoldIngotRequest()
      {
         this.updateItemInfo = [];
         this.chakraItemInfo = [];
         super();
      }
      
      public function clearData1() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.data1$field = new int();
      }
      
      public function get hasData1() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set data1(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.data1$field = param1;
      }
      
      public function get data1() : int
      {
         return this.data1$field;
      }
      
      public function clearData2() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.data2$field = new int();
      }
      
      public function get hasData2() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set data2(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.data2$field = param1;
      }
      
      public function get data2() : int
      {
         return this.data2$field;
      }
      
      public function clearData3() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.data3$field = new int();
      }
      
      public function get hasData3() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set data3(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.data3$field = param1;
      }
      
      public function get data3() : int
      {
         return this.data3$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.reson);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.goldIngotNum);
         var _loc2_:uint = 0;
         while(_loc2_ < this.updateItemInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.updateItemInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasData1)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.data1$field);
         }
         if(this.hasData2)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.data2$field);
         }
         if(this.hasData3)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.data3$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.chakraItemInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.chakraItemInfo[_loc3_]);
            _loc3_++;
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
