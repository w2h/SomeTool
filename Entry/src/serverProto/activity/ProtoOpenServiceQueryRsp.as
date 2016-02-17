package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoOpenServiceQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TAB_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceQueryRsp.tab_idx","tabIdx",2 << 3 | WireType.VARINT);
      
      public static const TAB_STATUS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceQueryRsp.tab_status","tabStatus",3 << 3 | WireType.VARINT);
      
      public static const CONSUME_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceQueryRsp.consume_data","consumeData",4 << 3 | WireType.LENGTH_DELIMITED,ProtoOpenServiceConsumeData);
      
      public static const UPGRADE_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceQueryRsp.upgrade_data","upgradeData",5 << 3 | WireType.LENGTH_DELIMITED,ProtoOpenServiceUpgradeData);
      
      public static const RECHARGE_RANK_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceQueryRsp.recharge_rank_data","rechargeRankData",6 << 3 | WireType.LENGTH_DELIMITED,ProtoOpenServiceRechargeRankData);
      
      public static const COMBAT_RANK_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceQueryRsp.combat_rank_data","combatRankData",7 << 3 | WireType.LENGTH_DELIMITED,ProtoOpenServiceCombatRankData);
      
      public static const DEADLINE_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceQueryRsp.deadline_time","deadlineTime",8 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var tab_idx$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("uint")]
      public var tabStatus:Array;
      
      private var consume_data$field:serverProto.activity.ProtoOpenServiceConsumeData;
      
      private var upgrade_data$field:serverProto.activity.ProtoOpenServiceUpgradeData;
      
      private var recharge_rank_data$field:serverProto.activity.ProtoOpenServiceRechargeRankData;
      
      private var combat_rank_data$field:serverProto.activity.ProtoOpenServiceCombatRankData;
      
      private var deadline_time$field:uint;
      
      public function ProtoOpenServiceQueryRsp()
      {
         this.tabStatus = [];
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
      
      public function clearConsumeData() : void
      {
         this.consume_data$field = null;
      }
      
      public function get hasConsumeData() : Boolean
      {
         return this.consume_data$field != null;
      }
      
      public function set consumeData(param1:serverProto.activity.ProtoOpenServiceConsumeData) : void
      {
         this.consume_data$field = param1;
      }
      
      public function get consumeData() : serverProto.activity.ProtoOpenServiceConsumeData
      {
         return this.consume_data$field;
      }
      
      public function clearUpgradeData() : void
      {
         this.upgrade_data$field = null;
      }
      
      public function get hasUpgradeData() : Boolean
      {
         return this.upgrade_data$field != null;
      }
      
      public function set upgradeData(param1:serverProto.activity.ProtoOpenServiceUpgradeData) : void
      {
         this.upgrade_data$field = param1;
      }
      
      public function get upgradeData() : serverProto.activity.ProtoOpenServiceUpgradeData
      {
         return this.upgrade_data$field;
      }
      
      public function clearRechargeRankData() : void
      {
         this.recharge_rank_data$field = null;
      }
      
      public function get hasRechargeRankData() : Boolean
      {
         return this.recharge_rank_data$field != null;
      }
      
      public function set rechargeRankData(param1:serverProto.activity.ProtoOpenServiceRechargeRankData) : void
      {
         this.recharge_rank_data$field = param1;
      }
      
      public function get rechargeRankData() : serverProto.activity.ProtoOpenServiceRechargeRankData
      {
         return this.recharge_rank_data$field;
      }
      
      public function clearCombatRankData() : void
      {
         this.combat_rank_data$field = null;
      }
      
      public function get hasCombatRankData() : Boolean
      {
         return this.combat_rank_data$field != null;
      }
      
      public function set combatRankData(param1:serverProto.activity.ProtoOpenServiceCombatRankData) : void
      {
         this.combat_rank_data$field = param1;
      }
      
      public function get combatRankData() : serverProto.activity.ProtoOpenServiceCombatRankData
      {
         return this.combat_rank_data$field;
      }
      
      public function clearDeadlineTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.deadline_time$field = new uint();
      }
      
      public function get hasDeadlineTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set deadlineTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.deadline_time$field = param1;
      }
      
      public function get deadlineTime() : uint
      {
         return this.deadline_time$field;
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
         var _loc2_:uint = 0;
         while(_loc2_ < this.tabStatus.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.tabStatus[_loc2_]);
            _loc2_++;
         }
         if(this.hasConsumeData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.consume_data$field);
         }
         if(this.hasUpgradeData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.upgrade_data$field);
         }
         if(this.hasRechargeRankData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.recharge_rank_data$field);
         }
         if(this.hasCombatRankData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.combat_rank_data$field);
         }
         if(this.hasDeadlineTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.deadline_time$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
