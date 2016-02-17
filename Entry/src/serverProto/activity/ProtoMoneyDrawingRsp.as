package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMoneyDrawingRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMoneyDrawingRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.activity_begin_time","activityBeginTime",2 << 3 | WireType.VARINT);
      
      public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.activity_end_time","activityEndTime",3 << 3 | WireType.VARINT);
      
      public static const AWARD_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.award_end_time","awardEndTime",4 << 3 | WireType.VARINT);
      
      public static const CRITICAL_STRIKE_NUM:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.critical_strike_num","criticalStrikeNum",5 << 3 | WireType.VARINT);
      
      public static const USED_MONEY_GOLD_INGOT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.used_money_gold_ingot","usedMoneyGoldIngot",6 << 3 | WireType.VARINT);
      
      public static const GOT_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.got_money","gotMoney",7 << 3 | WireType.VARINT);
      
      public static const MONEY_DRAWING_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.money_drawing_times","moneyDrawingTimes",8 << 3 | WireType.VARINT);
      
      public static const AWARD_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMoneyDrawingRsp.award_info","awardInfo",9 << 3 | WireType.LENGTH_DELIMITED,ProtoMoneyDrawingAwardInfo);
       
      private var ret$field:ProtoRetInfo;
      
      private var activity_begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var activity_end_time$field:uint;
      
      private var award_end_time$field:uint;
      
      [ArrayElementType("uint")]
      public var criticalStrikeNum:Array;
      
      private var used_money_gold_ingot$field:uint;
      
      private var got_money$field:uint;
      
      private var money_drawing_times$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoMoneyDrawingAwardInfo")]
      public var awardInfo:Array;
      
      public function ProtoMoneyDrawingRsp()
      {
         this.criticalStrikeNum = [];
         this.awardInfo = [];
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
      
      public function clearUsedMoneyGoldIngot() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.used_money_gold_ingot$field = new uint();
      }
      
      public function get hasUsedMoneyGoldIngot() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set usedMoneyGoldIngot(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.used_money_gold_ingot$field = param1;
      }
      
      public function get usedMoneyGoldIngot() : uint
      {
         return this.used_money_gold_ingot$field;
      }
      
      public function clearGotMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.got_money$field = new uint();
      }
      
      public function get hasGotMoney() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set gotMoney(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.got_money$field = param1;
      }
      
      public function get gotMoney() : uint
      {
         return this.got_money$field;
      }
      
      public function clearMoneyDrawingTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.money_drawing_times$field = new uint();
      }
      
      public function get hasMoneyDrawingTimes() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set moneyDrawingTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.money_drawing_times$field = param1;
      }
      
      public function get moneyDrawingTimes() : uint
      {
         return this.money_drawing_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
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
         var _loc2_:uint = 0;
         while(_loc2_ < this.criticalStrikeNum.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.criticalStrikeNum[_loc2_]);
            _loc2_++;
         }
         if(this.hasUsedMoneyGoldIngot)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.used_money_gold_ingot$field);
         }
         if(this.hasGotMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.got_money$field);
         }
         if(this.hasMoneyDrawingTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.money_drawing_times$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.awardInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.awardInfo[_loc3_]);
            _loc3_++;
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
