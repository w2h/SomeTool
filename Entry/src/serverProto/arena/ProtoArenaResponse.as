package serverProto.arena
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.ninjaSystem.ProtoNinjStorage;
   import serverProto.formationBase.ProtoFormationInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoArenaResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TOTALFIGHTCOUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.totalFightCount","totalFightCount",2 << 3 | WireType.VARINT);
      
      public static const WINFIGHTCOUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.winFightCount","winFightCount",3 << 3 | WireType.VARINT);
      
      public static const NINJA_STORAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaResponse.ninja_storage","ninjaStorage",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjStorage);
      
      public static const FORMATION_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaResponse.formation_info","formationInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoFormationInfo);
      
      public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.level","level",6 << 3 | WireType.VARINT);
      
      public static const DAILY_WIN_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.daily_win_times","dailyWinTimes",7 << 3 | WireType.VARINT);
      
      public static const WEEKLY_WIN_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.weekly_win_times","weeklyWinTimes",8 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoArenaResponse.score","score",9 << 3 | WireType.VARINT);
      
      public static const BUILT_IN_REWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaResponse.built_in_reward","builtInReward",10 << 3 | WireType.LENGTH_DELIMITED,ProtoArenaBuiltInReward);
      
      public static const INTER_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.arena.ProtoArenaResponse.inter_flag","interFlag",11 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      public var totalFightCount:int;
      
      public var winFightCount:int;
      
      private var ninja_storage$field:ProtoNinjStorage;
      
      private var formation_info$field:ProtoFormationInfo;
      
      private var level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var daily_win_times$field:int;
      
      private var weekly_win_times$field:int;
      
      private var score$field:int;
      
      private var built_in_reward$field:serverProto.arena.ProtoArenaBuiltInReward;
      
      private var inter_flag$field:Boolean;
      
      public function ProtoArenaResponse()
      {
         super();
      }
      
      public function clearNinjaStorage() : void
      {
         this.ninja_storage$field = null;
      }
      
      public function get hasNinjaStorage() : Boolean
      {
         return this.ninja_storage$field != null;
      }
      
      public function set ninjaStorage(param1:ProtoNinjStorage) : void
      {
         this.ninja_storage$field = param1;
      }
      
      public function get ninjaStorage() : ProtoNinjStorage
      {
         return this.ninja_storage$field;
      }
      
      public function clearFormationInfo() : void
      {
         this.formation_info$field = null;
      }
      
      public function get hasFormationInfo() : Boolean
      {
         return this.formation_info$field != null;
      }
      
      public function set formationInfo(param1:ProtoFormationInfo) : void
      {
         this.formation_info$field = param1;
      }
      
      public function get formationInfo() : ProtoFormationInfo
      {
         return this.formation_info$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      public function clearDailyWinTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.daily_win_times$field = new int();
      }
      
      public function get hasDailyWinTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set dailyWinTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.daily_win_times$field = param1;
      }
      
      public function get dailyWinTimes() : int
      {
         return this.daily_win_times$field;
      }
      
      public function clearWeeklyWinTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.weekly_win_times$field = new int();
      }
      
      public function get hasWeeklyWinTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set weeklyWinTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.weekly_win_times$field = param1;
      }
      
      public function get weeklyWinTimes() : int
      {
         return this.weekly_win_times$field;
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.score$field = new int();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set score(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.score$field = param1;
      }
      
      public function get score() : int
      {
         return this.score$field;
      }
      
      public function clearBuiltInReward() : void
      {
         this.built_in_reward$field = null;
      }
      
      public function get hasBuiltInReward() : Boolean
      {
         return this.built_in_reward$field != null;
      }
      
      public function set builtInReward(param1:serverProto.arena.ProtoArenaBuiltInReward) : void
      {
         this.built_in_reward$field = param1;
      }
      
      public function get builtInReward() : serverProto.arena.ProtoArenaBuiltInReward
      {
         return this.built_in_reward$field;
      }
      
      public function clearInterFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.inter_flag$field = new Boolean();
      }
      
      public function get hasInterFlag() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set interFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.inter_flag$field = param1;
      }
      
      public function get interFlag() : Boolean
      {
         return this.inter_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_SINT32(param1,this.totalFightCount);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_SINT32(param1,this.winFightCount);
         if(this.hasNinjaStorage)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_storage$field);
         }
         if(this.hasFormationInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.formation_info$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.level$field);
         }
         if(this.hasDailyWinTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.daily_win_times$field);
         }
         if(this.hasWeeklyWinTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.weekly_win_times$field);
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.score$field);
         }
         if(this.hasBuiltInReward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.built_in_reward$field);
         }
         if(this.hasInterFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_BOOL(param1,this.inter_flag$field);
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
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
