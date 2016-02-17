package serverProto.practice
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.baseInfo.ProtoNinjaInfo;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPracticePosInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const STATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.state","state",2 << 3 | WireType.VARINT);
      
      public static const OPEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.open_level","openLevel",3 << 3 | WireType.VARINT);
      
      public static const OPEN_COST_GOLD_INGOT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.open_cost_gold_ingot","openCostGoldIngot",4 << 3 | WireType.VARINT);
      
      public static const PRACTICE_REMAIN_TIME:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.practice_remain_time","practiceRemainTime",6 << 3 | WireType.VARINT);
      
      public static const MAX_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.max_exp","maxExp",7 << 3 | WireType.VARINT);
      
      public static const ACQUIRED_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.acquired_exp","acquiredExp",8 << 3 | WireType.VARINT);
      
      public static const PRACTICE_NINJA_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoPracticePosInfo.practice_ninja_info","practiceNinjaInfo",9 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
      
      public static const FRIEND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoPracticePosInfo.friend","friend",10 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PRACTICE_TOTAL_TIME:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePosInfo.practice_total_time","practiceTotalTime",11 << 3 | WireType.VARINT);
       
      private var id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var state$field:int;
      
      private var open_level$field:int;
      
      private var open_cost_gold_ingot$field:int;
      
      private var practice_remain_time$field:int;
      
      private var max_exp$field:int;
      
      private var acquired_exp$field:int;
      
      private var practice_ninja_info$field:ProtoNinjaInfo;
      
      private var friend$field:ProtoPlayerKey;
      
      private var practice_total_time$field:int;
      
      public function ProtoPracticePosInfo()
      {
         super();
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.id$field = new int();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set id(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.id$field = param1;
      }
      
      public function get id() : int
      {
         return this.id$field;
      }
      
      public function clearState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.state$field = new int();
      }
      
      public function get hasState() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set state(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.state$field = param1;
      }
      
      public function get state() : int
      {
         return this.state$field;
      }
      
      public function clearOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.open_level$field = new int();
      }
      
      public function get hasOpenLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set openLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.open_level$field = param1;
      }
      
      public function get openLevel() : int
      {
         return this.open_level$field;
      }
      
      public function clearOpenCostGoldIngot() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.open_cost_gold_ingot$field = new int();
      }
      
      public function get hasOpenCostGoldIngot() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set openCostGoldIngot(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.open_cost_gold_ingot$field = param1;
      }
      
      public function get openCostGoldIngot() : int
      {
         return this.open_cost_gold_ingot$field;
      }
      
      public function clearPracticeRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.practice_remain_time$field = new int();
      }
      
      public function get hasPracticeRemainTime() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set practiceRemainTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.practice_remain_time$field = param1;
      }
      
      public function get practiceRemainTime() : int
      {
         return this.practice_remain_time$field;
      }
      
      public function clearMaxExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.max_exp$field = new int();
      }
      
      public function get hasMaxExp() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set maxExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.max_exp$field = param1;
      }
      
      public function get maxExp() : int
      {
         return this.max_exp$field;
      }
      
      public function clearAcquiredExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.acquired_exp$field = new int();
      }
      
      public function get hasAcquiredExp() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set acquiredExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.acquired_exp$field = param1;
      }
      
      public function get acquiredExp() : int
      {
         return this.acquired_exp$field;
      }
      
      public function clearPracticeNinjaInfo() : void
      {
         this.practice_ninja_info$field = null;
      }
      
      public function get hasPracticeNinjaInfo() : Boolean
      {
         return this.practice_ninja_info$field != null;
      }
      
      public function set practiceNinjaInfo(param1:ProtoNinjaInfo) : void
      {
         this.practice_ninja_info$field = param1;
      }
      
      public function get practiceNinjaInfo() : ProtoNinjaInfo
      {
         return this.practice_ninja_info$field;
      }
      
      public function clearFriend() : void
      {
         this.friend$field = null;
      }
      
      public function get hasFriend() : Boolean
      {
         return this.friend$field != null;
      }
      
      public function set friend(param1:ProtoPlayerKey) : void
      {
         this.friend$field = param1;
      }
      
      public function get friend() : ProtoPlayerKey
      {
         return this.friend$field;
      }
      
      public function clearPracticeTotalTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.practice_total_time$field = new int();
      }
      
      public function get hasPracticeTotalTime() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set practiceTotalTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.practice_total_time$field = param1;
      }
      
      public function get practiceTotalTime() : int
      {
         return this.practice_total_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.id$field);
         }
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.state$field);
         }
         if(this.hasOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.open_level$field);
         }
         if(this.hasOpenCostGoldIngot)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.open_cost_gold_ingot$field);
         }
         if(this.hasPracticeRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.practice_remain_time$field);
         }
         if(this.hasMaxExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.max_exp$field);
         }
         if(this.hasAcquiredExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.acquired_exp$field);
         }
         if(this.hasPracticeNinjaInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.practice_ninja_info$field);
         }
         if(this.hasFriend)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.friend$field);
         }
         if(this.hasPracticeTotalTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_SINT32(param1,this.practice_total_time$field);
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
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
