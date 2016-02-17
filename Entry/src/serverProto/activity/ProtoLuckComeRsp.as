package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoLuckComeRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckComeRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.activity_begin_time","activityBeginTime",2 << 3 | WireType.VARINT);
      
      public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.activity_end_time","activityEndTime",3 << 3 | WireType.VARINT);
      
      public static const EXCHANGE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.exchange_end_time","exchangeEndTime",4 << 3 | WireType.VARINT);
      
      public static const FREE_OPEN_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.free_open_num","freeOpenNum",5 << 3 | WireType.VARINT);
      
      public static const STAR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.star","star",6 << 3 | WireType.VARINT);
      
      public static const ROULETTE_ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckComeRsp.roulette_item","rouletteItem",7 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const GOT_ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckComeRsp.got_item","gotItem",8 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const HISTORY_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckComeRsp.history_award","historyAward",9 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const EXCHANGES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckComeRsp.exchanges","exchanges",10 << 3 | WireType.LENGTH_DELIMITED,ProtoLuckComeExchangeInfo);
      
      public static const DAILY_OWN_OPEN_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.daily_own_open_num","dailyOwnOpenNum",11 << 3 | WireType.VARINT);
      
      public static const DAILY_USED_OPEN_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.daily_used_open_num","dailyUsedOpenNum",12 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var activity_begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var activity_end_time$field:uint;
      
      private var exchange_end_time$field:uint;
      
      private var free_open_num$field:uint;
      
      private var star$field:uint;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var rouletteItem:Array;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var gotItem:Array;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var historyAward:Array;
      
      [ArrayElementType("serverProto.activity.ProtoLuckComeExchangeInfo")]
      public var exchanges:Array;
      
      private var daily_own_open_num$field:uint;
      
      private var daily_used_open_num$field:uint;
      
      public function ProtoLuckComeRsp()
      {
         this.rouletteItem = [];
         this.gotItem = [];
         this.historyAward = [];
         this.exchanges = [];
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
      
      public function clearExchangeEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.exchange_end_time$field = new uint();
      }
      
      public function get hasExchangeEndTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set exchangeEndTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.exchange_end_time$field = param1;
      }
      
      public function get exchangeEndTime() : uint
      {
         return this.exchange_end_time$field;
      }
      
      public function clearFreeOpenNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.free_open_num$field = new uint();
      }
      
      public function get hasFreeOpenNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set freeOpenNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.free_open_num$field = param1;
      }
      
      public function get freeOpenNum() : uint
      {
         return this.free_open_num$field;
      }
      
      public function clearStar() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.star$field = new uint();
      }
      
      public function get hasStar() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set star(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.star$field = param1;
      }
      
      public function get star() : uint
      {
         return this.star$field;
      }
      
      public function clearDailyOwnOpenNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.daily_own_open_num$field = new uint();
      }
      
      public function get hasDailyOwnOpenNum() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set dailyOwnOpenNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.daily_own_open_num$field = param1;
      }
      
      public function get dailyOwnOpenNum() : uint
      {
         return this.daily_own_open_num$field;
      }
      
      public function clearDailyUsedOpenNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.daily_used_open_num$field = new uint();
      }
      
      public function get hasDailyUsedOpenNum() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set dailyUsedOpenNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.daily_used_open_num$field = param1;
      }
      
      public function get dailyUsedOpenNum() : uint
      {
         return this.daily_used_open_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc6_:* = undefined;
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
         if(this.hasExchangeEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.exchange_end_time$field);
         }
         if(this.hasFreeOpenNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.free_open_num$field);
         }
         if(this.hasStar)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.star$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.rouletteItem.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rouletteItem[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.gotItem.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.gotItem[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.historyAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.historyAward[_loc4_]);
            _loc4_++;
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.exchanges.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.exchanges[_loc5_]);
            _loc5_++;
         }
         if(this.hasDailyOwnOpenNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.daily_own_open_num$field);
         }
         if(this.hasDailyUsedOpenNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.daily_used_open_num$field);
         }
         for(_loc6_ in this)
         {
            super.writeUnknown(param1,_loc6_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
