package serverProto.store
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoStoreFusionCardInfo extends Message
   {
      
      public static const CARD_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreFusionCardInfo.card_id","cardId",1 << 3 | WireType.VARINT);
      
      public static const FUSION_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreFusionCardInfo.fusion_price","fusionPrice",2 << 3 | WireType.VARINT);
      
      public static const IS_OPEN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.store.ProtoStoreFusionCardInfo.is_open","isOpen",3 << 3 | WireType.VARINT);
       
      public var cardId:uint;
      
      public var fusionPrice:uint;
      
      private var is_open$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoStoreFusionCardInfo()
      {
         super();
      }
      
      public function clearIsOpen() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_open$field = new int();
      }
      
      public function get hasIsOpen() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isOpen(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_open$field = param1;
      }
      
      public function get isOpen() : int
      {
         return this.is_open$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.cardId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.fusionPrice);
         if(this.hasIsOpen)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.is_open$field);
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
