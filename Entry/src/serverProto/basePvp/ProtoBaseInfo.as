package serverProto.basePvp
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBaseInfo extends Message
   {
      
      public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseInfo.uin","uin",1 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.basePvp.ProtoBaseInfo.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.level","level",3 << 3 | WireType.VARINT);
      
      public static const BASE_MAIN_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseInfo.base_main_info","baseMainInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoBaseMainInfo);
      
      public static const BASE_ROSHAN_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseInfo.base_roshan_info","baseRoshanInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoBaseRoshanInfo);
      
      public static const BASE_MONEY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseInfo.base_money_info","baseMoneyInfo",6 << 3 | WireType.LENGTH_DELIMITED,ProtoBaseMoneyInfo);
      
      public static const BASE_REPORT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseInfo.base_report_info","baseReportInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoBaseReportInfo);
      
      public static const BASE_FIGHT_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_fight_power","baseFightPower",8 << 3 | WireType.VARINT);
      
      public static const BASE_UPGRADE_CD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_upgrade_cd","baseUpgradeCd",9 << 3 | WireType.VARINT);
      
      public static const CAN_UPGRADE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.can_upgrade","canUpgrade",10 << 3 | WireType.VARINT);
      
      public static const BASE_SHIELD_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_shield_time","baseShieldTime",11 << 3 | WireType.VARINT);
      
      public static const BASE_ATTACK_TIMES_LEFT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_attack_times_left","baseAttackTimesLeft",12 << 3 | WireType.VARINT);
      
      public static const BASE_NEXT_ATTACK_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_next_attack_time","baseNextAttackTime",13 << 3 | WireType.VARINT);
      
      public static const BASE_MAX_ROB_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_max_rob_money","baseMaxRobMoney",14 << 3 | WireType.VARINT);
      
      public static const BASE_CURRENT_ROB_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_current_rob_money","baseCurrentRobMoney",15 << 3 | WireType.VARINT);
      
      public static const NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.ninja_id","ninjaId",16 << 3 | WireType.VARINT);
      
      public static const BASE_UPGRADE_TOTAL_CD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.base_upgrade_total_cd","baseUpgradeTotalCd",17 << 3 | WireType.VARINT);
      
      public static const ATTACK_BASE_TIME_REMAINING:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.attack_base_time_remaining","attackBaseTimeRemaining",18 << 3 | WireType.VARINT);
      
      public static const MATCH_COST_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseInfo.match_cost_money","matchCostMoney",19 << 3 | WireType.VARINT);
       
      public var uin:uint;
      
      private var name$field:String;
      
      private var level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var base_main_info$field:serverProto.basePvp.ProtoBaseMainInfo;
      
      private var base_roshan_info$field:serverProto.basePvp.ProtoBaseRoshanInfo;
      
      private var base_money_info$field:serverProto.basePvp.ProtoBaseMoneyInfo;
      
      private var base_report_info$field:serverProto.basePvp.ProtoBaseReportInfo;
      
      private var base_fight_power$field:int;
      
      private var base_upgrade_cd$field:int;
      
      private var can_upgrade$field:int;
      
      private var base_shield_time$field:int;
      
      private var base_attack_times_left$field:int;
      
      private var base_next_attack_time$field:int;
      
      private var base_max_rob_money$field:int;
      
      private var base_current_rob_money$field:int;
      
      private var ninja_id$field:int;
      
      private var base_upgrade_total_cd$field:int;
      
      private var attack_base_time_remaining$field:int;
      
      private var match_cost_money$field:int;
      
      public function ProtoBaseInfo()
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
      
      public function clearBaseMainInfo() : void
      {
         this.base_main_info$field = null;
      }
      
      public function get hasBaseMainInfo() : Boolean
      {
         return this.base_main_info$field != null;
      }
      
      public function set baseMainInfo(param1:serverProto.basePvp.ProtoBaseMainInfo) : void
      {
         this.base_main_info$field = param1;
      }
      
      public function get baseMainInfo() : serverProto.basePvp.ProtoBaseMainInfo
      {
         return this.base_main_info$field;
      }
      
      public function clearBaseRoshanInfo() : void
      {
         this.base_roshan_info$field = null;
      }
      
      public function get hasBaseRoshanInfo() : Boolean
      {
         return this.base_roshan_info$field != null;
      }
      
      public function set baseRoshanInfo(param1:serverProto.basePvp.ProtoBaseRoshanInfo) : void
      {
         this.base_roshan_info$field = param1;
      }
      
      public function get baseRoshanInfo() : serverProto.basePvp.ProtoBaseRoshanInfo
      {
         return this.base_roshan_info$field;
      }
      
      public function clearBaseMoneyInfo() : void
      {
         this.base_money_info$field = null;
      }
      
      public function get hasBaseMoneyInfo() : Boolean
      {
         return this.base_money_info$field != null;
      }
      
      public function set baseMoneyInfo(param1:serverProto.basePvp.ProtoBaseMoneyInfo) : void
      {
         this.base_money_info$field = param1;
      }
      
      public function get baseMoneyInfo() : serverProto.basePvp.ProtoBaseMoneyInfo
      {
         return this.base_money_info$field;
      }
      
      public function clearBaseReportInfo() : void
      {
         this.base_report_info$field = null;
      }
      
      public function get hasBaseReportInfo() : Boolean
      {
         return this.base_report_info$field != null;
      }
      
      public function set baseReportInfo(param1:serverProto.basePvp.ProtoBaseReportInfo) : void
      {
         this.base_report_info$field = param1;
      }
      
      public function get baseReportInfo() : serverProto.basePvp.ProtoBaseReportInfo
      {
         return this.base_report_info$field;
      }
      
      public function clearBaseFightPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.base_fight_power$field = new int();
      }
      
      public function get hasBaseFightPower() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set baseFightPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.base_fight_power$field = param1;
      }
      
      public function get baseFightPower() : int
      {
         return this.base_fight_power$field;
      }
      
      public function clearBaseUpgradeCd() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.base_upgrade_cd$field = new int();
      }
      
      public function get hasBaseUpgradeCd() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set baseUpgradeCd(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.base_upgrade_cd$field = param1;
      }
      
      public function get baseUpgradeCd() : int
      {
         return this.base_upgrade_cd$field;
      }
      
      public function clearCanUpgrade() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.can_upgrade$field = new int();
      }
      
      public function get hasCanUpgrade() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set canUpgrade(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.can_upgrade$field = param1;
      }
      
      public function get canUpgrade() : int
      {
         return this.can_upgrade$field;
      }
      
      public function clearBaseShieldTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.base_shield_time$field = new int();
      }
      
      public function get hasBaseShieldTime() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set baseShieldTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.base_shield_time$field = param1;
      }
      
      public function get baseShieldTime() : int
      {
         return this.base_shield_time$field;
      }
      
      public function clearBaseAttackTimesLeft() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.base_attack_times_left$field = new int();
      }
      
      public function get hasBaseAttackTimesLeft() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set baseAttackTimesLeft(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.base_attack_times_left$field = param1;
      }
      
      public function get baseAttackTimesLeft() : int
      {
         return this.base_attack_times_left$field;
      }
      
      public function clearBaseNextAttackTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.base_next_attack_time$field = new int();
      }
      
      public function get hasBaseNextAttackTime() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set baseNextAttackTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.base_next_attack_time$field = param1;
      }
      
      public function get baseNextAttackTime() : int
      {
         return this.base_next_attack_time$field;
      }
      
      public function clearBaseMaxRobMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.base_max_rob_money$field = new int();
      }
      
      public function get hasBaseMaxRobMoney() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set baseMaxRobMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.base_max_rob_money$field = param1;
      }
      
      public function get baseMaxRobMoney() : int
      {
         return this.base_max_rob_money$field;
      }
      
      public function clearBaseCurrentRobMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.base_current_rob_money$field = new int();
      }
      
      public function get hasBaseCurrentRobMoney() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set baseCurrentRobMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.base_current_rob_money$field = param1;
      }
      
      public function get baseCurrentRobMoney() : int
      {
         return this.base_current_rob_money$field;
      }
      
      public function clearNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.ninja_id$field = new int();
      }
      
      public function get hasNinjaId() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set ninjaId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.ninja_id$field = param1;
      }
      
      public function get ninjaId() : int
      {
         return this.ninja_id$field;
      }
      
      public function clearBaseUpgradeTotalCd() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.base_upgrade_total_cd$field = new int();
      }
      
      public function get hasBaseUpgradeTotalCd() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set baseUpgradeTotalCd(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.base_upgrade_total_cd$field = param1;
      }
      
      public function get baseUpgradeTotalCd() : int
      {
         return this.base_upgrade_total_cd$field;
      }
      
      public function clearAttackBaseTimeRemaining() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.attack_base_time_remaining$field = new int();
      }
      
      public function get hasAttackBaseTimeRemaining() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set attackBaseTimeRemaining(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.attack_base_time_remaining$field = param1;
      }
      
      public function get attackBaseTimeRemaining() : int
      {
         return this.attack_base_time_remaining$field;
      }
      
      public function clearMatchCostMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.match_cost_money$field = new int();
      }
      
      public function get hasMatchCostMoney() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set matchCostMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.match_cost_money$field = param1;
      }
      
      public function get matchCostMoney() : int
      {
         return this.match_cost_money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.uin);
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.level$field);
         }
         if(this.hasBaseMainInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_main_info$field);
         }
         if(this.hasBaseRoshanInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_roshan_info$field);
         }
         if(this.hasBaseMoneyInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_money_info$field);
         }
         if(this.hasBaseReportInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_report_info$field);
         }
         if(this.hasBaseFightPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.base_fight_power$field);
         }
         if(this.hasBaseUpgradeCd)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.base_upgrade_cd$field);
         }
         if(this.hasCanUpgrade)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.can_upgrade$field);
         }
         if(this.hasBaseShieldTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.base_shield_time$field);
         }
         if(this.hasBaseAttackTimesLeft)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_INT32(param1,this.base_attack_times_left$field);
         }
         if(this.hasBaseNextAttackTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_INT32(param1,this.base_next_attack_time$field);
         }
         if(this.hasBaseMaxRobMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_INT32(param1,this.base_max_rob_money$field);
         }
         if(this.hasBaseCurrentRobMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_INT32(param1,this.base_current_rob_money$field);
         }
         if(this.hasNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_id$field);
         }
         if(this.hasBaseUpgradeTotalCd)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,17);
            WriteUtils.write$TYPE_INT32(param1,this.base_upgrade_total_cd$field);
         }
         if(this.hasAttackBaseTimeRemaining)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,18);
            WriteUtils.write$TYPE_INT32(param1,this.attack_base_time_remaining$field);
         }
         if(this.hasMatchCostMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,19);
            WriteUtils.write$TYPE_INT32(param1,this.match_cost_money$field);
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
          * Error type: IndexOutOfBoundsException (Index: 19, Size: 19)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
