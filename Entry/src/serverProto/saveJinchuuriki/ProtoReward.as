package serverProto.saveJinchuuriki
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoReward extends Message
   {
      
      public static const ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoReward.item_id","itemId",1 << 3 | WireType.VARINT);
      
      public static const ITEM_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoReward.item_count","itemCount",2 << 3 | WireType.VARINT);
       
      private var item_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var item_count$field:uint;
      
      public function ProtoReward()
      {
         super();
      }
      
      public function clearItemId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.item_id$field = new uint();
      }
      
      public function get hasItemId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set itemId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.item_id$field = param1;
      }
      
      public function get itemId() : uint
      {
         return this.item_id$field;
      }
      
      public function clearItemCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.item_count$field = new uint();
      }
      
      public function get hasItemCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set itemCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.item_count$field = param1;
      }
      
      public function get itemCount() : uint
      {
         return this.item_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasItemId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.item_id$field);
         }
         if(this.hasItemCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.item_count$field);
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
