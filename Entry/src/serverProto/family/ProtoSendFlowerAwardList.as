package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSendFlowerAwardList extends Message
   {
      
      public static const AWARD_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.award_idx","awardIdx",1 << 3 | WireType.VARINT);
      
      public static const ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.item_id","itemId",2 << 3 | WireType.VARINT);
      
      public static const ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.item_num","itemNum",3 << 3 | WireType.VARINT);
      
      public static const PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.price","price",4 << 3 | WireType.VARINT);
      
      public static const ADD_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.add_degree","addDegree",5 << 3 | WireType.VARINT);
      
      public static const USE_TONGBI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerAwardList.use_tongbi","useTongbi",6 << 3 | WireType.VARINT);
       
      private var award_idx$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var item_id$field:uint;
      
      private var item_num$field:uint;
      
      private var price$field:uint;
      
      private var add_degree$field:uint;
      
      private var use_tongbi$field:uint;
      
      public function ProtoSendFlowerAwardList()
      {
         super();
      }
      
      public function clearAwardIdx() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.award_idx$field = new uint();
      }
      
      public function get hasAwardIdx() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set awardIdx(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.award_idx$field = param1;
      }
      
      public function get awardIdx() : uint
      {
         return this.award_idx$field;
      }
      
      public function clearItemId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.item_id$field = new uint();
      }
      
      public function get hasItemId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set itemId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.item_id$field = param1;
      }
      
      public function get itemId() : uint
      {
         return this.item_id$field;
      }
      
      public function clearItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.item_num$field = new uint();
      }
      
      public function get hasItemNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set itemNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.item_num$field = param1;
      }
      
      public function get itemNum() : uint
      {
         return this.item_num$field;
      }
      
      public function clearPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.price$field = new uint();
      }
      
      public function get hasPrice() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set price(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.price$field = param1;
      }
      
      public function get price() : uint
      {
         return this.price$field;
      }
      
      public function clearAddDegree() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.add_degree$field = new uint();
      }
      
      public function get hasAddDegree() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set addDegree(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.add_degree$field = param1;
      }
      
      public function get addDegree() : uint
      {
         return this.add_degree$field;
      }
      
      public function clearUseTongbi() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.use_tongbi$field = new uint();
      }
      
      public function get hasUseTongbi() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set useTongbi(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.use_tongbi$field = param1;
      }
      
      public function get useTongbi() : uint
      {
         return this.use_tongbi$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasAwardIdx)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.award_idx$field);
         }
         if(this.hasItemId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.item_id$field);
         }
         if(this.hasItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.item_num$field);
         }
         if(this.hasPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.price$field);
         }
         if(this.hasAddDegree)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.add_degree$field);
         }
         if(this.hasUseTongbi)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.use_tongbi$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
