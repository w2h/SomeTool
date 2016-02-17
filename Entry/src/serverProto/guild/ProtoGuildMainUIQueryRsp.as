package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildMainUIQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildMainUIQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const GUILD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildMainUIQueryRsp.guild_info","guildInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildDetailInfo);
      
      public static const ACTIVITY_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildMainUIQueryRsp.activity_data","activityData",3 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildActivityData);
      
      public static const NEXT_GUILD_LVL_MEMBER_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.next_guild_lvl_member_ulimit","nextGuildLvlMemberUlimit",4 << 3 | WireType.VARINT);
      
      public static const GUILD_UPGRADE_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.guild_upgrade_cost","guildUpgradeCost",5 << 3 | WireType.VARINT);
      
      public static const NEXT_LUCKY_WHEEL_ROLL_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.next_lucky_wheel_roll_ulimit","nextLuckyWheelRollUlimit",6 << 3 | WireType.VARINT);
      
      public static const LUCKY_WHEEL_UPGRADE_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.lucky_wheel_upgrade_cost","luckyWheelUpgradeCost",7 << 3 | WireType.VARINT);
      
      public static const NEXT_GUILD_SKILL_LEARN_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.next_guild_skill_learn_ulimit","nextGuildSkillLearnUlimit",8 << 3 | WireType.VARINT);
      
      public static const SKILL_STUDY_UPGRADE_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.skill_study_upgrade_cost","skillStudyUpgradeCost",9 << 3 | WireType.VARINT);
      
      public static const CUR_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.cur_time","curTime",10 << 3 | WireType.VARINT);
      
      public static const TODAY_AWARD_LIVENESS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMainUIQueryRsp.today_award_liveness","todayAwardLiveness",11 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var guild_info$field:serverProto.guild.ProtoGuildDetailInfo;
      
      private var activity_data$field:serverProto.guild.ProtoGuildActivityData;
      
      private var next_guild_lvl_member_ulimit$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var guild_upgrade_cost$field:uint;
      
      private var next_lucky_wheel_roll_ulimit$field:uint;
      
      private var lucky_wheel_upgrade_cost$field:uint;
      
      private var next_guild_skill_learn_ulimit$field:uint;
      
      private var skill_study_upgrade_cost$field:uint;
      
      private var cur_time$field:uint;
      
      private var today_award_liveness$field:uint;
      
      public function ProtoGuildMainUIQueryRsp()
      {
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearGuildInfo() : void
      {
         this.guild_info$field = null;
      }
      
      public function get hasGuildInfo() : Boolean
      {
         return this.guild_info$field != null;
      }
      
      public function set guildInfo(param1:serverProto.guild.ProtoGuildDetailInfo) : void
      {
         this.guild_info$field = param1;
      }
      
      public function get guildInfo() : serverProto.guild.ProtoGuildDetailInfo
      {
         return this.guild_info$field;
      }
      
      public function clearActivityData() : void
      {
         this.activity_data$field = null;
      }
      
      public function get hasActivityData() : Boolean
      {
         return this.activity_data$field != null;
      }
      
      public function set activityData(param1:serverProto.guild.ProtoGuildActivityData) : void
      {
         this.activity_data$field = param1;
      }
      
      public function get activityData() : serverProto.guild.ProtoGuildActivityData
      {
         return this.activity_data$field;
      }
      
      public function clearNextGuildLvlMemberUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.next_guild_lvl_member_ulimit$field = new uint();
      }
      
      public function get hasNextGuildLvlMemberUlimit() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set nextGuildLvlMemberUlimit(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.next_guild_lvl_member_ulimit$field = param1;
      }
      
      public function get nextGuildLvlMemberUlimit() : uint
      {
         return this.next_guild_lvl_member_ulimit$field;
      }
      
      public function clearGuildUpgradeCost() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.guild_upgrade_cost$field = new uint();
      }
      
      public function get hasGuildUpgradeCost() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set guildUpgradeCost(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.guild_upgrade_cost$field = param1;
      }
      
      public function get guildUpgradeCost() : uint
      {
         return this.guild_upgrade_cost$field;
      }
      
      public function clearNextLuckyWheelRollUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.next_lucky_wheel_roll_ulimit$field = new uint();
      }
      
      public function get hasNextLuckyWheelRollUlimit() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set nextLuckyWheelRollUlimit(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.next_lucky_wheel_roll_ulimit$field = param1;
      }
      
      public function get nextLuckyWheelRollUlimit() : uint
      {
         return this.next_lucky_wheel_roll_ulimit$field;
      }
      
      public function clearLuckyWheelUpgradeCost() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.lucky_wheel_upgrade_cost$field = new uint();
      }
      
      public function get hasLuckyWheelUpgradeCost() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set luckyWheelUpgradeCost(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.lucky_wheel_upgrade_cost$field = param1;
      }
      
      public function get luckyWheelUpgradeCost() : uint
      {
         return this.lucky_wheel_upgrade_cost$field;
      }
      
      public function clearNextGuildSkillLearnUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.next_guild_skill_learn_ulimit$field = new uint();
      }
      
      public function get hasNextGuildSkillLearnUlimit() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set nextGuildSkillLearnUlimit(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.next_guild_skill_learn_ulimit$field = param1;
      }
      
      public function get nextGuildSkillLearnUlimit() : uint
      {
         return this.next_guild_skill_learn_ulimit$field;
      }
      
      public function clearSkillStudyUpgradeCost() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.skill_study_upgrade_cost$field = new uint();
      }
      
      public function get hasSkillStudyUpgradeCost() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set skillStudyUpgradeCost(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.skill_study_upgrade_cost$field = param1;
      }
      
      public function get skillStudyUpgradeCost() : uint
      {
         return this.skill_study_upgrade_cost$field;
      }
      
      public function clearCurTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.cur_time$field = new uint();
      }
      
      public function get hasCurTime() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set curTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.cur_time$field = param1;
      }
      
      public function get curTime() : uint
      {
         return this.cur_time$field;
      }
      
      public function clearTodayAwardLiveness() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.today_award_liveness$field = new uint();
      }
      
      public function get hasTodayAwardLiveness() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set todayAwardLiveness(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.today_award_liveness$field = param1;
      }
      
      public function get todayAwardLiveness() : uint
      {
         return this.today_award_liveness$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasGuildInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.guild_info$field);
         }
         if(this.hasActivityData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.activity_data$field);
         }
         if(this.hasNextGuildLvlMemberUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.next_guild_lvl_member_ulimit$field);
         }
         if(this.hasGuildUpgradeCost)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_upgrade_cost$field);
         }
         if(this.hasNextLuckyWheelRollUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.next_lucky_wheel_roll_ulimit$field);
         }
         if(this.hasLuckyWheelUpgradeCost)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.lucky_wheel_upgrade_cost$field);
         }
         if(this.hasNextGuildSkillLearnUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.next_guild_skill_learn_ulimit$field);
         }
         if(this.hasSkillStudyUpgradeCost)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.skill_study_upgrade_cost$field);
         }
         if(this.hasCurTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.cur_time$field);
         }
         if(this.hasTodayAwardLiveness)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.today_award_liveness$field);
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
