package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuoQingRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoGuoQingRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGuoQingRsp.activity_begin_time","activityBeginTime",2 << 3 | WireType.VARINT);
      
      public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGuoQingRsp.activity_end_time","activityEndTime",3 << 3 | WireType.VARINT);
      
      public static const BALLOON_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoGuoQingRsp.balloon_info","balloonInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoBalloonInfo);
      
      public static const SHURIKEN_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGuoQingRsp.shuriken_num","shurikenNum",5 << 3 | WireType.VARINT);
      
      public static const FREE_FRESH_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGuoQingRsp.free_fresh_count","freeFreshCount",6 << 3 | WireType.VARINT);
      
      public static const EXCHANGE_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoGuoQingRsp.exchange_info","exchangeInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoBoxExchangeInfo);
      
      public static const SCORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoGuoQingRsp.score","score",8 << 3 | WireType.VARINT);
      
      public static const USED_GOLD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGuoQingRsp.used_gold","usedGold",9 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var activity_begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var activity_end_time$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoBalloonInfo")]
      public var balloonInfo:Array;
      
      private var shuriken_num$field:uint;
      
      private var free_fresh_count$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoBoxExchangeInfo")]
      public var exchangeInfo:Array;
      
      private var score$field:int;
      
      private var used_gold$field:uint;
      
      public function ProtoGuoQingRsp()
      {
         this.balloonInfo = [];
         this.exchangeInfo = [];
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
      
      public function clearShurikenNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.shuriken_num$field = new uint();
      }
      
      public function get hasShurikenNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set shurikenNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.shuriken_num$field = param1;
      }
      
      public function get shurikenNum() : uint
      {
         return this.shuriken_num$field;
      }
      
      public function clearFreeFreshCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.free_fresh_count$field = new uint();
      }
      
      public function get hasFreeFreshCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set freeFreshCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.free_fresh_count$field = param1;
      }
      
      public function get freeFreshCount() : uint
      {
         return this.free_fresh_count$field;
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.score$field = new int();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set score(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.score$field = param1;
      }
      
      public function get score() : int
      {
         return this.score$field;
      }
      
      public function clearUsedGold() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.used_gold$field = new uint();
      }
      
      public function get hasUsedGold() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set usedGold(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.used_gold$field = param1;
      }
      
      public function get usedGold() : uint
      {
         return this.used_gold$field;
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
         var _loc2_:uint = 0;
         while(_loc2_ < this.balloonInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.balloonInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasShurikenNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.shuriken_num$field);
         }
         if(this.hasFreeFreshCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.free_fresh_count$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.exchangeInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.exchangeInfo[_loc3_]);
            _loc3_++;
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.score$field);
         }
         if(this.hasUsedGold)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.used_gold$field);
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
