package serverProto.warWorship
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetSignUpInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoGetSignUpInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const IS_REG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.warWorship.ProtoGetSignUpInfoRsp.is_reg","isReg",2 << 3 | WireType.VARINT);
      
      public static const INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoGetSignUpInfoRsp.info","info",3 << 3 | WireType.LENGTH_DELIMITED,ProtoWarWorshipnNinjaListInfo);
      
      public static const NOW:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.warWorship.ProtoGetSignUpInfoRsp.now","now",4 << 3 | WireType.VARINT);
      
      public static const OPEN_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.warWorship.ProtoGetSignUpInfoRsp.open_time","openTime",5 << 3 | WireType.VARINT);
      
      public static const FIGHT_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.warWorship.ProtoGetSignUpInfoRsp.fight_time","fightTime",6 << 3 | WireType.VARINT);
      
      public static const OVER_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.warWorship.ProtoGetSignUpInfoRsp.over_time","overTime",7 << 3 | WireType.VARINT);
      
      public static const CAN_ENTER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.warWorship.ProtoGetSignUpInfoRsp.can_enter","canEnter",8 << 3 | WireType.VARINT);
      
      public static const STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.warWorship.ProtoGetSignUpInfoRsp.state","state",9 << 3 | WireType.VARINT,WarWorshipStatus);
      
      public static const IS_CROSS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.warWorship.ProtoGetSignUpInfoRsp.is_cross","isCross",10 << 3 | WireType.VARINT);
      
      public static const REVIVE_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.warWorship.ProtoGetSignUpInfoRsp.revive_times","reviveTimes",11 << 3 | WireType.VARINT);
      
      public static const MAX_REVIVE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.warWorship.ProtoGetSignUpInfoRsp.max_revive","maxRevive",12 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var is_reg$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var info$field:serverProto.warWorship.ProtoWarWorshipnNinjaListInfo;
      
      private var now$field:UInt64;
      
      private var open_time$field:UInt64;
      
      private var fight_time$field:UInt64;
      
      private var over_time$field:UInt64;
      
      private var can_enter$field:uint;
      
      private var state$field:int;
      
      private var is_cross$field:uint;
      
      private var revive_times$field:uint;
      
      private var max_revive$field:uint;
      
      public function ProtoGetSignUpInfoRsp()
      {
         super();
      }
      
      public function clearIsReg() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_reg$field = new uint();
      }
      
      public function get hasIsReg() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isReg(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_reg$field = param1;
      }
      
      public function get isReg() : uint
      {
         return this.is_reg$field;
      }
      
      public function clearInfo() : void
      {
         this.info$field = null;
      }
      
      public function get hasInfo() : Boolean
      {
         return this.info$field != null;
      }
      
      public function set info(param1:serverProto.warWorship.ProtoWarWorshipnNinjaListInfo) : void
      {
         this.info$field = param1;
      }
      
      public function get info() : serverProto.warWorship.ProtoWarWorshipnNinjaListInfo
      {
         return this.info$field;
      }
      
      public function clearNow() : void
      {
         this.now$field = null;
      }
      
      public function get hasNow() : Boolean
      {
         return this.now$field != null;
      }
      
      public function set now(param1:UInt64) : void
      {
         this.now$field = param1;
      }
      
      public function get now() : UInt64
      {
         return this.now$field;
      }
      
      public function clearOpenTime() : void
      {
         this.open_time$field = null;
      }
      
      public function get hasOpenTime() : Boolean
      {
         return this.open_time$field != null;
      }
      
      public function set openTime(param1:UInt64) : void
      {
         this.open_time$field = param1;
      }
      
      public function get openTime() : UInt64
      {
         return this.open_time$field;
      }
      
      public function clearFightTime() : void
      {
         this.fight_time$field = null;
      }
      
      public function get hasFightTime() : Boolean
      {
         return this.fight_time$field != null;
      }
      
      public function set fightTime(param1:UInt64) : void
      {
         this.fight_time$field = param1;
      }
      
      public function get fightTime() : UInt64
      {
         return this.fight_time$field;
      }
      
      public function clearOverTime() : void
      {
         this.over_time$field = null;
      }
      
      public function get hasOverTime() : Boolean
      {
         return this.over_time$field != null;
      }
      
      public function set overTime(param1:UInt64) : void
      {
         this.over_time$field = param1;
      }
      
      public function get overTime() : UInt64
      {
         return this.over_time$field;
      }
      
      public function clearCanEnter() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.can_enter$field = new uint();
      }
      
      public function get hasCanEnter() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set canEnter(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.can_enter$field = param1;
      }
      
      public function get canEnter() : uint
      {
         return this.can_enter$field;
      }
      
      public function clearState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.state$field = new int();
      }
      
      public function get hasState() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set state(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.state$field = param1;
      }
      
      public function get state() : int
      {
         return this.state$field;
      }
      
      public function clearIsCross() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.is_cross$field = new uint();
      }
      
      public function get hasIsCross() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set isCross(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.is_cross$field = param1;
      }
      
      public function get isCross() : uint
      {
         return this.is_cross$field;
      }
      
      public function clearReviveTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.revive_times$field = new uint();
      }
      
      public function get hasReviveTimes() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set reviveTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.revive_times$field = param1;
      }
      
      public function get reviveTimes() : uint
      {
         return this.revive_times$field;
      }
      
      public function clearMaxRevive() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.max_revive$field = new uint();
      }
      
      public function get hasMaxRevive() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set maxRevive(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.max_revive$field = param1;
      }
      
      public function get maxRevive() : uint
      {
         return this.max_revive$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasIsReg)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.is_reg$field);
         }
         if(this.hasInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.info$field);
         }
         if(this.hasNow)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT64(param1,this.now$field);
         }
         if(this.hasOpenTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT64(param1,this.open_time$field);
         }
         if(this.hasFightTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT64(param1,this.fight_time$field);
         }
         if(this.hasOverTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT64(param1,this.over_time$field);
         }
         if(this.hasCanEnter)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.can_enter$field);
         }
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_ENUM(param1,this.state$field);
         }
         if(this.hasIsCross)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.is_cross$field);
         }
         if(this.hasReviveTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.revive_times$field);
         }
         if(this.hasMaxRevive)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.max_revive$field);
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
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
