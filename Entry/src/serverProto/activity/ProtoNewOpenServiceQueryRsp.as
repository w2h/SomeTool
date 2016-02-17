package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNewOpenServiceQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TAB_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewOpenServiceQueryRsp.tab_idx","tabIdx",2 << 3 | WireType.VARINT);
      
      public static const FIRST_OPEN_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.activity.ProtoNewOpenServiceQueryRsp.first_open_flag","firstOpenFlag",3 << 3 | WireType.VARINT);
      
      public static const TABS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceQueryRsp.tabs","tabs",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNewOpenServiceTab);
      
      public static const RECHARGE_GIFT_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceQueryRsp.recharge_gift_data","rechargeGiftData",5 << 3 | WireType.LENGTH_DELIMITED,ProtoNewOpenServiceGiftData);
      
      public static const CONSUME_GIFT_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceQueryRsp.consume_gift_data","consumeGiftData",6 << 3 | WireType.LENGTH_DELIMITED,ProtoNewOpenServiceGiftData);
      
      public static const RECHARGE_RANK_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceQueryRsp.recharge_rank_data","rechargeRankData",7 << 3 | WireType.LENGTH_DELIMITED,ProtoNewOpenServiceRankData);
      
      public static const POWER_RANK_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceQueryRsp.power_rank_data","powerRankData",8 << 3 | WireType.LENGTH_DELIMITED,ProtoNewOpenServiceRankData);
      
      public static const UPGRADE_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceQueryRsp.upgrade_data","upgradeData",9 << 3 | WireType.LENGTH_DELIMITED,ProtoNewOpenServiceUpgradeData);
      
      public static const DAILY_RECHARGE_GIFT_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceQueryRsp.daily_recharge_gift_data","dailyRechargeGiftData",10 << 3 | WireType.LENGTH_DELIMITED,ProtoNewOpenServiceGiftData);
      
      public static const DAILY_CONSUME_GIFT_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewOpenServiceQueryRsp.daily_consume_gift_data","dailyConsumeGiftData",11 << 3 | WireType.LENGTH_DELIMITED,ProtoNewOpenServiceGiftData);
       
      private var ret$field:ProtoRetInfo;
      
      private var tab_idx$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var first_open_flag$field:Boolean;
      
      [ArrayElementType("serverProto.activity.ProtoNewOpenServiceTab")]
      public var tabs:Array;
      
      private var recharge_gift_data$field:serverProto.activity.ProtoNewOpenServiceGiftData;
      
      private var consume_gift_data$field:serverProto.activity.ProtoNewOpenServiceGiftData;
      
      private var recharge_rank_data$field:serverProto.activity.ProtoNewOpenServiceRankData;
      
      private var power_rank_data$field:serverProto.activity.ProtoNewOpenServiceRankData;
      
      private var upgrade_data$field:serverProto.activity.ProtoNewOpenServiceUpgradeData;
      
      private var daily_recharge_gift_data$field:serverProto.activity.ProtoNewOpenServiceGiftData;
      
      private var daily_consume_gift_data$field:serverProto.activity.ProtoNewOpenServiceGiftData;
      
      public function ProtoNewOpenServiceQueryRsp()
      {
         this.tabs = [];
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
      
      public function clearTabIdx() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.tab_idx$field = new uint();
      }
      
      public function get hasTabIdx() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set tabIdx(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.tab_idx$field = param1;
      }
      
      public function get tabIdx() : uint
      {
         return this.tab_idx$field;
      }
      
      public function clearFirstOpenFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.first_open_flag$field = new Boolean();
      }
      
      public function get hasFirstOpenFlag() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set firstOpenFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.first_open_flag$field = param1;
      }
      
      public function get firstOpenFlag() : Boolean
      {
         return this.first_open_flag$field;
      }
      
      public function clearRechargeGiftData() : void
      {
         this.recharge_gift_data$field = null;
      }
      
      public function get hasRechargeGiftData() : Boolean
      {
         return this.recharge_gift_data$field != null;
      }
      
      public function set rechargeGiftData(param1:serverProto.activity.ProtoNewOpenServiceGiftData) : void
      {
         this.recharge_gift_data$field = param1;
      }
      
      public function get rechargeGiftData() : serverProto.activity.ProtoNewOpenServiceGiftData
      {
         return this.recharge_gift_data$field;
      }
      
      public function clearConsumeGiftData() : void
      {
         this.consume_gift_data$field = null;
      }
      
      public function get hasConsumeGiftData() : Boolean
      {
         return this.consume_gift_data$field != null;
      }
      
      public function set consumeGiftData(param1:serverProto.activity.ProtoNewOpenServiceGiftData) : void
      {
         this.consume_gift_data$field = param1;
      }
      
      public function get consumeGiftData() : serverProto.activity.ProtoNewOpenServiceGiftData
      {
         return this.consume_gift_data$field;
      }
      
      public function clearRechargeRankData() : void
      {
         this.recharge_rank_data$field = null;
      }
      
      public function get hasRechargeRankData() : Boolean
      {
         return this.recharge_rank_data$field != null;
      }
      
      public function set rechargeRankData(param1:serverProto.activity.ProtoNewOpenServiceRankData) : void
      {
         this.recharge_rank_data$field = param1;
      }
      
      public function get rechargeRankData() : serverProto.activity.ProtoNewOpenServiceRankData
      {
         return this.recharge_rank_data$field;
      }
      
      public function clearPowerRankData() : void
      {
         this.power_rank_data$field = null;
      }
      
      public function get hasPowerRankData() : Boolean
      {
         return this.power_rank_data$field != null;
      }
      
      public function set powerRankData(param1:serverProto.activity.ProtoNewOpenServiceRankData) : void
      {
         this.power_rank_data$field = param1;
      }
      
      public function get powerRankData() : serverProto.activity.ProtoNewOpenServiceRankData
      {
         return this.power_rank_data$field;
      }
      
      public function clearUpgradeData() : void
      {
         this.upgrade_data$field = null;
      }
      
      public function get hasUpgradeData() : Boolean
      {
         return this.upgrade_data$field != null;
      }
      
      public function set upgradeData(param1:serverProto.activity.ProtoNewOpenServiceUpgradeData) : void
      {
         this.upgrade_data$field = param1;
      }
      
      public function get upgradeData() : serverProto.activity.ProtoNewOpenServiceUpgradeData
      {
         return this.upgrade_data$field;
      }
      
      public function clearDailyRechargeGiftData() : void
      {
         this.daily_recharge_gift_data$field = null;
      }
      
      public function get hasDailyRechargeGiftData() : Boolean
      {
         return this.daily_recharge_gift_data$field != null;
      }
      
      public function set dailyRechargeGiftData(param1:serverProto.activity.ProtoNewOpenServiceGiftData) : void
      {
         this.daily_recharge_gift_data$field = param1;
      }
      
      public function get dailyRechargeGiftData() : serverProto.activity.ProtoNewOpenServiceGiftData
      {
         return this.daily_recharge_gift_data$field;
      }
      
      public function clearDailyConsumeGiftData() : void
      {
         this.daily_consume_gift_data$field = null;
      }
      
      public function get hasDailyConsumeGiftData() : Boolean
      {
         return this.daily_consume_gift_data$field != null;
      }
      
      public function set dailyConsumeGiftData(param1:serverProto.activity.ProtoNewOpenServiceGiftData) : void
      {
         this.daily_consume_gift_data$field = param1;
      }
      
      public function get dailyConsumeGiftData() : serverProto.activity.ProtoNewOpenServiceGiftData
      {
         return this.daily_consume_gift_data$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasTabIdx)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.tab_idx$field);
         }
         if(this.hasFirstOpenFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.first_open_flag$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.tabs.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.tabs[_loc2_]);
            _loc2_++;
         }
         if(this.hasRechargeGiftData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.recharge_gift_data$field);
         }
         if(this.hasConsumeGiftData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.consume_gift_data$field);
         }
         if(this.hasRechargeRankData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.recharge_rank_data$field);
         }
         if(this.hasPowerRankData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.power_rank_data$field);
         }
         if(this.hasUpgradeData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.upgrade_data$field);
         }
         if(this.hasDailyRechargeGiftData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.daily_recharge_gift_data$field);
         }
         if(this.hasDailyConsumeGiftData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_MESSAGE(param1,this.daily_consume_gift_data$field);
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
