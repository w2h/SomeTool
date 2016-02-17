package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoLuxuryPackageBox extends Message
   {
      
      public static const BOX_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuxuryPackageBox.box_id","boxId",1 << 3 | WireType.VARINT);
      
      public static const PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuxuryPackageBox.price","price",2 << 3 | WireType.VARINT);
      
      public static const FORMER_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuxuryPackageBox.former_price","formerPrice",3 << 3 | WireType.VARINT);
      
      public static const AWARDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuxuryPackageBox.awards","awards",4 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuxuryPackageBox.status","status",5 << 3 | WireType.VARINT);
       
      private var box_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var price$field:uint;
      
      private var former_price$field:uint;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var awards:Array;
      
      private var status$field:uint;
      
      public function ProtoLuxuryPackageBox()
      {
         this.awards = [];
         super();
      }
      
      public function clearBoxId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.box_id$field = new uint();
      }
      
      public function get hasBoxId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set boxId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.box_id$field = param1;
      }
      
      public function get boxId() : uint
      {
         return this.box_id$field;
      }
      
      public function clearPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.price$field = new uint();
      }
      
      public function get hasPrice() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set price(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.price$field = param1;
      }
      
      public function get price() : uint
      {
         return this.price$field;
      }
      
      public function clearFormerPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.former_price$field = new uint();
      }
      
      public function get hasFormerPrice() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set formerPrice(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.former_price$field = param1;
      }
      
      public function get formerPrice() : uint
      {
         return this.former_price$field;
      }
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.status$field = new uint();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set status(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.status$field = param1;
      }
      
      public function get status() : uint
      {
         return this.status$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasBoxId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.box_id$field);
         }
         if(this.hasPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.price$field);
         }
         if(this.hasFormerPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.former_price$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.awards.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.awards[_loc2_]);
            _loc2_++;
         }
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.status$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
