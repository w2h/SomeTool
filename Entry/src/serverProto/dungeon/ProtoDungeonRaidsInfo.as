package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDungeonRaidsInfo extends Message
   {
      
      public static const DUNGEON_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.dungeon_id","dungeonId",1 << 3 | WireType.VARINT);
      
      public static const REMAIN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.remain_count","remainCount",2 << 3 | WireType.VARINT);
      
      public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.remain_time","remainTime",3 << 3 | WireType.VARINT);
      
      public static const CURR_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.curr_count","currCount",4 << 3 | WireType.VARINT);
      
      public static const CURR_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.curr_time","currTime",5 << 3 | WireType.VARINT);
      
      public static const ELITE_DUNGEON_REMAIN_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.elite_dungeon_remain_times","eliteDungeonRemainTimes",6 << 3 | WireType.VARINT);
       
      public var dungeonId:uint;
      
      private var remain_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var remain_time$field:uint;
      
      private var curr_count$field:uint;
      
      private var curr_time$field:uint;
      
      private var elite_dungeon_remain_times$field:uint;
      
      public function ProtoDungeonRaidsInfo()
      {
         super();
      }
      
      public function clearRemainCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.remain_count$field = new uint();
      }
      
      public function get hasRemainCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set remainCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.remain_count$field = param1;
      }
      
      public function get remainCount() : uint
      {
         return this.remain_count$field;
      }
      
      public function clearRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.remain_time$field = new uint();
      }
      
      public function get hasRemainTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.remain_time$field = param1;
      }
      
      public function get remainTime() : uint
      {
         return this.remain_time$field;
      }
      
      public function clearCurrCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.curr_count$field = new uint();
      }
      
      public function get hasCurrCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set currCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.curr_count$field = param1;
      }
      
      public function get currCount() : uint
      {
         return this.curr_count$field;
      }
      
      public function clearCurrTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.curr_time$field = new uint();
      }
      
      public function get hasCurrTime() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set currTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.curr_time$field = param1;
      }
      
      public function get currTime() : uint
      {
         return this.curr_time$field;
      }
      
      public function clearEliteDungeonRemainTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.elite_dungeon_remain_times$field = new uint();
      }
      
      public function get hasEliteDungeonRemainTimes() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set eliteDungeonRemainTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.elite_dungeon_remain_times$field = param1;
      }
      
      public function get eliteDungeonRemainTimes() : uint
      {
         return this.elite_dungeon_remain_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.dungeonId);
         if(this.hasRemainCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_count$field);
         }
         if(this.hasRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_time$field);
         }
         if(this.hasCurrCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.curr_count$field);
         }
         if(this.hasCurrTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.curr_time$field);
         }
         if(this.hasEliteDungeonRemainTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.elite_dungeon_remain_times$field);
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
