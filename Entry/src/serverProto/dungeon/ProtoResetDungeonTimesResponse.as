package serverProto.dungeon
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
   
   public final class ProtoResetDungeonTimesResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoResetDungeonTimesResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NEXT_TIME_NEED_GOLD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoResetDungeonTimesResponse.next_time_need_gold","nextTimeNeedGold",2 << 3 | WireType.VARINT);
      
      public static const TODAY_RESET_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoResetDungeonTimesResponse.today_reset_num","todayResetNum",3 << 3 | WireType.VARINT);
      
      public static const TODAY_RESET_ULTIMATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoResetDungeonTimesResponse.today_reset_ultimate","todayResetUltimate",4 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var next_time_need_gold$field:int;
      
      private var hasField$0:uint = 0;
      
      private var today_reset_num$field:int;
      
      private var today_reset_ultimate$field:int;
      
      public function ProtoResetDungeonTimesResponse()
      {
         super();
      }
      
      public function clearNextTimeNeedGold() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.next_time_need_gold$field = new int();
      }
      
      public function get hasNextTimeNeedGold() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set nextTimeNeedGold(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.next_time_need_gold$field = param1;
      }
      
      public function get nextTimeNeedGold() : int
      {
         return this.next_time_need_gold$field;
      }
      
      public function clearTodayResetNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.today_reset_num$field = new int();
      }
      
      public function get hasTodayResetNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set todayResetNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.today_reset_num$field = param1;
      }
      
      public function get todayResetNum() : int
      {
         return this.today_reset_num$field;
      }
      
      public function clearTodayResetUltimate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.today_reset_ultimate$field = new int();
      }
      
      public function get hasTodayResetUltimate() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set todayResetUltimate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.today_reset_ultimate$field = param1;
      }
      
      public function get todayResetUltimate() : int
      {
         return this.today_reset_ultimate$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNextTimeNeedGold)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.next_time_need_gold$field);
         }
         if(this.hasTodayResetNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.today_reset_num$field);
         }
         if(this.hasTodayResetUltimate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.today_reset_ultimate$field);
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
