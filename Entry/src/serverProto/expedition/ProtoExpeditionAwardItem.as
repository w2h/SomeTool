package serverProto.expedition
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoExpeditionAwardItem extends Message
   {
      
      public static const ITEM_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionAwardItem.item_id","itemId",1 << 3 | WireType.VARINT);
      
      public static const ITEM_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionAwardItem.item_count","itemCount",2 << 3 | WireType.VARINT);
      
      public static const HAS_OPEN:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionAwardItem.has_open","hasOpen",3 << 3 | WireType.VARINT);
       
      public var itemId:int;
      
      public var itemCount:int;
      
      private var has_open$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoExpeditionAwardItem()
      {
         super();
      }
      
      public function clearHasOpen() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.has_open$field = new int();
      }
      
      public function get hasHasOpen() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set hasOpen(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.has_open$field = param1;
      }
      
      public function get hasOpen() : int
      {
         return this.has_open$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.itemId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_SINT32(param1,this.itemCount);
         if(this.hasHasOpen)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.has_open$field);
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
