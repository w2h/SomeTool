package serverProto.summonMonster
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoOpenCaptureSummonMonsterResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.open_level","openLevel",2 << 3 | WireType.VARINT);
      
      public static const TOTAL_TODAY_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.total_today_times","totalTodayTimes",3 << 3 | WireType.VARINT);
      
      public static const REMAINDER_TODAY_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.remainder_today_times","remainderTodayTimes",4 << 3 | WireType.VARINT);
      
      public static const TOTAL_CAPTURE_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.total_capture_times","totalCaptureTimes",5 << 3 | WireType.VARINT);
      
      public static const REMAINDER_CAPTURE_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.remainder_capture_times","remainderCaptureTimes",6 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var open_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var total_today_times$field:int;
      
      private var remainder_today_times$field:int;
      
      private var total_capture_times$field:int;
      
      private var remainder_capture_times$field:int;
      
      public function ProtoOpenCaptureSummonMonsterResponse()
      {
         super();
      }
      
      public function clearOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.open_level$field = new int();
      }
      
      public function get hasOpenLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set openLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.open_level$field = param1;
      }
      
      public function get openLevel() : int
      {
         return this.open_level$field;
      }
      
      public function clearTotalTodayTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.total_today_times$field = new int();
      }
      
      public function get hasTotalTodayTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set totalTodayTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.total_today_times$field = param1;
      }
      
      public function get totalTodayTimes() : int
      {
         return this.total_today_times$field;
      }
      
      public function clearRemainderTodayTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.remainder_today_times$field = new int();
      }
      
      public function get hasRemainderTodayTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set remainderTodayTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.remainder_today_times$field = param1;
      }
      
      public function get remainderTodayTimes() : int
      {
         return this.remainder_today_times$field;
      }
      
      public function clearTotalCaptureTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.total_capture_times$field = new int();
      }
      
      public function get hasTotalCaptureTimes() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set totalCaptureTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.total_capture_times$field = param1;
      }
      
      public function get totalCaptureTimes() : int
      {
         return this.total_capture_times$field;
      }
      
      public function clearRemainderCaptureTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.remainder_capture_times$field = new int();
      }
      
      public function get hasRemainderCaptureTimes() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set remainderCaptureTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.remainder_capture_times$field = param1;
      }
      
      public function get remainderCaptureTimes() : int
      {
         return this.remainder_capture_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.open_level$field);
         }
         if(this.hasTotalTodayTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.total_today_times$field);
         }
         if(this.hasRemainderTodayTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_today_times$field);
         }
         if(this.hasTotalCaptureTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.total_capture_times$field);
         }
         if(this.hasRemainderCaptureTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_capture_times$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
