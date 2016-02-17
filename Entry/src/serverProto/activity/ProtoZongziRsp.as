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
   
   public final class ProtoZongziRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoZongziRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.activity_begin_time","activityBeginTime",2 << 3 | WireType.VARINT);
      
      public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.activity_end_time","activityEndTime",3 << 3 | WireType.VARINT);
      
      public static const EXCHANGE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.exchange_end_time","exchangeEndTime",4 << 3 | WireType.VARINT);
      
      public static const CONSUME_GOLD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.consume_gold","consumeGold",5 << 3 | WireType.VARINT);
      
      public static const RICE_ZONGZI_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.rice_zongzi_count","riceZongziCount",6 << 3 | WireType.VARINT);
      
      public static const MEAT_ZONGZI_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.meat_zongzi_count","meatZongziCount",7 << 3 | WireType.VARINT);
      
      public static const FREE_REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.free_remain_time","freeRemainTime",8 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.score","score",9 << 3 | WireType.VARINT);
      
      public static const EXCHANGES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoZongziRsp.exchanges","exchanges",10 << 3 | WireType.LENGTH_DELIMITED,ProtoZongziExchange);
       
      private var ret$field:ProtoRetInfo;
      
      private var activity_begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var activity_end_time$field:uint;
      
      private var exchange_end_time$field:uint;
      
      private var consume_gold$field:uint;
      
      private var rice_zongzi_count$field:uint;
      
      private var meat_zongzi_count$field:uint;
      
      private var free_remain_time$field:uint;
      
      private var score$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoZongziExchange")]
      public var exchanges:Array;
      
      public function ProtoZongziRsp()
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
      
      public function clearConsumeGold() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.consume_gold$field = new uint();
      }
      
      public function get hasConsumeGold() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set consumeGold(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.consume_gold$field = param1;
      }
      
      public function get consumeGold() : uint
      {
         return this.consume_gold$field;
      }
      
      public function clearRiceZongziCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.rice_zongzi_count$field = new uint();
      }
      
      public function get hasRiceZongziCount() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set riceZongziCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.rice_zongzi_count$field = param1;
      }
      
      public function get riceZongziCount() : uint
      {
         return this.rice_zongzi_count$field;
      }
      
      public function clearMeatZongziCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.meat_zongzi_count$field = new uint();
      }
      
      public function get hasMeatZongziCount() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set meatZongziCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.meat_zongzi_count$field = param1;
      }
      
      public function get meatZongziCount() : uint
      {
         return this.meat_zongzi_count$field;
      }
      
      public function clearFreeRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.free_remain_time$field = new uint();
      }
      
      public function get hasFreeRemainTime() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set freeRemainTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.free_remain_time$field = param1;
      }
      
      public function get freeRemainTime() : uint
      {
         return this.free_remain_time$field;
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.score$field = new uint();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set score(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.score$field = param1;
      }
      
      public function get score() : uint
      {
         return this.score$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
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
         if(this.hasConsumeGold)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.consume_gold$field);
         }
         if(this.hasRiceZongziCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.rice_zongzi_count$field);
         }
         if(this.hasMeatZongziCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.meat_zongzi_count$field);
         }
         if(this.hasFreeRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.free_remain_time$field);
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.score$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.exchanges.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.exchanges[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
