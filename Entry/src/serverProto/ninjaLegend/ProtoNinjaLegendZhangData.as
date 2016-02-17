package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLegendZhangData extends Message
   {
      
      public static const STAR_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendZhangData.star_num","starNum",1 << 3 | WireType.VARINT);
      
      public static const FAVOUR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendZhangData.favour","favour",2 << 3 | WireType.VARINT);
      
      public static const DAILY_FINISH_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendZhangData.daily_finish_times","dailyFinishTimes",3 << 3 | WireType.VARINT);
      
      public static const DAILY_RESET_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendZhangData.daily_reset_times","dailyResetTimes",4 << 3 | WireType.VARINT);
      
      public static const DAILY_RESET_ULTIMATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendZhangData.daily_reset_ultimate","dailyResetUltimate",5 << 3 | WireType.VARINT);
      
      public static const RESET_NEED_GOLD:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaLegend.ProtoNinjaLegendZhangData.reset_need_gold","resetNeedGold",6 << 3 | WireType.VARINT);
      
      public static const HAS_SKIP:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.ninjaLegend.ProtoNinjaLegendZhangData.has_skip","hasSkip",7 << 3 | WireType.VARINT);
      
      public static const FINISH_BRANCH_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendZhangData.finish_branch_count","finishBranchCount",8 << 3 | WireType.VARINT);
      
      public static const TOTAL_BRANCH_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendZhangData.total_branch_count","totalBranchCount",9 << 3 | WireType.VARINT);
       
      private var star_num$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var favour$field:uint;
      
      private var daily_finish_times$field:uint;
      
      private var daily_reset_times$field:uint;
      
      private var daily_reset_ultimate$field:uint;
      
      private var reset_need_gold$field:int;
      
      private var has_skip$field:Boolean;
      
      private var finish_branch_count$field:uint;
      
      private var total_branch_count$field:uint;
      
      public function ProtoNinjaLegendZhangData()
      {
         super();
      }
      
      public function clearStarNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.star_num$field = new uint();
      }
      
      public function get hasStarNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set starNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.star_num$field = param1;
      }
      
      public function get starNum() : uint
      {
         return this.star_num$field;
      }
      
      public function clearFavour() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.favour$field = new uint();
      }
      
      public function get hasFavour() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set favour(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.favour$field = param1;
      }
      
      public function get favour() : uint
      {
         return this.favour$field;
      }
      
      public function clearDailyFinishTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.daily_finish_times$field = new uint();
      }
      
      public function get hasDailyFinishTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set dailyFinishTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.daily_finish_times$field = param1;
      }
      
      public function get dailyFinishTimes() : uint
      {
         return this.daily_finish_times$field;
      }
      
      public function clearDailyResetTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.daily_reset_times$field = new uint();
      }
      
      public function get hasDailyResetTimes() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set dailyResetTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.daily_reset_times$field = param1;
      }
      
      public function get dailyResetTimes() : uint
      {
         return this.daily_reset_times$field;
      }
      
      public function clearDailyResetUltimate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.daily_reset_ultimate$field = new uint();
      }
      
      public function get hasDailyResetUltimate() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set dailyResetUltimate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.daily_reset_ultimate$field = param1;
      }
      
      public function get dailyResetUltimate() : uint
      {
         return this.daily_reset_ultimate$field;
      }
      
      public function clearResetNeedGold() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.reset_need_gold$field = new int();
      }
      
      public function get hasResetNeedGold() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set resetNeedGold(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.reset_need_gold$field = param1;
      }
      
      public function get resetNeedGold() : int
      {
         return this.reset_need_gold$field;
      }
      
      public function clearHasSkip() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.has_skip$field = new Boolean();
      }
      
      public function get hasHasSkip() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set hasSkip(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.has_skip$field = param1;
      }
      
      public function get hasSkip() : Boolean
      {
         return this.has_skip$field;
      }
      
      public function clearFinishBranchCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.finish_branch_count$field = new uint();
      }
      
      public function get hasFinishBranchCount() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set finishBranchCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.finish_branch_count$field = param1;
      }
      
      public function get finishBranchCount() : uint
      {
         return this.finish_branch_count$field;
      }
      
      public function clearTotalBranchCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.total_branch_count$field = new uint();
      }
      
      public function get hasTotalBranchCount() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set totalBranchCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.total_branch_count$field = param1;
      }
      
      public function get totalBranchCount() : uint
      {
         return this.total_branch_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasStarNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.star_num$field);
         }
         if(this.hasFavour)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.favour$field);
         }
         if(this.hasDailyFinishTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.daily_finish_times$field);
         }
         if(this.hasDailyResetTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.daily_reset_times$field);
         }
         if(this.hasDailyResetUltimate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.daily_reset_ultimate$field);
         }
         if(this.hasResetNeedGold)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.reset_need_gold$field);
         }
         if(this.hasHasSkip)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_BOOL(param1,this.has_skip$field);
         }
         if(this.hasFinishBranchCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.finish_branch_count$field);
         }
         if(this.hasTotalBranchCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.total_branch_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
