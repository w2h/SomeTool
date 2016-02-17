package serverProto.randStore
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRandStoreItemInfo extends Message
   {
      
      public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.index","index",1 << 3 | WireType.VARINT);
      
      public static const ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.item_id","itemId",2 << 3 | WireType.VARINT);
      
      public static const COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.count","count",3 << 3 | WireType.VARINT);
      
      public static const PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.price","price",4 << 3 | WireType.VARINT);
      
      public static const FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.flag","flag",5 << 3 | WireType.VARINT);
      
      public static const CURR_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.curr_count","currCount",6 << 3 | WireType.VARINT);
      
      public static const PAY_ITEM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.pay_item","payItem",7 << 3 | WireType.VARINT);
       
      public var index:uint;
      
      public var itemId:uint;
      
      public var count:uint;
      
      public var price:uint;
      
      public var flag:uint;
      
      private var curr_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var pay_item$field:uint;
      
      public function ProtoRandStoreItemInfo()
      {
         super();
      }
      
      public function clearCurrCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.curr_count$field = new uint();
      }
      
      public function get hasCurrCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.curr_count$field = param1;
      }
      
      public function get currCount() : uint
      {
         return this.curr_count$field;
      }
      
      public function clearPayItem() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.pay_item$field = new uint();
      }
      
      public function get hasPayItem() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set payItem(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.pay_item$field = param1;
      }
      
      public function get payItem() : uint
      {
         return this.pay_item$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.index);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.itemId);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.count);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.price);
         WriteUtils.writeTag(param1,WireType.VARINT,5);
         WriteUtils.write$TYPE_UINT32(param1,this.flag);
         if(this.hasCurrCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.curr_count$field);
         }
         if(this.hasPayItem)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.pay_item$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
