package serverProto.practice
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSpeedUpPracticeResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoSpeedUpPracticeResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PRACTICE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoSpeedUpPracticeResponse.practice_info","practiceInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPracticeInfo);
      
      public static const MONEY_COUPON:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoSpeedUpPracticeResponse.money_coupon","moneyCoupon",3 << 3 | WireType.VARINT);
      
      public static const MONEY_GOLD:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoSpeedUpPracticeResponse.money_gold","moneyGold",4 << 3 | WireType.VARINT);
      
      public static const REWARD_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoSpeedUpPracticeResponse.reward_exp","rewardExp",5 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var practice_info$field:serverProto.practice.ProtoPracticeInfo;
      
      private var money_coupon$field:int;
      
      private var hasField$0:uint = 0;
      
      private var money_gold$field:int;
      
      private var reward_exp$field:int;
      
      public function ProtoSpeedUpPracticeResponse()
      {
         super();
      }
      
      public function clearPracticeInfo() : void
      {
         this.practice_info$field = null;
      }
      
      public function get hasPracticeInfo() : Boolean
      {
         return this.practice_info$field != null;
      }
      
      public function set practiceInfo(param1:serverProto.practice.ProtoPracticeInfo) : void
      {
         this.practice_info$field = param1;
      }
      
      public function get practiceInfo() : serverProto.practice.ProtoPracticeInfo
      {
         return this.practice_info$field;
      }
      
      public function clearMoneyCoupon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.money_coupon$field = new int();
      }
      
      public function get hasMoneyCoupon() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set moneyCoupon(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.money_coupon$field = param1;
      }
      
      public function get moneyCoupon() : int
      {
         return this.money_coupon$field;
      }
      
      public function clearMoneyGold() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.money_gold$field = new int();
      }
      
      public function get hasMoneyGold() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set moneyGold(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.money_gold$field = param1;
      }
      
      public function get moneyGold() : int
      {
         return this.money_gold$field;
      }
      
      public function clearRewardExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.reward_exp$field = new int();
      }
      
      public function get hasRewardExp() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set rewardExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.reward_exp$field = param1;
      }
      
      public function get rewardExp() : int
      {
         return this.reward_exp$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasPracticeInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.practice_info$field);
         }
         if(this.hasMoneyCoupon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.money_coupon$field);
         }
         if(this.hasMoneyGold)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.money_gold$field);
         }
         if(this.hasRewardExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.reward_exp$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
