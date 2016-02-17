package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniFuzExchangeItemInfo extends Message
   {
      
      public static const ITEM_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzExchangeItemInfo.item_id","itemId",1 << 3 | WireType.VARINT);
      
      public static const ITEM_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzExchangeItemInfo.item_count","itemCount",2 << 3 | WireType.VARINT);
      
      public static const ITEM_PRICE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzExchangeItemInfo.item_price","itemPrice",3 << 3 | WireType.VARINT);
       
      public var itemId:int;
      
      private var item_count$field:int;
      
      private var hasField$0:uint = 0;
      
      private var item_price$field:int;
      
      public function ProtoUniFuzExchangeItemInfo()
      {
         super();
      }
      
      public function clearItemCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.item_count$field = new int();
      }
      
      public function get hasItemCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set itemCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.item_count$field = param1;
      }
      
      public function get itemCount() : int
      {
         return this.item_count$field;
      }
      
      public function clearItemPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.item_price$field = new int();
      }
      
      public function get hasItemPrice() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set itemPrice(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.item_price$field = param1;
      }
      
      public function get itemPrice() : int
      {
         return this.item_price$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.itemId);
         if(this.hasItemCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.item_count$field);
         }
         if(this.hasItemPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.item_price$field);
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
