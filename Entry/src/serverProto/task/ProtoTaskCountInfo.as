package serverProto.task
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTaskCountInfo extends Message
   {
      
      public static const DAILY_TASK_TOTAL_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.daily_task_total_times","dailyTaskTotalTimes",1 << 3 | WireType.VARINT);
      
      public static const DAILY_TASK_COMPLETE_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.daily_task_complete_times","dailyTaskCompleteTimes",2 << 3 | WireType.VARINT);
      
      public static const PRACTICE_TOTAL_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.practice_total_accept_times","practiceTotalAcceptTimes",3 << 3 | WireType.VARINT);
      
      public static const PRACTICE_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.practice_accept_times","practiceAcceptTimes",4 << 3 | WireType.VARINT);
      
      public static const ESCORT_TOTAL_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_total_accept_times","escortTotalAcceptTimes",5 << 3 | WireType.VARINT);
      
      public static const ESCORT_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_accept_times","escortAcceptTimes",6 << 3 | WireType.VARINT);
      
      public static const ESCORT_FREE_FRESH_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_free_fresh_times","escortFreeFreshTimes",7 << 3 | WireType.VARINT);
      
      public static const ESCORT_REFRESH_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_refresh_time","escortRefreshTime",8 << 3 | WireType.VARINT);
      
      public static const ESCORT_FAIL_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_fail_time","escortFailTime",9 << 3 | WireType.VARINT);
      
      public static const ESCORT_REAL_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_real_money","escortRealMoney",10 << 3 | WireType.VARINT);
      
      public static const WANTED_TOTAL_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.wanted_total_accept_times","wantedTotalAcceptTimes",11 << 3 | WireType.VARINT);
      
      public static const WANTED_ACCEPT_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.wanted_accept_times","wantedAcceptTimes",12 << 3 | WireType.VARINT);
      
      public static const WANTED_TEAM_EXP_ADDITION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.wanted_team_exp_addition","wantedTeamExpAddition",13 << 3 | WireType.VARINT);
      
      public static const ESCORT_REAL_COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_real_coupon","escortRealCoupon",14 << 3 | WireType.VARINT);
      
      public static const ESCORT_SS_FREE_ACCEPT_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_ss_free_accept_count","escortSsFreeAcceptCount",15 << 3 | WireType.VARINT);
      
      public static const ESCORT_SS_TOTAL_FREE_ACCEPT_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_ss_total_free_accept_count","escortSsTotalFreeAcceptCount",16 << 3 | WireType.VARINT);
      
      public static const ZHEN_BAO_ADDITION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.zhen_bao_addition","zhenBaoAddition",17 << 3 | WireType.VARINT);
      
      public static const ESCORT_REAL_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.escort_real_contri","escortRealContri",18 << 3 | WireType.VARINT);
      
      public static const WEEKLY_REFRESH_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.weekly_refresh_time","weeklyRefreshTime",19 << 3 | WireType.VARINT);
      
      public static const ACTIVE_AWARD_STAT:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.active_award_stat","activeAwardStat",20 << 3 | WireType.VARINT);
      
      public static const AWARD_PACKAGE_ID:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.award_package_id","awardPackageId",21 << 3 | WireType.VARINT);
      
      public static const WEEKLY_TASK_FINISH_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskCountInfo.weekly_task_finish_count","weeklyTaskFinishCount",22 << 3 | WireType.VARINT);
       
      private var daily_task_total_times$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var daily_task_complete_times$field:uint;
      
      private var practice_total_accept_times$field:uint;
      
      private var practice_accept_times$field:uint;
      
      private var escort_total_accept_times$field:uint;
      
      private var escort_accept_times$field:uint;
      
      private var escort_free_fresh_times$field:uint;
      
      private var escort_refresh_time$field:uint;
      
      private var escort_fail_time$field:uint;
      
      private var escort_real_money$field:uint;
      
      private var wanted_total_accept_times$field:uint;
      
      private var wanted_accept_times$field:uint;
      
      private var wanted_team_exp_addition$field:uint;
      
      private var escort_real_coupon$field:uint;
      
      private var escort_ss_free_accept_count$field:uint;
      
      private var escort_ss_total_free_accept_count$field:uint;
      
      private var zhen_bao_addition$field:uint;
      
      private var escort_real_contri$field:uint;
      
      private var weekly_refresh_time$field:uint;
      
      [ArrayElementType("uint")]
      public var activeAwardStat:Array;
      
      [ArrayElementType("uint")]
      public var awardPackageId:Array;
      
      private var weekly_task_finish_count$field:uint;
      
      public function ProtoTaskCountInfo()
      {
         this.activeAwardStat = [];
         this.awardPackageId = [];
         super();
      }
      
      public function clearDailyTaskTotalTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.daily_task_total_times$field = new uint();
      }
      
      public function get hasDailyTaskTotalTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set dailyTaskTotalTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.daily_task_total_times$field = param1;
      }
      
      public function get dailyTaskTotalTimes() : uint
      {
         return this.daily_task_total_times$field;
      }
      
      public function clearDailyTaskCompleteTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.daily_task_complete_times$field = new uint();
      }
      
      public function get hasDailyTaskCompleteTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set dailyTaskCompleteTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.daily_task_complete_times$field = param1;
      }
      
      public function get dailyTaskCompleteTimes() : uint
      {
         return this.daily_task_complete_times$field;
      }
      
      public function clearPracticeTotalAcceptTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.practice_total_accept_times$field = new uint();
      }
      
      public function get hasPracticeTotalAcceptTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set practiceTotalAcceptTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.practice_total_accept_times$field = param1;
      }
      
      public function get practiceTotalAcceptTimes() : uint
      {
         return this.practice_total_accept_times$field;
      }
      
      public function clearPracticeAcceptTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.practice_accept_times$field = new uint();
      }
      
      public function get hasPracticeAcceptTimes() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set practiceAcceptTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.practice_accept_times$field = param1;
      }
      
      public function get practiceAcceptTimes() : uint
      {
         return this.practice_accept_times$field;
      }
      
      public function clearEscortTotalAcceptTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.escort_total_accept_times$field = new uint();
      }
      
      public function get hasEscortTotalAcceptTimes() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set escortTotalAcceptTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.escort_total_accept_times$field = param1;
      }
      
      public function get escortTotalAcceptTimes() : uint
      {
         return this.escort_total_accept_times$field;
      }
      
      public function clearEscortAcceptTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.escort_accept_times$field = new uint();
      }
      
      public function get hasEscortAcceptTimes() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set escortAcceptTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.escort_accept_times$field = param1;
      }
      
      public function get escortAcceptTimes() : uint
      {
         return this.escort_accept_times$field;
      }
      
      public function clearEscortFreeFreshTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.escort_free_fresh_times$field = new uint();
      }
      
      public function get hasEscortFreeFreshTimes() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set escortFreeFreshTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.escort_free_fresh_times$field = param1;
      }
      
      public function get escortFreeFreshTimes() : uint
      {
         return this.escort_free_fresh_times$field;
      }
      
      public function clearEscortRefreshTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.escort_refresh_time$field = new uint();
      }
      
      public function get hasEscortRefreshTime() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set escortRefreshTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.escort_refresh_time$field = param1;
      }
      
      public function get escortRefreshTime() : uint
      {
         return this.escort_refresh_time$field;
      }
      
      public function clearEscortFailTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.escort_fail_time$field = new uint();
      }
      
      public function get hasEscortFailTime() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set escortFailTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.escort_fail_time$field = param1;
      }
      
      public function get escortFailTime() : uint
      {
         return this.escort_fail_time$field;
      }
      
      public function clearEscortRealMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.escort_real_money$field = new uint();
      }
      
      public function get hasEscortRealMoney() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set escortRealMoney(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.escort_real_money$field = param1;
      }
      
      public function get escortRealMoney() : uint
      {
         return this.escort_real_money$field;
      }
      
      public function clearWantedTotalAcceptTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.wanted_total_accept_times$field = new uint();
      }
      
      public function get hasWantedTotalAcceptTimes() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set wantedTotalAcceptTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.wanted_total_accept_times$field = param1;
      }
      
      public function get wantedTotalAcceptTimes() : uint
      {
         return this.wanted_total_accept_times$field;
      }
      
      public function clearWantedAcceptTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.wanted_accept_times$field = new uint();
      }
      
      public function get hasWantedAcceptTimes() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set wantedAcceptTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.wanted_accept_times$field = param1;
      }
      
      public function get wantedAcceptTimes() : uint
      {
         return this.wanted_accept_times$field;
      }
      
      public function clearWantedTeamExpAddition() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.wanted_team_exp_addition$field = new uint();
      }
      
      public function get hasWantedTeamExpAddition() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set wantedTeamExpAddition(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.wanted_team_exp_addition$field = param1;
      }
      
      public function get wantedTeamExpAddition() : uint
      {
         return this.wanted_team_exp_addition$field;
      }
      
      public function clearEscortRealCoupon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.escort_real_coupon$field = new uint();
      }
      
      public function get hasEscortRealCoupon() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set escortRealCoupon(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.escort_real_coupon$field = param1;
      }
      
      public function get escortRealCoupon() : uint
      {
         return this.escort_real_coupon$field;
      }
      
      public function clearEscortSsFreeAcceptCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294950911E9;
         this.escort_ss_free_accept_count$field = new uint();
      }
      
      public function get hasEscortSsFreeAcceptCount() : Boolean
      {
         return (this.hasField$0 & 16384) != 0;
      }
      
      public function set escortSsFreeAcceptCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16384;
         this.escort_ss_free_accept_count$field = param1;
      }
      
      public function get escortSsFreeAcceptCount() : uint
      {
         return this.escort_ss_free_accept_count$field;
      }
      
      public function clearEscortSsTotalFreeAcceptCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294934527E9;
         this.escort_ss_total_free_accept_count$field = new uint();
      }
      
      public function get hasEscortSsTotalFreeAcceptCount() : Boolean
      {
         return (this.hasField$0 & 32768) != 0;
      }
      
      public function set escortSsTotalFreeAcceptCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32768;
         this.escort_ss_total_free_accept_count$field = param1;
      }
      
      public function get escortSsTotalFreeAcceptCount() : uint
      {
         return this.escort_ss_total_free_accept_count$field;
      }
      
      public function clearZhenBaoAddition() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294901759E9;
         this.zhen_bao_addition$field = new uint();
      }
      
      public function get hasZhenBaoAddition() : Boolean
      {
         return (this.hasField$0 & 65536) != 0;
      }
      
      public function set zhenBaoAddition(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 65536;
         this.zhen_bao_addition$field = param1;
      }
      
      public function get zhenBaoAddition() : uint
      {
         return this.zhen_bao_addition$field;
      }
      
      public function clearEscortRealContri() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294836223E9;
         this.escort_real_contri$field = new uint();
      }
      
      public function get hasEscortRealContri() : Boolean
      {
         return (this.hasField$0 & 131072) != 0;
      }
      
      public function set escortRealContri(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 131072;
         this.escort_real_contri$field = param1;
      }
      
      public function get escortRealContri() : uint
      {
         return this.escort_real_contri$field;
      }
      
      public function clearWeeklyRefreshTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294705151E9;
         this.weekly_refresh_time$field = new uint();
      }
      
      public function get hasWeeklyRefreshTime() : Boolean
      {
         return (this.hasField$0 & 262144) != 0;
      }
      
      public function set weeklyRefreshTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 262144;
         this.weekly_refresh_time$field = param1;
      }
      
      public function get weeklyRefreshTime() : uint
      {
         return this.weekly_refresh_time$field;
      }
      
      public function clearWeeklyTaskFinishCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294443007E9;
         this.weekly_task_finish_count$field = new uint();
      }
      
      public function get hasWeeklyTaskFinishCount() : Boolean
      {
         return (this.hasField$0 & 524288) != 0;
      }
      
      public function set weeklyTaskFinishCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 524288;
         this.weekly_task_finish_count$field = param1;
      }
      
      public function get weeklyTaskFinishCount() : uint
      {
         return this.weekly_task_finish_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasDailyTaskTotalTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.daily_task_total_times$field);
         }
         if(this.hasDailyTaskCompleteTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.daily_task_complete_times$field);
         }
         if(this.hasPracticeTotalAcceptTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.practice_total_accept_times$field);
         }
         if(this.hasPracticeAcceptTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.practice_accept_times$field);
         }
         if(this.hasEscortTotalAcceptTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.escort_total_accept_times$field);
         }
         if(this.hasEscortAcceptTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.escort_accept_times$field);
         }
         if(this.hasEscortFreeFreshTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.escort_free_fresh_times$field);
         }
         if(this.hasEscortRefreshTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.escort_refresh_time$field);
         }
         if(this.hasEscortFailTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.escort_fail_time$field);
         }
         if(this.hasEscortRealMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.escort_real_money$field);
         }
         if(this.hasWantedTotalAcceptTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.wanted_total_accept_times$field);
         }
         if(this.hasWantedAcceptTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.wanted_accept_times$field);
         }
         if(this.hasWantedTeamExpAddition)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT32(param1,this.wanted_team_exp_addition$field);
         }
         if(this.hasEscortRealCoupon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_UINT32(param1,this.escort_real_coupon$field);
         }
         if(this.hasEscortSsFreeAcceptCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_UINT32(param1,this.escort_ss_free_accept_count$field);
         }
         if(this.hasEscortSsTotalFreeAcceptCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_UINT32(param1,this.escort_ss_total_free_accept_count$field);
         }
         if(this.hasZhenBaoAddition)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,17);
            WriteUtils.write$TYPE_UINT32(param1,this.zhen_bao_addition$field);
         }
         if(this.hasEscortRealContri)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,18);
            WriteUtils.write$TYPE_UINT32(param1,this.escort_real_contri$field);
         }
         if(this.hasWeeklyRefreshTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,19);
            WriteUtils.write$TYPE_UINT32(param1,this.weekly_refresh_time$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.activeAwardStat.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,20);
            WriteUtils.write$TYPE_UINT32(param1,this.activeAwardStat[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.awardPackageId.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,21);
            WriteUtils.write$TYPE_UINT32(param1,this.awardPackageId[_loc3_]);
            _loc3_++;
         }
         if(this.hasWeeklyTaskFinishCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,22);
            WriteUtils.write$TYPE_UINT32(param1,this.weekly_task_finish_count$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 22, Size: 22)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
