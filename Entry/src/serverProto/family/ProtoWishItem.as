package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWishItem extends Message
   {
      
      public static const ITEM_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishItem.item_id","itemId",1 << 3 | WireType.VARINT);
      
      public static const ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishItem.item_num","itemNum",2 << 3 | WireType.VARINT);
       
      private var item_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var item_num$field:int;
      
      public function ProtoWishItem()
      {
         super();
      }
      
      public function clearItemId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.item_id$field = new int();
      }
      
      public function get hasItemId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set itemId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.item_id$field = param1;
      }
      
      public function get itemId() : int
      {
         return this.item_id$field;
      }
      
      public function clearItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.item_num$field = new int();
      }
      
      public function get hasItemNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set itemNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.item_num$field = param1;
      }
      
      public function get itemNum() : int
      {
         return this.item_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasItemId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.item_id$field);
         }
         if(this.hasItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.item_num$field);
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
