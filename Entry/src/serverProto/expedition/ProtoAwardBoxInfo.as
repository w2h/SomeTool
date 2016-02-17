package serverProto.expedition
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoAwardBoxInfo extends Message
   {
      
      public static const BOX_KEY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoAwardBoxInfo.box_key","boxKey",1 << 3 | WireType.VARINT);
      
      public static const BOX_ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoAwardBoxInfo.box_item","boxItem",2 << 3 | WireType.LENGTH_DELIMITED,ProtoExpeditionAwardItem);
       
      private var box_key$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.expedition.ProtoExpeditionAwardItem")]
      public var boxItem:Array;
      
      public function ProtoAwardBoxInfo()
      {
         this.boxItem = [];
         super();
      }
      
      public function clearBoxKey() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.box_key$field = new int();
      }
      
      public function get hasBoxKey() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set boxKey(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.box_key$field = param1;
      }
      
      public function get boxKey() : int
      {
         return this.box_key$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasBoxKey)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.box_key$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.boxItem.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.boxItem[_loc2_]);
            _loc2_++;
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
