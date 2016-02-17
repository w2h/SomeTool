package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoAnniversaryLuckyWheelLotteryInfo extends Message
   {
      
      public static const OPEN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoAnniversaryLuckyWheelLotteryInfo.open_count","openCount",1 << 3 | WireType.VARINT);
      
      public static const LOTTERY_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoAnniversaryLuckyWheelLotteryInfo.lottery_award","lotteryAward",2 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const COUNT_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoAnniversaryLuckyWheelLotteryInfo.count_award","countAward",3 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
       
      private var open_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var lotteryAward:Array;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var countAward:Array;
      
      public function ProtoAnniversaryLuckyWheelLotteryInfo()
      {
         this.lotteryAward = [];
         this.countAward = [];
         super();
      }
      
      public function clearOpenCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.open_count$field = new uint();
      }
      
      public function get hasOpenCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set openCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.open_count$field = param1;
      }
      
      public function get openCount() : uint
      {
         return this.open_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasOpenCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.open_count$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.lotteryAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.lotteryAward[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.countAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.countAward[_loc3_]);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
