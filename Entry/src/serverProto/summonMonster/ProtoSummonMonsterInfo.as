package serverProto.summonMonster
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoNaurtoAllPropertyInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSummonMonsterInfo extends Message
   {
      
      public static const SUMMON_MONSTER_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoSummonMonsterInfo.summon_monster_id","summonMonsterId",1 << 3 | WireType.VARINT);
      
      public static const HAVE_SUMMON_MONSTER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoSummonMonsterInfo.have_summon_monster","haveSummonMonster",2 << 3 | WireType.VARINT);
      
      public static const INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoSummonMonsterInfo.index","index",3 << 3 | WireType.VARINT);
      
      public static const REMAIN_CAPTURE_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoSummonMonsterInfo.remain_capture_times","remainCaptureTimes",4 << 3 | WireType.VARINT);
      
      public static const BASE_PROPERTY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoSummonMonsterInfo.base_property_info","basePropertyInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const IS_CARRY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoSummonMonsterInfo.is_carry","isCarry",6 << 3 | WireType.VARINT);
       
      public var summonMonsterId:int;
      
      private var have_summon_monster$field:int;
      
      private var hasField$0:uint = 0;
      
      private var index$field:int;
      
      private var remain_capture_times$field:int;
      
      private var base_property_info$field:ProtoNaurtoAllPropertyInfo;
      
      private var is_carry$field:int;
      
      public function ProtoSummonMonsterInfo()
      {
         super();
      }
      
      public function clearHaveSummonMonster() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.have_summon_monster$field = new int();
      }
      
      public function get hasHaveSummonMonster() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set haveSummonMonster(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.have_summon_monster$field = param1;
      }
      
      public function get haveSummonMonster() : int
      {
         return this.have_summon_monster$field;
      }
      
      public function clearIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.index$field = new int();
      }
      
      public function get hasIndex() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set index(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.index$field = param1;
      }
      
      public function get index() : int
      {
         return this.index$field;
      }
      
      public function clearRemainCaptureTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.remain_capture_times$field = new int();
      }
      
      public function get hasRemainCaptureTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set remainCaptureTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.remain_capture_times$field = param1;
      }
      
      public function get remainCaptureTimes() : int
      {
         return this.remain_capture_times$field;
      }
      
      public function clearBasePropertyInfo() : void
      {
         this.base_property_info$field = null;
      }
      
      public function get hasBasePropertyInfo() : Boolean
      {
         return this.base_property_info$field != null;
      }
      
      public function set basePropertyInfo(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.base_property_info$field = param1;
      }
      
      public function get basePropertyInfo() : ProtoNaurtoAllPropertyInfo
      {
         return this.base_property_info$field;
      }
      
      public function clearIsCarry() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.is_carry$field = new int();
      }
      
      public function get hasIsCarry() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set isCarry(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.is_carry$field = param1;
      }
      
      public function get isCarry() : int
      {
         return this.is_carry$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.summonMonsterId);
         if(this.hasHaveSummonMonster)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.have_summon_monster$field);
         }
         if(this.hasIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.index$field);
         }
         if(this.hasRemainCaptureTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.remain_capture_times$field);
         }
         if(this.hasBasePropertyInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_property_info$field);
         }
         if(this.hasIsCarry)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.is_carry$field);
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
