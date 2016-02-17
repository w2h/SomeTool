package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTabardMateriaBuylBox extends Message
   {
      
      public static const BOX_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTabardMateriaBuylBox.box_id","boxId",1 << 3 | WireType.VARINT);
      
      public static const AWARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTabardMateriaBuylBox.award_status","awardStatus",2 << 3 | WireType.VARINT);
      
      public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoTabardMateriaBuylBox.award","award",3 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoTabardMateriaBuylBox.value","value",4 << 3 | WireType.VARINT);
      
      public static const BOX_DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoTabardMateriaBuylBox.box_desc","boxDesc",5 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const DISCOUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoTabardMateriaBuylBox.discount","discount",6 << 3 | WireType.VARINT);
      
      public static const COSUME_GOLDINGOT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoTabardMateriaBuylBox.cosume_goldingot","cosumeGoldingot",7 << 3 | WireType.VARINT);
       
      private var box_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var award_status$field:uint;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var award:Array;
      
      private var value$field:uint;
      
      private var box_desc$field:String;
      
      private var discount$field:int;
      
      private var cosume_goldingot$field:int;
      
      public function ProtoTabardMateriaBuylBox()
      {
         this.award = [];
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
      
      public function clearAwardStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.award_status$field = new uint();
      }
      
      public function get hasAwardStatus() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set awardStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.award_status$field = param1;
      }
      
      public function get awardStatus() : uint
      {
         return this.award_status$field;
      }
      
      public function clearValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.value$field = new uint();
      }
      
      public function get hasValue() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set value(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.value$field = param1;
      }
      
      public function get value() : uint
      {
         return this.value$field;
      }
      
      public function clearBoxDesc() : void
      {
         this.box_desc$field = null;
      }
      
      public function get hasBoxDesc() : Boolean
      {
         return this.box_desc$field != null;
      }
      
      public function set boxDesc(param1:String) : void
      {
         this.box_desc$field = param1;
      }
      
      public function get boxDesc() : String
      {
         return this.box_desc$field;
      }
      
      public function clearDiscount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.discount$field = new int();
      }
      
      public function get hasDiscount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set discount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.discount$field = param1;
      }
      
      public function get discount() : int
      {
         return this.discount$field;
      }
      
      public function clearCosumeGoldingot() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.cosume_goldingot$field = new int();
      }
      
      public function get hasCosumeGoldingot() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set cosumeGoldingot(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.cosume_goldingot$field = param1;
      }
      
      public function get cosumeGoldingot() : int
      {
         return this.cosume_goldingot$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasBoxId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.box_id$field);
         }
         if(this.hasAwardStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.award_status$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.award.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award[_loc2_]);
            _loc2_++;
         }
         if(this.hasValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.value$field);
         }
         if(this.hasBoxDesc)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_STRING(param1,this.box_desc$field);
         }
         if(this.hasDiscount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.discount$field);
         }
         if(this.hasCosumeGoldingot)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.cosume_goldingot$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
