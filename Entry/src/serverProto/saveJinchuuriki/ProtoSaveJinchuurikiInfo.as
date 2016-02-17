package serverProto.saveJinchuuriki
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSaveJinchuurikiInfo extends Message
   {
      
      public static const CHALLENGE_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.challenge_times","challengeTimes",1 << 3 | WireType.VARINT);
      
      public static const TOTAL_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.total_times","totalTimes",2 << 3 | WireType.VARINT);
      
      public static const REGULAR_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.regular_reward","regularReward",3 << 3 | WireType.LENGTH_DELIMITED,ProtoReward);
      
      public static const TOP_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.top_reward","topReward",4 << 3 | WireType.LENGTH_DELIMITED,ProtoReward);
      
      public static const LUCKY_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.lucky_reward","luckyReward",5 << 3 | WireType.LENGTH_DELIMITED,ProtoReward);
      
      public static const RANK_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.rank_info","rankInfo",6 << 3 | WireType.LENGTH_DELIMITED,ProtoSaveJinchuurikiRankInfo);
      
      public static const LOW_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.low_level","lowLevel",7 << 3 | WireType.VARINT);
      
      public static const HIGH_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.high_level","highLevel",8 << 3 | WireType.VARINT);
      
      public static const ADD_ATT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.add_att","addAtt",9 << 3 | WireType.VARINT);
      
      public static const ADD_MAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.add_mag","addMag",10 << 3 | WireType.VARINT);
      
      public static const ERR_CODE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.err_code","errCode",11 << 3 | WireType.VARINT,ProtoSaveJinchuurikiErrorCode);
      
      public static const STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.status","status",12 << 3 | WireType.VARINT);
      
      public static const WIN_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.win_times","winTimes",13 << 3 | WireType.VARINT);
      
      public static const IS_IN_FIGHT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiInfo.is_in_fight","isInFight",14 << 3 | WireType.VARINT);
       
      private var challenge_times$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var total_times$field:uint;
      
      [ArrayElementType("serverProto.saveJinchuuriki.ProtoReward")]
      public var regularReward:Array;
      
      [ArrayElementType("serverProto.saveJinchuuriki.ProtoReward")]
      public var topReward:Array;
      
      [ArrayElementType("serverProto.saveJinchuuriki.ProtoReward")]
      public var luckyReward:Array;
      
      [ArrayElementType("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiRankInfo")]
      public var rankInfo:Array;
      
      private var low_level$field:uint;
      
      private var high_level$field:uint;
      
      private var add_att$field:uint;
      
      private var add_mag$field:uint;
      
      private var err_code$field:int;
      
      private var status$field:uint;
      
      private var win_times$field:uint;
      
      private var is_in_fight$field:Boolean;
      
      public function ProtoSaveJinchuurikiInfo()
      {
         this.regularReward = [];
         this.topReward = [];
         this.luckyReward = [];
         this.rankInfo = [];
         super();
      }
      
      public function clearChallengeTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.challenge_times$field = new uint();
      }
      
      public function get hasChallengeTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set challengeTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.challenge_times$field = param1;
      }
      
      public function get challengeTimes() : uint
      {
         return this.challenge_times$field;
      }
      
      public function clearTotalTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.total_times$field = new uint();
      }
      
      public function get hasTotalTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set totalTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.total_times$field = param1;
      }
      
      public function get totalTimes() : uint
      {
         return this.total_times$field;
      }
      
      public function clearLowLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.low_level$field = new uint();
      }
      
      public function get hasLowLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set lowLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.low_level$field = param1;
      }
      
      public function get lowLevel() : uint
      {
         return this.low_level$field;
      }
      
      public function clearHighLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.high_level$field = new uint();
      }
      
      public function get hasHighLevel() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set highLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.high_level$field = param1;
      }
      
      public function get highLevel() : uint
      {
         return this.high_level$field;
      }
      
      public function clearAddAtt() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.add_att$field = new uint();
      }
      
      public function get hasAddAtt() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set addAtt(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.add_att$field = param1;
      }
      
      public function get addAtt() : uint
      {
         return this.add_att$field;
      }
      
      public function clearAddMag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.add_mag$field = new uint();
      }
      
      public function get hasAddMag() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set addMag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.add_mag$field = param1;
      }
      
      public function get addMag() : uint
      {
         return this.add_mag$field;
      }
      
      public function clearErrCode() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.err_code$field = new int();
      }
      
      public function get hasErrCode() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set errCode(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.err_code$field = param1;
      }
      
      public function get errCode() : int
      {
         return this.err_code$field;
      }
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.status$field = new uint();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set status(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.status$field = param1;
      }
      
      public function get status() : uint
      {
         return this.status$field;
      }
      
      public function clearWinTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.win_times$field = new uint();
      }
      
      public function get hasWinTimes() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set winTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.win_times$field = param1;
      }
      
      public function get winTimes() : uint
      {
         return this.win_times$field;
      }
      
      public function clearIsInFight() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.is_in_fight$field = new Boolean();
      }
      
      public function get hasIsInFight() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set isInFight(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.is_in_fight$field = param1;
      }
      
      public function get isInFight() : Boolean
      {
         return this.is_in_fight$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc6_:* = undefined;
         if(this.hasChallengeTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.challenge_times$field);
         }
         if(this.hasTotalTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.total_times$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.regularReward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.regularReward[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.topReward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.topReward[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.luckyReward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.luckyReward[_loc4_]);
            _loc4_++;
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.rankInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rankInfo[_loc5_]);
            _loc5_++;
         }
         if(this.hasLowLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.low_level$field);
         }
         if(this.hasHighLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.high_level$field);
         }
         if(this.hasAddAtt)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.add_att$field);
         }
         if(this.hasAddMag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.add_mag$field);
         }
         if(this.hasErrCode)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_ENUM(param1,this.err_code$field);
         }
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.status$field);
         }
         if(this.hasWinTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT32(param1,this.win_times$field);
         }
         if(this.hasIsInFight)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_BOOL(param1,this.is_in_fight$field);
         }
         for(_loc6_ in this)
         {
            super.writeUnknown(param1,_loc6_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 14, Size: 14)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
