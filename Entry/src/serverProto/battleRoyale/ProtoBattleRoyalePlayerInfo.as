package serverProto.battleRoyale
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBattleRoyalePlayerInfo extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const CAMP:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.camp","camp",2 << 3 | WireType.VARINT,ProtoBattleRoyaleFieldCampType);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.name","name",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.level","level",4 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.score","score",5 << 3 | WireType.VARINT);
      
      public static const WIN_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.win_times","winTimes",6 << 3 | WireType.VARINT);
      
      public static const WIN_STREAK_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.win_streak_times","winStreakTimes",7 << 3 | WireType.VARINT);
      
      public static const HISTORY_MAX_WIN_STREAK_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.history_max_win_streak_times","historyMaxWinStreakTimes",14 << 3 | WireType.VARINT);
      
      public static const LIVE_POINT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.live_point","livePoint",8 << 3 | WireType.VARINT);
      
      public static const REBIRTH_CD_TIME:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.rebirth_cd_time","rebirthCdTime",9 << 3 | WireType.VARINT);
      
      public static const ENTER_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.enter_flag","enterFlag",10 << 3 | WireType.VARINT);
      
      public static const QUIT_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.quit_flag","quitFlag",11 << 3 | WireType.VARINT);
      
      public static const OUT_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.out_flag","outFlag",12 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.vip_level","vipLevel",13 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo.diamond_info","diamondInfo",15 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
       
      public var playerId:ProtoPlayerKey;
      
      public var camp:int;
      
      private var name$field:String;
      
      private var level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var score$field:int;
      
      private var win_times$field:int;
      
      private var win_streak_times$field:int;
      
      private var history_max_win_streak_times$field:int;
      
      private var live_point$field:int;
      
      private var rebirth_cd_time$field:int;
      
      private var enter_flag$field:int;
      
      private var quit_flag$field:int;
      
      private var out_flag$field:int;
      
      private var vip_level$field:int;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      public function ProtoBattleRoyalePlayerInfo()
      {
         super();
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
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
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.score$field = new int();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set score(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.score$field = param1;
      }
      
      public function get score() : int
      {
         return this.score$field;
      }
      
      public function clearWinTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.win_times$field = new int();
      }
      
      public function get hasWinTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set winTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.win_times$field = param1;
      }
      
      public function get winTimes() : int
      {
         return this.win_times$field;
      }
      
      public function clearWinStreakTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.win_streak_times$field = new int();
      }
      
      public function get hasWinStreakTimes() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set winStreakTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.win_streak_times$field = param1;
      }
      
      public function get winStreakTimes() : int
      {
         return this.win_streak_times$field;
      }
      
      public function clearHistoryMaxWinStreakTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.history_max_win_streak_times$field = new int();
      }
      
      public function get hasHistoryMaxWinStreakTimes() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set historyMaxWinStreakTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.history_max_win_streak_times$field = param1;
      }
      
      public function get historyMaxWinStreakTimes() : int
      {
         return this.history_max_win_streak_times$field;
      }
      
      public function clearLivePoint() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.live_point$field = new int();
      }
      
      public function get hasLivePoint() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set livePoint(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.live_point$field = param1;
      }
      
      public function get livePoint() : int
      {
         return this.live_point$field;
      }
      
      public function clearRebirthCdTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.rebirth_cd_time$field = new int();
      }
      
      public function get hasRebirthCdTime() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set rebirthCdTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.rebirth_cd_time$field = param1;
      }
      
      public function get rebirthCdTime() : int
      {
         return this.rebirth_cd_time$field;
      }
      
      public function clearEnterFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.enter_flag$field = new int();
      }
      
      public function get hasEnterFlag() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set enterFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.enter_flag$field = param1;
      }
      
      public function get enterFlag() : int
      {
         return this.enter_flag$field;
      }
      
      public function clearQuitFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.quit_flag$field = new int();
      }
      
      public function get hasQuitFlag() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set quitFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.quit_flag$field = param1;
      }
      
      public function get quitFlag() : int
      {
         return this.quit_flag$field;
      }
      
      public function clearOutFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.out_flag$field = new int();
      }
      
      public function get hasOutFlag() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set outFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.out_flag$field = param1;
      }
      
      public function get outFlag() : int
      {
         return this.out_flag$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
      }
      
      public function clearDiamondInfo() : void
      {
         this.diamond_info$field = null;
      }
      
      public function get hasDiamondInfo() : Boolean
      {
         return this.diamond_info$field != null;
      }
      
      public function set diamondInfo(param1:ProtoDiamondInfo) : void
      {
         this.diamond_info$field = param1;
      }
      
      public function get diamondInfo() : ProtoDiamondInfo
      {
         return this.diamond_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.playerId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.camp);
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.level$field);
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.score$field);
         }
         if(this.hasWinTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.win_times$field);
         }
         if(this.hasWinStreakTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.win_streak_times$field);
         }
         if(this.hasHistoryMaxWinStreakTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_SINT32(param1,this.history_max_win_streak_times$field);
         }
         if(this.hasLivePoint)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.live_point$field);
         }
         if(this.hasRebirthCdTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.rebirth_cd_time$field);
         }
         if(this.hasEnterFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_SINT32(param1,this.enter_flag$field);
         }
         if(this.hasQuitFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_SINT32(param1,this.quit_flag$field);
         }
         if(this.hasOutFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_SINT32(param1,this.out_flag$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,15);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 15, Size: 15)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
