package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTreasureDungeonInfo extends Message
   {
      
      public static const DUNGEON_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoTreasureDungeonInfo.dungeon_id","dungeonId",1 << 3 | WireType.VARINT);
      
      public static const IS_OPEN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.dungeon.ProtoTreasureDungeonInfo.is_open","isOpen",2 << 3 | WireType.VARINT);
      
      public static const OPEN_DAY:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoTreasureDungeonInfo.open_day","openDay",3 << 3 | WireType.VARINT);
      
      public static const NEED_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoTreasureDungeonInfo.need_power","needPower",4 << 3 | WireType.VARINT);
      
      public static const PASS_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoTreasureDungeonInfo.pass_times","passTimes",5 << 3 | WireType.VARINT);
      
      public static const PASS_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoTreasureDungeonInfo.pass_ulimit","passUlimit",6 << 3 | WireType.VARINT);
      
      public static const COOL_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoTreasureDungeonInfo.cool_time","coolTime",7 << 3 | WireType.VARINT);
      
      public static const EASY_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoTreasureDungeonInfo.easy_open_level","easyOpenLevel",8 << 3 | WireType.VARINT);
      
      public static const NORMAL_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoTreasureDungeonInfo.normal_open_level","normalOpenLevel",9 << 3 | WireType.VARINT);
      
      public static const HARD_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoTreasureDungeonInfo.hard_open_level","hardOpenLevel",10 << 3 | WireType.VARINT);
       
      public var dungeonId:uint;
      
      private var is_open$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("int")]
      public var openDay:Array;
      
      private var need_power$field:uint;
      
      private var pass_times$field:uint;
      
      private var pass_ulimit$field:uint;
      
      private var cool_time$field:int;
      
      private var easy_open_level$field:int;
      
      private var normal_open_level$field:int;
      
      private var hard_open_level$field:int;
      
      public function ProtoTreasureDungeonInfo()
      {
         this.openDay = [];
         super();
      }
      
      public function clearIsOpen() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_open$field = new Boolean();
      }
      
      public function get hasIsOpen() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isOpen(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_open$field = param1;
      }
      
      public function get isOpen() : Boolean
      {
         return this.is_open$field;
      }
      
      public function clearNeedPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.need_power$field = new uint();
      }
      
      public function get hasNeedPower() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set needPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.need_power$field = param1;
      }
      
      public function get needPower() : uint
      {
         return this.need_power$field;
      }
      
      public function clearPassTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.pass_times$field = new uint();
      }
      
      public function get hasPassTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set passTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.pass_times$field = param1;
      }
      
      public function get passTimes() : uint
      {
         return this.pass_times$field;
      }
      
      public function clearPassUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.pass_ulimit$field = new uint();
      }
      
      public function get hasPassUlimit() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set passUlimit(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.pass_ulimit$field = param1;
      }
      
      public function get passUlimit() : uint
      {
         return this.pass_ulimit$field;
      }
      
      public function clearCoolTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.cool_time$field = new int();
      }
      
      public function get hasCoolTime() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set coolTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.cool_time$field = param1;
      }
      
      public function get coolTime() : int
      {
         return this.cool_time$field;
      }
      
      public function clearEasyOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.easy_open_level$field = new int();
      }
      
      public function get hasEasyOpenLevel() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set easyOpenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.easy_open_level$field = param1;
      }
      
      public function get easyOpenLevel() : int
      {
         return this.easy_open_level$field;
      }
      
      public function clearNormalOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.normal_open_level$field = new int();
      }
      
      public function get hasNormalOpenLevel() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set normalOpenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.normal_open_level$field = param1;
      }
      
      public function get normalOpenLevel() : int
      {
         return this.normal_open_level$field;
      }
      
      public function clearHardOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.hard_open_level$field = new int();
      }
      
      public function get hasHardOpenLevel() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set hardOpenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.hard_open_level$field = param1;
      }
      
      public function get hardOpenLevel() : int
      {
         return this.hard_open_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.dungeonId);
         if(this.hasIsOpen)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.is_open$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.openDay.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.openDay[_loc2_]);
            _loc2_++;
         }
         if(this.hasNeedPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.need_power$field);
         }
         if(this.hasPassTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.pass_times$field);
         }
         if(this.hasPassUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.pass_ulimit$field);
         }
         if(this.hasCoolTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.cool_time$field);
         }
         if(this.hasEasyOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.easy_open_level$field);
         }
         if(this.hasNormalOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.normal_open_level$field);
         }
         if(this.hasHardOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.hard_open_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
