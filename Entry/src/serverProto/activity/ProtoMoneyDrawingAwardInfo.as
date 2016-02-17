package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMoneyDrawingAwardInfo extends Message
   {
      
      public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingAwardInfo.num","num",1 << 3 | WireType.VARINT);
      
      public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMoneyDrawingAwardInfo.award","award",2 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const GOT_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoMoneyDrawingAwardInfo.got_status","gotStatus",3 << 3 | WireType.VARINT);
      
      public static const GIFT_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoMoneyDrawingAwardInfo.gift_name","giftName",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const GIFT_DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoMoneyDrawingAwardInfo.gift_desc","giftDesc",5 << 3 | WireType.LENGTH_DELIMITED);
       
      private var num$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var award:Array;
      
      private var got_status$field:int;
      
      private var gift_name$field:String;
      
      private var gift_desc$field:String;
      
      public function ProtoMoneyDrawingAwardInfo()
      {
         this.award = [];
         super();
      }
      
      public function clearNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.num$field = new uint();
      }
      
      public function get hasNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set num(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.num$field = param1;
      }
      
      public function get num() : uint
      {
         return this.num$field;
      }
      
      public function clearGotStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.got_status$field = new int();
      }
      
      public function get hasGotStatus() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set gotStatus(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.got_status$field = param1;
      }
      
      public function get gotStatus() : int
      {
         return this.got_status$field;
      }
      
      public function clearGiftName() : void
      {
         this.gift_name$field = null;
      }
      
      public function get hasGiftName() : Boolean
      {
         return this.gift_name$field != null;
      }
      
      public function set giftName(param1:String) : void
      {
         this.gift_name$field = param1;
      }
      
      public function get giftName() : String
      {
         return this.gift_name$field;
      }
      
      public function clearGiftDesc() : void
      {
         this.gift_desc$field = null;
      }
      
      public function get hasGiftDesc() : Boolean
      {
         return this.gift_desc$field != null;
      }
      
      public function set giftDesc(param1:String) : void
      {
         this.gift_desc$field = param1;
      }
      
      public function get giftDesc() : String
      {
         return this.gift_desc$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.num$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.award.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award[_loc2_]);
            _loc2_++;
         }
         if(this.hasGotStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.got_status$field);
         }
         if(this.hasGiftName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.gift_name$field);
         }
         if(this.hasGiftDesc)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_STRING(param1,this.gift_desc$field);
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
