package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSecondAwakeItem extends Message
   {
      
      public static const NEED_ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoSecondAwakeItem.need_item_id","needItemId",1 << 3 | WireType.VARINT);
      
      public static const NEED_ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoSecondAwakeItem.need_item_num","needItemNum",2 << 3 | WireType.VARINT);
      
      public static const HAVE_ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoSecondAwakeItem.have_item_num","haveItemNum",3 << 3 | WireType.VARINT);
       
      private var need_item_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var need_item_num$field:uint;
      
      private var have_item_num$field:uint;
      
      public function ProtoSecondAwakeItem()
      {
         super();
      }
      
      public function clearNeedItemId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.need_item_id$field = new uint();
      }
      
      public function get hasNeedItemId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set needItemId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.need_item_id$field = param1;
      }
      
      public function get needItemId() : uint
      {
         return this.need_item_id$field;
      }
      
      public function clearNeedItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.need_item_num$field = new uint();
      }
      
      public function get hasNeedItemNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set needItemNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.need_item_num$field = param1;
      }
      
      public function get needItemNum() : uint
      {
         return this.need_item_num$field;
      }
      
      public function clearHaveItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.have_item_num$field = new uint();
      }
      
      public function get hasHaveItemNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set haveItemNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.have_item_num$field = param1;
      }
      
      public function get haveItemNum() : uint
      {
         return this.have_item_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasNeedItemId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.need_item_id$field);
         }
         if(this.hasNeedItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.need_item_num$field);
         }
         if(this.hasHaveItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.have_item_num$field);
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
