package serverProto.battleRoyale
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBattleRoyaleFightOverInfoNotify extends Message
   {
      
      public static const WIN_STREAK_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.win_streak_times","winStreakTimes",1 << 3 | WireType.VARINT);
      
      public static const TERMINATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.terminate","terminate",2 << 3 | WireType.VARINT);
      
      public static const LOSER_KILL_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.loser_kill_count","loserKillCount",3 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.score","score",4 << 3 | WireType.VARINT);
      
      public static const MORALE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.morale","morale",5 << 3 | WireType.VARINT);
      
      public static const RES_TIMEOUT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.battleRoyale.ProtoBattleRoyaleFightOverInfoNotify.res_timeout","resTimeout",6 << 3 | WireType.VARINT);
       
      private var win_streak_times$field:int;
      
      private var hasField$0:uint = 0;
      
      private var terminate$field:int;
      
      private var loser_kill_count$field:int;
      
      private var score$field:int;
      
      private var morale$field:int;
      
      private var res_timeout$field:Boolean;
      
      public function ProtoBattleRoyaleFightOverInfoNotify()
      {
         super();
      }
      
      public function clearWinStreakTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.win_streak_times$field = new int();
      }
      
      public function get hasWinStreakTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set winStreakTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.win_streak_times$field = param1;
      }
      
      public function get winStreakTimes() : int
      {
         return this.win_streak_times$field;
      }
      
      public function clearTerminate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.terminate$field = new int();
      }
      
      public function get hasTerminate() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set terminate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.terminate$field = param1;
      }
      
      public function get terminate() : int
      {
         return this.terminate$field;
      }
      
      public function clearLoserKillCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.loser_kill_count$field = new int();
      }
      
      public function get hasLoserKillCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set loserKillCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.loser_kill_count$field = param1;
      }
      
      public function get loserKillCount() : int
      {
         return this.loser_kill_count$field;
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
      
      public function clearMorale() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.morale$field = new int();
      }
      
      public function get hasMorale() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set morale(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.morale$field = param1;
      }
      
      public function get morale() : int
      {
         return this.morale$field;
      }
      
      public function clearResTimeout() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.res_timeout$field = new Boolean();
      }
      
      public function get hasResTimeout() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set resTimeout(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.res_timeout$field = param1;
      }
      
      public function get resTimeout() : Boolean
      {
         return this.res_timeout$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasWinStreakTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.win_streak_times$field);
         }
         if(this.hasTerminate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.terminate$field);
         }
         if(this.hasLoserKillCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.loser_kill_count$field);
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.score$field);
         }
         if(this.hasMorale)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.morale$field);
         }
         if(this.hasResTimeout)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_BOOL(param1,this.res_timeout$field);
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
