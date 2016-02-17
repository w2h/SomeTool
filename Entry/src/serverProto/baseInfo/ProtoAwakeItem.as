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
   
   public final class ProtoAwakeItem extends Message
   {
      
      public static const AWAKE_NEED_ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoAwakeItem.awake_need_item_id","awakeNeedItemId",1 << 3 | WireType.VARINT);
      
      public static const AWAKE_NEED_ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoAwakeItem.awake_need_item_num","awakeNeedItemNum",2 << 3 | WireType.VARINT);
      
      public static const AWAKE_HAVE_ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoAwakeItem.awake_have_item_num","awakeHaveItemNum",3 << 3 | WireType.VARINT);
       
      private var awake_need_item_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var awake_need_item_num$field:uint;
      
      private var awake_have_item_num$field:uint;
      
      public function ProtoAwakeItem()
      {
         super();
      }
      
      public function clearAwakeNeedItemId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.awake_need_item_id$field = new uint();
      }
      
      public function get hasAwakeNeedItemId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set awakeNeedItemId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.awake_need_item_id$field = param1;
      }
      
      public function get awakeNeedItemId() : uint
      {
         return this.awake_need_item_id$field;
      }
      
      public function clearAwakeNeedItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.awake_need_item_num$field = new uint();
      }
      
      public function get hasAwakeNeedItemNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set awakeNeedItemNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.awake_need_item_num$field = param1;
      }
      
      public function get awakeNeedItemNum() : uint
      {
         return this.awake_need_item_num$field;
      }
      
      public function clearAwakeHaveItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.awake_have_item_num$field = new uint();
      }
      
      public function get hasAwakeHaveItemNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set awakeHaveItemNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.awake_have_item_num$field = param1;
      }
      
      public function get awakeHaveItemNum() : uint
      {
         return this.awake_have_item_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasAwakeNeedItemId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.awake_need_item_id$field);
         }
         if(this.hasAwakeNeedItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.awake_need_item_num$field);
         }
         if(this.hasAwakeHaveItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.awake_have_item_num$field);
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
