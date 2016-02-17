package serverProto.universeFuzionPre
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniverseRankBattleChallengeRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoUniverseRankBattleChallengeRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CHALLENGE_RESULT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattleChallengeRsp.challenge_result","challengeResult",2 << 3 | WireType.VARINT);
      
      public static const MONEY_AWARD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattleChallengeRsp.money_award","moneyAward",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var challenge_result$field:int;
      
      private var hasField$0:uint = 0;
      
      private var money_award$field:int;
      
      public function ProtoUniverseRankBattleChallengeRsp()
      {
         super();
      }
      
      public function clearChallengeResult() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.challenge_result$field = new int();
      }
      
      public function get hasChallengeResult() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set challengeResult(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.challenge_result$field = param1;
      }
      
      public function get challengeResult() : int
      {
         return this.challenge_result$field;
      }
      
      public function clearMoneyAward() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.money_award$field = new int();
      }
      
      public function get hasMoneyAward() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set moneyAward(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.money_award$field = param1;
      }
      
      public function get moneyAward() : int
      {
         return this.money_award$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasChallengeResult)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.challenge_result$field);
         }
         if(this.hasMoneyAward)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.money_award$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
