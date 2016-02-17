package serverProto.activity
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
   
   public final class ProtoPlayerRecallRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoPlayerRecallRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.activity_begin_time","activityBeginTime",2 << 3 | WireType.VARINT);
      
      public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.activity_end_time","activityEndTime",3 << 3 | WireType.VARINT);
      
      public static const AWARD_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.award_end_time","awardEndTime",4 << 3 | WireType.VARINT);
      
      public static const HISTORY_RECHARGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.history_recharge","historyRecharge",5 << 3 | WireType.VARINT);
      
      public static const HISTORY_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.history_level","historyLevel",6 << 3 | WireType.VARINT);
      
      public static const MONEY_COUPE_REBATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoPlayerRecallRsp.money_coupe_rebate","moneyCoupeRebate",7 << 3 | WireType.VARINT);
      
      public static const LOGIN_AWARD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoPlayerRecallRsp.login_award_info","loginAwardInfo",8 << 3 | WireType.LENGTH_DELIMITED,AwardInfo);
      
      public static const HISTORY_RECHARGE_AWARD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoPlayerRecallRsp.history_recharge_award_info","historyRechargeAwardInfo",9 << 3 | WireType.LENGTH_DELIMITED,AwardInfo);
      
      public static const HISTORY_LEVEL_AWARD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoPlayerRecallRsp.history_level_award_info","historyLevelAwardInfo",10 << 3 | WireType.LENGTH_DELIMITED,AwardInfo);
       
      private var ret$field:ProtoRetInfo;
      
      private var activity_begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var activity_end_time$field:uint;
      
      private var award_end_time$field:uint;
      
      private var history_recharge$field:uint;
      
      private var history_level$field:uint;
      
      private var money_coupe_rebate$field:uint;
      
      private var login_award_info$field:serverProto.activity.AwardInfo;
      
      private var history_recharge_award_info$field:serverProto.activity.AwardInfo;
      
      private var history_level_award_info$field:serverProto.activity.AwardInfo;
      
      public function ProtoPlayerRecallRsp()
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
      
      public function clearActivityBeginTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.activity_begin_time$field = new uint();
      }
      
      public function get hasActivityBeginTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set activityBeginTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.activity_begin_time$field = param1;
      }
      
      public function get activityBeginTime() : uint
      {
         return this.activity_begin_time$field;
      }
      
      public function clearActivityEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.activity_end_time$field = new uint();
      }
      
      public function get hasActivityEndTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set activityEndTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.activity_end_time$field = param1;
      }
      
      public function get activityEndTime() : uint
      {
         return this.activity_end_time$field;
      }
      
      public function clearAwardEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.award_end_time$field = new uint();
      }
      
      public function get hasAwardEndTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set awardEndTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.award_end_time$field = param1;
      }
      
      public function get awardEndTime() : uint
      {
         return this.award_end_time$field;
      }
      
      public function clearHistoryRecharge() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.history_recharge$field = new uint();
      }
      
      public function get hasHistoryRecharge() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set historyRecharge(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.history_recharge$field = param1;
      }
      
      public function get historyRecharge() : uint
      {
         return this.history_recharge$field;
      }
      
      public function clearHistoryLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.history_level$field = new uint();
      }
      
      public function get hasHistoryLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set historyLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.history_level$field = param1;
      }
      
      public function get historyLevel() : uint
      {
         return this.history_level$field;
      }
      
      public function clearMoneyCoupeRebate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.money_coupe_rebate$field = new uint();
      }
      
      public function get hasMoneyCoupeRebate() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set moneyCoupeRebate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.money_coupe_rebate$field = param1;
      }
      
      public function get moneyCoupeRebate() : uint
      {
         return this.money_coupe_rebate$field;
      }
      
      public function clearLoginAwardInfo() : void
      {
         this.login_award_info$field = null;
      }
      
      public function get hasLoginAwardInfo() : Boolean
      {
         return this.login_award_info$field != null;
      }
      
      public function set loginAwardInfo(param1:serverProto.activity.AwardInfo) : void
      {
         this.login_award_info$field = param1;
      }
      
      public function get loginAwardInfo() : serverProto.activity.AwardInfo
      {
         return this.login_award_info$field;
      }
      
      public function clearHistoryRechargeAwardInfo() : void
      {
         this.history_recharge_award_info$field = null;
      }
      
      public function get hasHistoryRechargeAwardInfo() : Boolean
      {
         return this.history_recharge_award_info$field != null;
      }
      
      public function set historyRechargeAwardInfo(param1:serverProto.activity.AwardInfo) : void
      {
         this.history_recharge_award_info$field = param1;
      }
      
      public function get historyRechargeAwardInfo() : serverProto.activity.AwardInfo
      {
         return this.history_recharge_award_info$field;
      }
      
      public function clearHistoryLevelAwardInfo() : void
      {
         this.history_level_award_info$field = null;
      }
      
      public function get hasHistoryLevelAwardInfo() : Boolean
      {
         return this.history_level_award_info$field != null;
      }
      
      public function set historyLevelAwardInfo(param1:serverProto.activity.AwardInfo) : void
      {
         this.history_level_award_info$field = param1;
      }
      
      public function get historyLevelAwardInfo() : serverProto.activity.AwardInfo
      {
         return this.history_level_award_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasActivityBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.activity_begin_time$field);
         }
         if(this.hasActivityEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.activity_end_time$field);
         }
         if(this.hasAwardEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.award_end_time$field);
         }
         if(this.hasHistoryRecharge)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.history_recharge$field);
         }
         if(this.hasHistoryLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.history_level$field);
         }
         if(this.hasMoneyCoupeRebate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.money_coupe_rebate$field);
         }
         if(this.hasLoginAwardInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.login_award_info$field);
         }
         if(this.hasHistoryRechargeAwardInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.history_recharge_award_info$field);
         }
         if(this.hasHistoryLevelAwardInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.history_level_award_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
