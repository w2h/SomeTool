package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildDetailInfo extends Message
   {
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoGuildDetailInfo.guild_id","guildId",1 << 3 | WireType.VARINT);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDetailInfo.guild_name","guildName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CHIEF_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDetailInfo.chief_id","chiefId",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const CHIEF_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDetailInfo.chief_name","chiefName",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const GUILD_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.guild_lvl","guildLvl",5 << 3 | WireType.VARINT);
      
      public static const GUILD_FUNDS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.guild_funds","guildFunds",6 << 3 | WireType.VARINT);
      
      public static const GUILD_MEMBER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.guild_member_num","guildMemberNum",7 << 3 | WireType.VARINT);
      
      public static const MAX_GUILD_MEMBER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.max_guild_member_num","maxGuildMemberNum",8 << 3 | WireType.VARINT);
      
      public static const GUILD_QQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.guild_qq","guildQq",9 << 3 | WireType.VARINT);
      
      public static const GUILD_ANNO:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDetailInfo.guild_anno","guildAnno",10 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const LUCKY_WHEEL_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.lucky_wheel_lvl","luckyWheelLvl",11 << 3 | WireType.VARINT);
      
      public static const SKILL_STUDY_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.skill_study_lvl","skillStudyLvl",12 << 3 | WireType.VARINT);
      
      public static const CUR_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.cur_time","curTime",13 << 3 | WireType.VARINT);
      
      public static const GUILD_LIVENESS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.guild_liveness","guildLiveness",14 << 3 | WireType.VARINT);
      
      public static const MAX_DAILY_GUILD_LIVENESS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.max_daily_guild_liveness","maxDailyGuildLiveness",15 << 3 | WireType.VARINT);
      
      public static const LAST_THREE_DAYS_GUILD_LIVENESS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDetailInfo.last_three_days_guild_liveness","lastThreeDaysGuildLiveness",16 << 3 | WireType.VARINT);
       
      private var guild_id$field:UInt64;
      
      private var guild_name$field:String;
      
      private var chief_id$field:ProtoPlayerKey;
      
      private var chief_name$field:String;
      
      private var guild_lvl$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var guild_funds$field:uint;
      
      private var guild_member_num$field:uint;
      
      private var max_guild_member_num$field:uint;
      
      private var guild_qq$field:uint;
      
      private var guild_anno$field:String;
      
      private var lucky_wheel_lvl$field:uint;
      
      private var skill_study_lvl$field:uint;
      
      private var cur_time$field:uint;
      
      private var guild_liveness$field:uint;
      
      private var max_daily_guild_liveness$field:uint;
      
      private var last_three_days_guild_liveness$field:uint;
      
      public function ProtoGuildDetailInfo()
      {
         super();
      }
      
      public function clearGuildId() : void
      {
         this.guild_id$field = null;
      }
      
      public function get hasGuildId() : Boolean
      {
         return this.guild_id$field != null;
      }
      
      public function set guildId(param1:UInt64) : void
      {
         this.guild_id$field = param1;
      }
      
      public function get guildId() : UInt64
      {
         return this.guild_id$field;
      }
      
      public function clearGuildName() : void
      {
         this.guild_name$field = null;
      }
      
      public function get hasGuildName() : Boolean
      {
         return this.guild_name$field != null;
      }
      
      public function set guildName(param1:String) : void
      {
         this.guild_name$field = param1;
      }
      
      public function get guildName() : String
      {
         return this.guild_name$field;
      }
      
      public function clearChiefId() : void
      {
         this.chief_id$field = null;
      }
      
      public function get hasChiefId() : Boolean
      {
         return this.chief_id$field != null;
      }
      
      public function set chiefId(param1:ProtoPlayerKey) : void
      {
         this.chief_id$field = param1;
      }
      
      public function get chiefId() : ProtoPlayerKey
      {
         return this.chief_id$field;
      }
      
      public function clearChiefName() : void
      {
         this.chief_name$field = null;
      }
      
      public function get hasChiefName() : Boolean
      {
         return this.chief_name$field != null;
      }
      
      public function set chiefName(param1:String) : void
      {
         this.chief_name$field = param1;
      }
      
      public function get chiefName() : String
      {
         return this.chief_name$field;
      }
      
      public function clearGuildLvl() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.guild_lvl$field = new uint();
      }
      
      public function get hasGuildLvl() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set guildLvl(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.guild_lvl$field = param1;
      }
      
      public function get guildLvl() : uint
      {
         return this.guild_lvl$field;
      }
      
      public function clearGuildFunds() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.guild_funds$field = new uint();
      }
      
      public function get hasGuildFunds() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set guildFunds(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.guild_funds$field = param1;
      }
      
      public function get guildFunds() : uint
      {
         return this.guild_funds$field;
      }
      
      public function clearGuildMemberNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.guild_member_num$field = new uint();
      }
      
      public function get hasGuildMemberNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set guildMemberNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.guild_member_num$field = param1;
      }
      
      public function get guildMemberNum() : uint
      {
         return this.guild_member_num$field;
      }
      
      public function clearMaxGuildMemberNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.max_guild_member_num$field = new uint();
      }
      
      public function get hasMaxGuildMemberNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set maxGuildMemberNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.max_guild_member_num$field = param1;
      }
      
      public function get maxGuildMemberNum() : uint
      {
         return this.max_guild_member_num$field;
      }
      
      public function clearGuildQq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.guild_qq$field = new uint();
      }
      
      public function get hasGuildQq() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set guildQq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.guild_qq$field = param1;
      }
      
      public function get guildQq() : uint
      {
         return this.guild_qq$field;
      }
      
      public function clearGuildAnno() : void
      {
         this.guild_anno$field = null;
      }
      
      public function get hasGuildAnno() : Boolean
      {
         return this.guild_anno$field != null;
      }
      
      public function set guildAnno(param1:String) : void
      {
         this.guild_anno$field = param1;
      }
      
      public function get guildAnno() : String
      {
         return this.guild_anno$field;
      }
      
      public function clearLuckyWheelLvl() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.lucky_wheel_lvl$field = new uint();
      }
      
      public function get hasLuckyWheelLvl() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set luckyWheelLvl(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.lucky_wheel_lvl$field = param1;
      }
      
      public function get luckyWheelLvl() : uint
      {
         return this.lucky_wheel_lvl$field;
      }
      
      public function clearSkillStudyLvl() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.skill_study_lvl$field = new uint();
      }
      
      public function get hasSkillStudyLvl() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set skillStudyLvl(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.skill_study_lvl$field = param1;
      }
      
      public function get skillStudyLvl() : uint
      {
         return this.skill_study_lvl$field;
      }
      
      public function clearCurTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.cur_time$field = new uint();
      }
      
      public function get hasCurTime() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set curTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.cur_time$field = param1;
      }
      
      public function get curTime() : uint
      {
         return this.cur_time$field;
      }
      
      public function clearGuildLiveness() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.guild_liveness$field = new uint();
      }
      
      public function get hasGuildLiveness() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set guildLiveness(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.guild_liveness$field = param1;
      }
      
      public function get guildLiveness() : uint
      {
         return this.guild_liveness$field;
      }
      
      public function clearMaxDailyGuildLiveness() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.max_daily_guild_liveness$field = new uint();
      }
      
      public function get hasMaxDailyGuildLiveness() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set maxDailyGuildLiveness(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.max_daily_guild_liveness$field = param1;
      }
      
      public function get maxDailyGuildLiveness() : uint
      {
         return this.max_daily_guild_liveness$field;
      }
      
      public function clearLastThreeDaysGuildLiveness() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.last_three_days_guild_liveness$field = new uint();
      }
      
      public function get hasLastThreeDaysGuildLiveness() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set lastThreeDaysGuildLiveness(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.last_three_days_guild_liveness$field = param1;
      }
      
      public function get lastThreeDaysGuildLiveness() : uint
      {
         return this.last_three_days_guild_liveness$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasGuildId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT64(param1,this.guild_id$field);
         }
         if(this.hasGuildName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.guild_name$field);
         }
         if(this.hasChiefId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.chief_id$field);
         }
         if(this.hasChiefName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.chief_name$field);
         }
         if(this.hasGuildLvl)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_lvl$field);
         }
         if(this.hasGuildFunds)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_funds$field);
         }
         if(this.hasGuildMemberNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_member_num$field);
         }
         if(this.hasMaxGuildMemberNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.max_guild_member_num$field);
         }
         if(this.hasGuildQq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_qq$field);
         }
         if(this.hasGuildAnno)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_STRING(param1,this.guild_anno$field);
         }
         if(this.hasLuckyWheelLvl)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.lucky_wheel_lvl$field);
         }
         if(this.hasSkillStudyLvl)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.skill_study_lvl$field);
         }
         if(this.hasCurTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT32(param1,this.cur_time$field);
         }
         if(this.hasGuildLiveness)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_liveness$field);
         }
         if(this.hasMaxDailyGuildLiveness)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_UINT32(param1,this.max_daily_guild_liveness$field);
         }
         if(this.hasLastThreeDaysGuildLiveness)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_UINT32(param1,this.last_three_days_guild_liveness$field);
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
          * Error type: IndexOutOfBoundsException (Index: 16, Size: 16)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
