package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNewOpenServiceGiftData extends Message
   {
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewOpenServiceGiftData.end_time","endTime",1 << 3 | WireType.VARINT);
      
      public static const REMAIN_SECONDS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewOpenServiceGiftData.remain_seconds","remainSeconds",2 << 3 | WireType.VARINT);
      
      public static const GOLDINGOT_DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewOpenServiceGiftData.goldingot_data","goldingotData",3 << 3 | WireType.VARINT);
      
      public static const PACKAGE_BOX:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceGiftData.package_box","packageBox",4 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
       
      private var end_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var remain_seconds$field:uint;
      
      private var goldingot_data$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBox:Array;
      
      public function ProtoNewOpenServiceGiftData()
      {
         this.packageBox = [];
         super();
      }
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.end_time$field = new uint();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set endTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.end_time$field = param1;
      }
      
      public function get endTime() : uint
      {
         return this.end_time$field;
      }
      
      public function clearRemainSeconds() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.remain_seconds$field = new uint();
      }
      
      public function get hasRemainSeconds() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainSeconds(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.remain_seconds$field = param1;
      }
      
      public function get remainSeconds() : uint
      {
         return this.remain_seconds$field;
      }
      
      public function clearGoldingotData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.goldingot_data$field = new uint();
      }
      
      public function get hasGoldingotData() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set goldingotData(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.goldingot_data$field = param1;
      }
      
      public function get goldingotData() : uint
      {
         return this.goldingot_data$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.end_time$field);
         }
         if(this.hasRemainSeconds)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_seconds$field);
         }
         if(this.hasGoldingotData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.goldingot_data$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.packageBox.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBox[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
