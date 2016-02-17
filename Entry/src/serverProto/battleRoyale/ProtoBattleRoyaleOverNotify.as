package serverProto.battleRoyale
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBattleRoyaleOverNotify extends Message
   {
      
      public static const CAMP:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.camp","camp",1 << 3 | WireType.VARINT,ProtoBattleRoyaleFieldCampType);
      
      public static const WIN_CAMP:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.win_camp","winCamp",2 << 3 | WireType.VARINT,ProtoBattleRoyaleFieldCampType);
      
      public static const ENTER_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.enter_flag","enterFlag",3 << 3 | WireType.VARINT);
      
      public static const CAMP_TOTAL_SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.camp_total_score","campTotalScore",4 << 3 | WireType.VARINT);
      
      public static const SELF_SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.self_score","selfScore",5 << 3 | WireType.VARINT);
      
      public static const RANK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.rank","rank",6 << 3 | WireType.VARINT);
      
      public static const WIN_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.win_times","winTimes",7 << 3 | WireType.VARINT);
      
      public static const WIN_STREAK_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.win_streak_times","winStreakTimes",8 << 3 | WireType.VARINT);
      
      public static const HISTORY_MAX_WIN_STREAK_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.history_max_win_streak_times","historyMaxWinStreakTimes",9 << 3 | WireType.VARINT);
      
      public static const STAR_PLAYER_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.star_player_list","starPlayerList",10 << 3 | WireType.LENGTH_DELIMITED,ProtoBattleRoyalePlayerInfo);
      
      public static const AWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleOverNotify.award","award",11 << 3 | WireType.LENGTH_DELIMITED,ProtoBattleRoyaleOverAward);
       
      public var camp:int;
      
      public var winCamp:int;
      
      private var enter_flag$field:int;
      
      private var hasField$0:uint = 0;
      
      private var camp_total_score$field:int;
      
      private var self_score$field:int;
      
      private var rank$field:int;
      
      private var win_times$field:int;
      
      private var win_streak_times$field:int;
      
      private var history_max_win_streak_times$field:int;
      
      [ArrayElementType("serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo")]
      public var starPlayerList:Array;
      
      private var award$field:serverProto.battleRoyale.ProtoBattleRoyaleOverAward;
      
      public function ProtoBattleRoyaleOverNotify()
      {
         this.starPlayerList = [];
         super();
      }
      
      public function clearEnterFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.enter_flag$field = new int();
      }
      
      public function get hasEnterFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set enterFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.enter_flag$field = param1;
      }
      
      public function get enterFlag() : int
      {
         return this.enter_flag$field;
      }
      
      public function clearCampTotalScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.camp_total_score$field = new int();
      }
      
      public function get hasCampTotalScore() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set campTotalScore(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.camp_total_score$field = param1;
      }
      
      public function get campTotalScore() : int
      {
         return this.camp_total_score$field;
      }
      
      public function clearSelfScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.self_score$field = new int();
      }
      
      public function get hasSelfScore() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set selfScore(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.self_score$field = param1;
      }
      
      public function get selfScore() : int
      {
         return this.self_score$field;
      }
      
      public function clearRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.rank$field = new int();
      }
      
      public function get hasRank() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set rank(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.rank$field = param1;
      }
      
      public function get rank() : int
      {
         return this.rank$field;
      }
      
      public function clearWinTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.win_times$field = new int();
      }
      
      public function get hasWinTimes() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set winTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.win_times$field = param1;
      }
      
      public function get winTimes() : int
      {
         return this.win_times$field;
      }
      
      public function clearWinStreakTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.win_streak_times$field = new int();
      }
      
      public function get hasWinStreakTimes() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set winStreakTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.win_streak_times$field = param1;
      }
      
      public function get winStreakTimes() : int
      {
         return this.win_streak_times$field;
      }
      
      public function clearHistoryMaxWinStreakTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.history_max_win_streak_times$field = new int();
      }
      
      public function get hasHistoryMaxWinStreakTimes() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set historyMaxWinStreakTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.history_max_win_streak_times$field = param1;
      }
      
      public function get historyMaxWinStreakTimes() : int
      {
         return this.history_max_win_streak_times$field;
      }
      
      public function clearAward() : void
      {
         this.award$field = null;
      }
      
      public function get hasAward() : Boolean
      {
         return this.award$field != null;
      }
      
      public function set award(param1:serverProto.battleRoyale.ProtoBattleRoyaleOverAward) : void
      {
         this.award$field = param1;
      }
      
      public function get award() : serverProto.battleRoyale.ProtoBattleRoyaleOverAward
      {
         return this.award$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.camp);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.winCamp);
         if(this.hasEnterFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.enter_flag$field);
         }
         if(this.hasCampTotalScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.camp_total_score$field);
         }
         if(this.hasSelfScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.self_score$field);
         }
         if(this.hasRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.rank$field);
         }
         if(this.hasWinTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.win_times$field);
         }
         if(this.hasWinStreakTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.win_streak_times$field);
         }
         if(this.hasHistoryMaxWinStreakTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.history_max_win_streak_times$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.starPlayerList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.starPlayerList[_loc2_]);
            _loc2_++;
         }
         if(this.hasAward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award$field);
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
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
