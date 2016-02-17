package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMidAutumnRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMidAutumnRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMidAutumnRsp.activity_begin_time","activityBeginTime",2 << 3 | WireType.VARINT);
      
      public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMidAutumnRsp.activity_end_time","activityEndTime",3 << 3 | WireType.VARINT);
      
      public static const LANTERN_STATE:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.activity.ProtoMidAutumnRsp.lantern_state","lanternState",4 << 3 | WireType.VARINT);
      
      public static const LANTERN_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMidAutumnRsp.lantern_num","lanternNum",5 << 3 | WireType.VARINT);
      
      public static const FREE_FRESH_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMidAutumnRsp.free_fresh_count","freeFreshCount",6 << 3 | WireType.VARINT);
      
      public static const MOON_COLOR:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoMidAutumnRsp.moon_color","moonColor",7 << 3 | WireType.VARINT);
      
      public static const NEXT_FRESH_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMidAutumnRsp.next_fresh_time","nextFreshTime",8 << 3 | WireType.VARINT);
      
      public static const EXCHANGE_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMidAutumnRsp.exchange_info","exchangeInfo",9 << 3 | WireType.LENGTH_DELIMITED,ProtoBoxExchangeInfo);
      
      public static const MOON_CAKE_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoMidAutumnRsp.moon_cake_num","moonCakeNum",10 << 3 | WireType.VARINT);
      
      public static const LIGHT_RESULT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoMidAutumnRsp.light_result","lightResult",11 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var activity_begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var activity_end_time$field:uint;
      
      [ArrayElementType("int")]
      public var lanternState:Array;
      
      private var lantern_num$field:uint;
      
      private var free_fresh_count$field:uint;
      
      private var moon_color$field:int;
      
      private var next_fresh_time$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoBoxExchangeInfo")]
      public var exchangeInfo:Array;
      
      private var moon_cake_num$field:int;
      
      private var light_result$field:int;
      
      public function ProtoMidAutumnRsp()
      {
         this.lanternState = [];
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
      
      public function clearLanternNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.lantern_num$field = new uint();
      }
      
      public function get hasLanternNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set lanternNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.lantern_num$field = param1;
      }
      
      public function get lanternNum() : uint
      {
         return this.lantern_num$field;
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
      
      public function clearMoonColor() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.moon_color$field = new int();
      }
      
      public function get hasMoonColor() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set moonColor(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.moon_color$field = param1;
      }
      
      public function get moonColor() : int
      {
         return this.moon_color$field;
      }
      
      public function clearNextFreshTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.next_fresh_time$field = new uint();
      }
      
      public function get hasNextFreshTime() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set nextFreshTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.next_fresh_time$field = param1;
      }
      
      public function get nextFreshTime() : uint
      {
         return this.next_fresh_time$field;
      }
      
      public function clearMoonCakeNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.moon_cake_num$field = new int();
      }
      
      public function get hasMoonCakeNum() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set moonCakeNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.moon_cake_num$field = param1;
      }
      
      public function get moonCakeNum() : int
      {
         return this.moon_cake_num$field;
      }
      
      public function clearLightResult() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.light_result$field = new int();
      }
      
      public function get hasLightResult() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set lightResult(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.light_result$field = param1;
      }
      
      public function get lightResult() : int
      {
         return this.light_result$field;
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
         while(_loc2_ < this.lanternState.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.lanternState[_loc2_]);
            _loc2_++;
         }
         if(this.hasLanternNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.lantern_num$field);
         }
         if(this.hasFreeFreshCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.free_fresh_count$field);
         }
         if(this.hasMoonColor)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.moon_color$field);
         }
         if(this.hasNextFreshTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.next_fresh_time$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.exchangeInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.exchangeInfo[_loc3_]);
            _loc3_++;
         }
         if(this.hasMoonCakeNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.moon_cake_num$field);
         }
         if(this.hasLightResult)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.light_result$field);
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
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
