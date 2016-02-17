package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildTranslationInfo extends Message
   {
      
      public static const TRAN_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildTranslationInfo.tran_key","tranKey",1 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildTranslationKey);
      
      public static const ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildTranslationInfo.item_id","itemId",2 << 3 | WireType.VARINT);
      
      public static const ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildTranslationInfo.item_num","itemNum",3 << 3 | WireType.VARINT);
      
      public static const NEED_ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildTranslationInfo.need_item_id","needItemId",4 << 3 | WireType.VARINT);
      
      public static const NEED_ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildTranslationInfo.need_item_num","needItemNum",5 << 3 | WireType.VARINT);
      
      public static const SELLER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildTranslationInfo.seller_name","sellerName",6 << 3 | WireType.LENGTH_DELIMITED);
       
      public var tranKey:serverProto.guild.ProtoGuildTranslationKey;
      
      private var item_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var item_num$field:uint;
      
      private var need_item_id$field:uint;
      
      private var need_item_num$field:uint;
      
      private var seller_name$field:String;
      
      public function ProtoGuildTranslationInfo()
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
      
      public function clearItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.item_num$field = new uint();
      }
      
      public function get hasItemNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set itemNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.item_num$field = param1;
      }
      
      public function get itemNum() : uint
      {
         return this.item_num$field;
      }
      
      public function clearNeedItemId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.need_item_id$field = new uint();
      }
      
      public function get hasNeedItemId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set needItemId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.need_item_id$field = param1;
      }
      
      public function get needItemId() : uint
      {
         return this.need_item_id$field;
      }
      
      public function clearNeedItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.need_item_num$field = new uint();
      }
      
      public function get hasNeedItemNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set needItemNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.need_item_num$field = param1;
      }
      
      public function get needItemNum() : uint
      {
         return this.need_item_num$field;
      }
      
      public function clearSellerName() : void
      {
         this.seller_name$field = null;
      }
      
      public function get hasSellerName() : Boolean
      {
         return this.seller_name$field != null;
      }
      
      public function set sellerName(param1:String) : void
      {
         this.seller_name$field = param1;
      }
      
      public function get sellerName() : String
      {
         return this.seller_name$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.tranKey);
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
         if(this.hasNeedItemId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.need_item_id$field);
         }
         if(this.hasNeedItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.need_item_num$field);
         }
         if(this.hasSellerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_STRING(param1,this.seller_name$field);
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
