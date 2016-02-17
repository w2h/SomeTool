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
   
   public final class ProtoMergeServerQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TAB_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerQueryRsp.tab_idx","tabIdx",2 << 3 | WireType.VARINT);
      
      public static const TAB_STATUS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerQueryRsp.tab_status","tabStatus",3 << 3 | WireType.VARINT);
      
      public static const DEADLINE_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerQueryRsp.deadline_time","deadlineTime",4 << 3 | WireType.VARINT);
      
      public static const CUR_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerQueryRsp.cur_day","curDay",5 << 3 | WireType.VARINT);
      
      public static const RECHARGE_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerQueryRsp.recharge_data","rechargeData",6 << 3 | WireType.LENGTH_DELIMITED,ProtoMergeServerRechargeData);
      
      public static const BATTLE_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerQueryRsp.battle_data","battleData",7 << 3 | WireType.LENGTH_DELIMITED,ProtoMergeServerBattleRankData);
      
      public static const LOGIN_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerQueryRsp.login_data","loginData",8 << 3 | WireType.LENGTH_DELIMITED,ProtoMergeServerLoginData);
      
      public static const CONSUME_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerQueryRsp.consume_data","consumeData",9 << 3 | WireType.LENGTH_DELIMITED,ProtoMergeServerConsumeData);
       
      private var ret$field:ProtoRetInfo;
      
      private var tab_idx$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("uint")]
      public var tabStatus:Array;
      
      private var deadline_time$field:uint;
      
      private var cur_day$field:uint;
      
      private var recharge_data$field:serverProto.activity.ProtoMergeServerRechargeData;
      
      private var battle_data$field:serverProto.activity.ProtoMergeServerBattleRankData;
      
      private var login_data$field:serverProto.activity.ProtoMergeServerLoginData;
      
      private var consume_data$field:serverProto.activity.ProtoMergeServerConsumeData;
      
      public function ProtoMergeServerQueryRsp()
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
      
      public function clearCurDay() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.cur_day$field = new uint();
      }
      
      public function get hasCurDay() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set curDay(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.cur_day$field = param1;
      }
      
      public function get curDay() : uint
      {
         return this.cur_day$field;
      }
      
      public function clearRechargeData() : void
      {
         this.recharge_data$field = null;
      }
      
      public function get hasRechargeData() : Boolean
      {
         return this.recharge_data$field != null;
      }
      
      public function set rechargeData(param1:serverProto.activity.ProtoMergeServerRechargeData) : void
      {
         this.recharge_data$field = param1;
      }
      
      public function get rechargeData() : serverProto.activity.ProtoMergeServerRechargeData
      {
         return this.recharge_data$field;
      }
      
      public function clearBattleData() : void
      {
         this.battle_data$field = null;
      }
      
      public function get hasBattleData() : Boolean
      {
         return this.battle_data$field != null;
      }
      
      public function set battleData(param1:serverProto.activity.ProtoMergeServerBattleRankData) : void
      {
         this.battle_data$field = param1;
      }
      
      public function get battleData() : serverProto.activity.ProtoMergeServerBattleRankData
      {
         return this.battle_data$field;
      }
      
      public function clearLoginData() : void
      {
         this.login_data$field = null;
      }
      
      public function get hasLoginData() : Boolean
      {
         return this.login_data$field != null;
      }
      
      public function set loginData(param1:serverProto.activity.ProtoMergeServerLoginData) : void
      {
         this.login_data$field = param1;
      }
      
      public function get loginData() : serverProto.activity.ProtoMergeServerLoginData
      {
         return this.login_data$field;
      }
      
      public function clearConsumeData() : void
      {
         this.consume_data$field = null;
      }
      
      public function get hasConsumeData() : Boolean
      {
         return this.consume_data$field != null;
      }
      
      public function set consumeData(param1:serverProto.activity.ProtoMergeServerConsumeData) : void
      {
         this.consume_data$field = param1;
      }
      
      public function get consumeData() : serverProto.activity.ProtoMergeServerConsumeData
      {
         return this.consume_data$field;
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
         if(this.hasDeadlineTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.deadline_time$field);
         }
         if(this.hasCurDay)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.cur_day$field);
         }
         if(this.hasRechargeData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.recharge_data$field);
         }
         if(this.hasBattleData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.battle_data$field);
         }
         if(this.hasLoginData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.login_data$field);
         }
         if(this.hasConsumeData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.consume_data$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
