package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNewYearNinjaQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewYearNinjaQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearNinjaQueryRsp.activity_end_time","activityEndTime",2 << 3 | WireType.VARINT);
      
      public static const EXCHANGE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearNinjaQueryRsp.exchange_end_time","exchangeEndTime",3 << 3 | WireType.VARINT);
      
      public static const TOTAL_ITEM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearNinjaQueryRsp.total_item","totalItem",4 << 3 | WireType.VARINT);
      
      public static const TOTAL_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearNinjaQueryRsp.total_score","totalScore",5 << 3 | WireType.VARINT);
      
      public static const EXCHANGES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewYearNinjaQueryRsp.exchanges","exchanges",6 << 3 | WireType.LENGTH_DELIMITED,ProtoNewYearNinjaExchange);
      
      public static const FREE_REMIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearNinjaQueryRsp.free_remin_time","freeReminTime",7 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var activity_end_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var exchange_end_time$field:uint;
      
      private var total_item$field:uint;
      
      private var total_score$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoNewYearNinjaExchange")]
      public var exchanges:Array;
      
      private var free_remin_time$field:uint;
      
      public function ProtoNewYearNinjaQueryRsp()
      {
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
      
      public function clearActivityEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.activity_end_time$field = new uint();
      }
      
      public function get hasActivityEndTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set activityEndTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.activity_end_time$field = param1;
      }
      
      public function get activityEndTime() : uint
      {
         return this.activity_end_time$field;
      }
      
      public function clearExchangeEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.exchange_end_time$field = new uint();
      }
      
      public function get hasExchangeEndTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set exchangeEndTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.exchange_end_time$field = param1;
      }
      
      public function get exchangeEndTime() : uint
      {
         return this.exchange_end_time$field;
      }
      
      public function clearTotalItem() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.total_item$field = new uint();
      }
      
      public function get hasTotalItem() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set totalItem(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.total_item$field = param1;
      }
      
      public function get totalItem() : uint
      {
         return this.total_item$field;
      }
      
      public function clearTotalScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.total_score$field = new uint();
      }
      
      public function get hasTotalScore() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set totalScore(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.total_score$field = param1;
      }
      
      public function get totalScore() : uint
      {
         return this.total_score$field;
      }
      
      public function clearFreeReminTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.free_remin_time$field = new uint();
      }
      
      public function get hasFreeReminTime() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set freeReminTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.free_remin_time$field = param1;
      }
      
      public function get freeReminTime() : uint
      {
         return this.free_remin_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasActivityEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.activity_end_time$field);
         }
         if(this.hasExchangeEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.exchange_end_time$field);
         }
         if(this.hasTotalItem)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.total_item$field);
         }
         if(this.hasTotalScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.total_score$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.exchanges.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.exchanges[_loc2_]);
            _loc2_++;
         }
         if(this.hasFreeReminTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.free_remin_time$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
