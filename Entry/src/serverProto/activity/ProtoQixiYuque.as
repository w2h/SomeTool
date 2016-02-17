package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQixiYuque extends Message
   {
      
      public static const TOTAL_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiYuque.total_yuanbao","totalYuanbao",1 << 3 | WireType.VARINT);
      
      public static const AWARD_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiYuque.award_count","awardCount",2 << 3 | WireType.VARINT);
      
      public static const MAX_AWARD_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiYuque.max_award_count","maxAwardCount",3 << 3 | WireType.VARINT);
      
      public static const AWARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiYuque.award_status","awardStatus",4 << 3 | WireType.VARINT);
       
      private var total_yuanbao$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var award_count$field:uint;
      
      private var max_award_count$field:uint;
      
      private var award_status$field:uint;
      
      public function ProtoQixiYuque()
      {
         super();
      }
      
      public function clearTotalYuanbao() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.total_yuanbao$field = new uint();
      }
      
      public function get hasTotalYuanbao() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set totalYuanbao(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.total_yuanbao$field = param1;
      }
      
      public function get totalYuanbao() : uint
      {
         return this.total_yuanbao$field;
      }
      
      public function clearAwardCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.award_count$field = new uint();
      }
      
      public function get hasAwardCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set awardCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.award_count$field = param1;
      }
      
      public function get awardCount() : uint
      {
         return this.award_count$field;
      }
      
      public function clearMaxAwardCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.max_award_count$field = new uint();
      }
      
      public function get hasMaxAwardCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set maxAwardCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.max_award_count$field = param1;
      }
      
      public function get maxAwardCount() : uint
      {
         return this.max_award_count$field;
      }
      
      public function clearAwardStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.award_status$field = new uint();
      }
      
      public function get hasAwardStatus() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set awardStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.award_status$field = param1;
      }
      
      public function get awardStatus() : uint
      {
         return this.award_status$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTotalYuanbao)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.total_yuanbao$field);
         }
         if(this.hasAwardCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.award_count$field);
         }
         if(this.hasMaxAwardCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.max_award_count$field);
         }
         if(this.hasAwardStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.award_status$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
