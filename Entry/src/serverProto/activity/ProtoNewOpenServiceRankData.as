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
   
   public final class ProtoNewOpenServiceRankData extends Message
   {
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewOpenServiceRankData.end_time","endTime",1 << 3 | WireType.VARINT);
      
      public static const REMAIN_SECONDS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewOpenServiceRankData.remain_seconds","remainSeconds",2 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewOpenServiceRankData.role_category","roleCategory",3 << 3 | WireType.VARINT);
      
      public static const RANK_DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewOpenServiceRankData.rank_data","rankData",4 << 3 | WireType.VARINT);
      
      public static const RANKS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceRankData.ranks","ranks",5 << 3 | WireType.LENGTH_DELIMITED,ProtoOpenServiceRank);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceRankData.package_boxes","packageBoxes",6 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
       
      private var end_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var remain_seconds$field:uint;
      
      private var role_category$field:uint;
      
      private var rank_data$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoOpenServiceRank")]
      public var ranks:Array;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      public function ProtoNewOpenServiceRankData()
      {
         this.ranks = [];
         this.packageBoxes = [];
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
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.role_category$field = new uint();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set roleCategory(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : uint
      {
         return this.role_category$field;
      }
      
      public function clearRankData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.rank_data$field = new uint();
      }
      
      public function get hasRankData() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set rankData(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.rank_data$field = param1;
      }
      
      public function get rankData() : uint
      {
         return this.rank_data$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
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
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.role_category$field);
         }
         if(this.hasRankData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.rank_data$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ranks.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ranks[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBoxes[_loc3_]);
            _loc3_++;
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
