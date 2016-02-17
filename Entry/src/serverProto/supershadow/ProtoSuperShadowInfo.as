package serverProto.supershadow
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSuperShadowInfo extends Message
   {
      
      public static const ITEM_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.supershadow.ProtoSuperShadowInfo.item_list","itemList",1 << 3 | WireType.LENGTH_DELIMITED,ProtoSuperShadowItemInfo);
      
      public static const ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.supershadow.ProtoSuperShadowInfo.item_info","itemInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoSuperShadowItemInfo);
      
      public static const PAY_RESET_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowInfo.pay_reset_num","payResetNum",3 << 3 | WireType.VARINT);
      
      public static const PAY_QUILT_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowInfo.pay_quilt_num","payQuiltNum",4 << 3 | WireType.VARINT);
       
      [ArrayElementType("serverProto.supershadow.ProtoSuperShadowItemInfo")]
      public var itemList:Array;
      
      private var item_info$field:serverProto.supershadow.ProtoSuperShadowItemInfo;
      
      private var pay_reset_num$field:int;
      
      private var hasField$0:uint = 0;
      
      private var pay_quilt_num$field:int;
      
      public function ProtoSuperShadowInfo()
      {
         this.itemList = [];
         super();
      }
      
      public function clearItemInfo() : void
      {
         this.item_info$field = null;
      }
      
      public function get hasItemInfo() : Boolean
      {
         return this.item_info$field != null;
      }
      
      public function set itemInfo(param1:serverProto.supershadow.ProtoSuperShadowItemInfo) : void
      {
         this.item_info$field = param1;
      }
      
      public function get itemInfo() : serverProto.supershadow.ProtoSuperShadowItemInfo
      {
         return this.item_info$field;
      }
      
      public function clearPayResetNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.pay_reset_num$field = new int();
      }
      
      public function get hasPayResetNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set payResetNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.pay_reset_num$field = param1;
      }
      
      public function get payResetNum() : int
      {
         return this.pay_reset_num$field;
      }
      
      public function clearPayQuiltNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.pay_quilt_num$field = new int();
      }
      
      public function get hasPayQuiltNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set payQuiltNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.pay_quilt_num$field = param1;
      }
      
      public function get payQuiltNum() : int
      {
         return this.pay_quilt_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.itemList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.itemList[_loc2_]);
            _loc2_++;
         }
         if(this.hasItemInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.item_info$field);
         }
         if(this.hasPayResetNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.pay_reset_num$field);
         }
         if(this.hasPayQuiltNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.pay_quilt_num$field);
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
