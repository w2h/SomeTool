package serverProto.universeFuzionPre
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoNinjaSimpleInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniverseRankBattlePlayerInfo extends Message
   {
      
      public static const LEFT_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.left_times","leftTimes",1 << 3 | WireType.VARINT);
      
      public static const LEFT_PAY_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.left_pay_times","leftPayTimes",2 << 3 | WireType.VARINT);
      
      public static const CD_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.cd_time","cdTime",3 << 3 | WireType.VARINT);
      
      public static const RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.rank","rank",4 << 3 | WireType.VARINT);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.combat_power","combatPower",5 << 3 | WireType.VARINT);
      
      public static const CONTINUOUS_WIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.continuous_win","continuousWin",6 << 3 | WireType.VARINT);
      
      public static const RANK_AWARD_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.rank_award_money","rankAwardMoney",7 << 3 | WireType.VARINT);
      
      public static const RANK_AWARD_BATTLE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.rank_award_battle_money","rankAwardBattleMoney",8 << 3 | WireType.VARINT);
      
      public static const BUY_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.buy_times","buyTimes",9 << 3 | WireType.VARINT);
      
      public static const BUY_TIMES_MONEY_INGOT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.buy_times_money_ingot","buyTimesMoneyIngot",10 << 3 | WireType.VARINT);
      
      public static const CD_TIME_MONEY_INGOT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.cd_time_money_ingot","cdTimeMoneyIngot",11 << 3 | WireType.VARINT);
      
      public static const NINJA_TIPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.ninja_tips","ninjaTips",12 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaSimpleInfo);
      
      public static const RANK_AWARD_POINT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.rank_award_point","rankAwardPoint",13 << 3 | WireType.VARINT);
      
      public static const POINT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo.point","point",14 << 3 | WireType.VARINT);
       
      private var left_times$field:int;
      
      private var hasField$0:uint = 0;
      
      private var left_pay_times$field:int;
      
      private var cd_time$field:int;
      
      private var rank$field:int;
      
      private var combat_power$field:int;
      
      private var continuous_win$field:int;
      
      private var rank_award_money$field:int;
      
      private var rank_award_battle_money$field:int;
      
      private var buy_times$field:int;
      
      private var buy_times_money_ingot$field:int;
      
      private var cd_time_money_ingot$field:int;
      
      [ArrayElementType("serverProto.inc.ProtoNinjaSimpleInfo")]
      public var ninjaTips:Array;
      
      private var rank_award_point$field:int;
      
      private var point$field:uint;
      
      public function ProtoUniverseRankBattlePlayerInfo()
      {
         this.ninjaTips = [];
         super();
      }
      
      public function clearLeftTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.left_times$field = new int();
      }
      
      public function get hasLeftTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set leftTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.left_times$field = param1;
      }
      
      public function get leftTimes() : int
      {
         return this.left_times$field;
      }
      
      public function clearLeftPayTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.left_pay_times$field = new int();
      }
      
      public function get hasLeftPayTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set leftPayTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.left_pay_times$field = param1;
      }
      
      public function get leftPayTimes() : int
      {
         return this.left_pay_times$field;
      }
      
      public function clearCdTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.cd_time$field = new int();
      }
      
      public function get hasCdTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set cdTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.cd_time$field = param1;
      }
      
      public function get cdTime() : int
      {
         return this.cd_time$field;
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
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.combat_power$field = new int();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set combatPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : int
      {
         return this.combat_power$field;
      }
      
      public function clearContinuousWin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.continuous_win$field = new int();
      }
      
      public function get hasContinuousWin() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set continuousWin(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.continuous_win$field = param1;
      }
      
      public function get continuousWin() : int
      {
         return this.continuous_win$field;
      }
      
      public function clearRankAwardMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.rank_award_money$field = new int();
      }
      
      public function get hasRankAwardMoney() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set rankAwardMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.rank_award_money$field = param1;
      }
      
      public function get rankAwardMoney() : int
      {
         return this.rank_award_money$field;
      }
      
      public function clearRankAwardBattleMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.rank_award_battle_money$field = new int();
      }
      
      public function get hasRankAwardBattleMoney() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set rankAwardBattleMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.rank_award_battle_money$field = param1;
      }
      
      public function get rankAwardBattleMoney() : int
      {
         return this.rank_award_battle_money$field;
      }
      
      public function clearBuyTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.buy_times$field = new int();
      }
      
      public function get hasBuyTimes() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set buyTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.buy_times$field = param1;
      }
      
      public function get buyTimes() : int
      {
         return this.buy_times$field;
      }
      
      public function clearBuyTimesMoneyIngot() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.buy_times_money_ingot$field = new int();
      }
      
      public function get hasBuyTimesMoneyIngot() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set buyTimesMoneyIngot(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.buy_times_money_ingot$field = param1;
      }
      
      public function get buyTimesMoneyIngot() : int
      {
         return this.buy_times_money_ingot$field;
      }
      
      public function clearCdTimeMoneyIngot() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.cd_time_money_ingot$field = new int();
      }
      
      public function get hasCdTimeMoneyIngot() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set cdTimeMoneyIngot(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.cd_time_money_ingot$field = param1;
      }
      
      public function get cdTimeMoneyIngot() : int
      {
         return this.cd_time_money_ingot$field;
      }
      
      public function clearRankAwardPoint() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.rank_award_point$field = new int();
      }
      
      public function get hasRankAwardPoint() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set rankAwardPoint(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.rank_award_point$field = param1;
      }
      
      public function get rankAwardPoint() : int
      {
         return this.rank_award_point$field;
      }
      
      public function clearPoint() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.point$field = new uint();
      }
      
      public function get hasPoint() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set point(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.point$field = param1;
      }
      
      public function get point() : uint
      {
         return this.point$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasLeftTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.left_times$field);
         }
         if(this.hasLeftPayTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.left_pay_times$field);
         }
         if(this.hasCdTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.cd_time$field);
         }
         if(this.hasRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.rank$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.combat_power$field);
         }
         if(this.hasContinuousWin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.continuous_win$field);
         }
         if(this.hasRankAwardMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.rank_award_money$field);
         }
         if(this.hasRankAwardBattleMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.rank_award_battle_money$field);
         }
         if(this.hasBuyTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.buy_times$field);
         }
         if(this.hasBuyTimesMoneyIngot)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.buy_times_money_ingot$field);
         }
         if(this.hasCdTimeMoneyIngot)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.cd_time_money_ingot$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaTips.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,12);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaTips[_loc2_]);
            _loc2_++;
         }
         if(this.hasRankAwardPoint)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_INT32(param1,this.rank_award_point$field);
         }
         if(this.hasPoint)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_UINT32(param1,this.point$field);
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
          * Error type: IndexOutOfBoundsException (Index: 14, Size: 14)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
