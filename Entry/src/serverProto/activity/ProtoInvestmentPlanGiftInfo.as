package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoInvestmentPlanGiftInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const TOTAL_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.total_count","totalCount",2 << 3 | WireType.VARINT);
      
      public static const AWARD_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.award_count","awardCount",3 << 3 | WireType.VARINT);
      
      public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.remain_time","remainTime",4 << 3 | WireType.VARINT);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoInvestmentPlanGiftInfo.package_boxes","packageBoxes",5 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const VALUES:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.values","values",6 << 3 | WireType.VARINT);
      
      public static const STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInvestmentPlanGiftInfo.state","state",7 << 3 | WireType.VARINT);
       
      private var id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var total_count$field:uint;
      
      private var award_count$field:uint;
      
      private var remain_time$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      [ArrayElementType("uint")]
      public var values:Array;
      
      private var state$field:uint;
      
      public function ProtoInvestmentPlanGiftInfo()
      {
         this.packageBoxes = [];
         this.values = [];
         super();
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.id$field = new uint();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set id(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.id$field = param1;
      }
      
      public function get id() : uint
      {
         return this.id$field;
      }
      
      public function clearTotalCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.total_count$field = new uint();
      }
      
      public function get hasTotalCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set totalCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.total_count$field = param1;
      }
      
      public function get totalCount() : uint
      {
         return this.total_count$field;
      }
      
      public function clearAwardCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.award_count$field = new uint();
      }
      
      public function get hasAwardCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set awardCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.award_count$field = param1;
      }
      
      public function get awardCount() : uint
      {
         return this.award_count$field;
      }
      
      public function clearRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.remain_time$field = new uint();
      }
      
      public function get hasRemainTime() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set remainTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.remain_time$field = param1;
      }
      
      public function get remainTime() : uint
      {
         return this.remain_time$field;
      }
      
      public function clearState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.state$field = new uint();
      }
      
      public function get hasState() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set state(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.state$field = param1;
      }
      
      public function get state() : uint
      {
         return this.state$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.id$field);
         }
         if(this.hasTotalCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.total_count$field);
         }
         if(this.hasAwardCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.award_count$field);
         }
         if(this.hasRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_time$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBoxes[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.values.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.values[_loc3_]);
            _loc3_++;
         }
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.state$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
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
