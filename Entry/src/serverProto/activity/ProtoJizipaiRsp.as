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
   
   public final class ProtoJizipaiRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoJizipaiRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.activity_end_time","activityEndTime",2 << 3 | WireType.VARINT);
      
      public static const EXCHANGE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.exchange_end_time","exchangeEndTime",3 << 3 | WireType.VARINT);
      
      public static const TOTAL_ITEM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.total_item","totalItem",4 << 3 | WireType.VARINT);
      
      public static const JIZIPAI_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.jizipai_score","jizipaiScore",5 << 3 | WireType.VARINT);
      
      public static const JIZIPAI_NUM:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.jizipai_num","jizipaiNum",6 << 3 | WireType.VARINT);
      
      public static const EXCHANGES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoJizipaiRsp.exchanges","exchanges",7 << 3 | WireType.LENGTH_DELIMITED,ProtoJizipaiExchange);
      
      public static const FREE_REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.free_remain_time","freeRemainTime",8 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var activity_end_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var exchange_end_time$field:uint;
      
      private var total_item$field:uint;
      
      private var jizipai_score$field:uint;
      
      [ArrayElementType("uint")]
      public var jizipaiNum:Array;
      
      [ArrayElementType("serverProto.activity.ProtoJizipaiExchange")]
      public var exchanges:Array;
      
      private var free_remain_time$field:uint;
      
      public function ProtoJizipaiRsp()
      {
         this.jizipaiNum = [];
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
      
      public function clearJizipaiScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.jizipai_score$field = new uint();
      }
      
      public function get hasJizipaiScore() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set jizipaiScore(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.jizipai_score$field = param1;
      }
      
      public function get jizipaiScore() : uint
      {
         return this.jizipai_score$field;
      }
      
      public function clearFreeRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.free_remain_time$field = new uint();
      }
      
      public function get hasFreeRemainTime() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set freeRemainTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.free_remain_time$field = param1;
      }
      
      public function get freeRemainTime() : uint
      {
         return this.free_remain_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
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
         if(this.hasJizipaiScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.jizipai_score$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.jizipaiNum.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.jizipaiNum[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.exchanges.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.exchanges[_loc3_]);
            _loc3_++;
         }
         if(this.hasFreeRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.free_remain_time$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
