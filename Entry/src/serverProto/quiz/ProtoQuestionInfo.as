package serverProto.quiz
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQuestionInfo extends Message
   {
      
      public static const QUESTION:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.quiz.ProtoQuestionInfo.question","question",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ANSWER_LIST:RepeatedFieldDescriptor$TYPE_STRING = new RepeatedFieldDescriptor$TYPE_STRING("serverProto.quiz.ProtoQuestionInfo.answer_list","answerList",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const REMAINDER_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.quiz.ProtoQuestionInfo.remainder_time","remainderTime",3 << 3 | WireType.VARINT);
      
      public static const REMAINDER_QUESTION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.quiz.ProtoQuestionInfo.remainder_question","remainderQuestion",4 << 3 | WireType.VARINT);
      
      public static const RIGHT_QUESTION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.quiz.ProtoQuestionInfo.right_question","rightQuestion",5 << 3 | WireType.VARINT);
      
      public static const CURRENT_REWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.quiz.ProtoQuestionInfo.current_reward","currentReward",6 << 3 | WireType.LENGTH_DELIMITED,ProtoQuestionRewardInfo);
      
      public static const TOTAL_REWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.quiz.ProtoQuestionInfo.total_reward","totalReward",7 << 3 | WireType.LENGTH_DELIMITED,ProtoQuestionRewardInfo);
      
      public static const REWARD_BOX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.quiz.ProtoQuestionInfo.reward_box","rewardBox",8 << 3 | WireType.VARINT);
      
      public static const HAS_OPEN_REWARD_BOX:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.quiz.ProtoQuestionInfo.has_open_reward_box","hasOpenRewardBox",9 << 3 | WireType.VARINT);
       
      private var question$field:String;
      
      [ArrayElementType("String")]
      public var answerList:Array;
      
      private var remainder_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var remainder_question$field:int;
      
      private var right_question$field:int;
      
      private var current_reward$field:serverProto.quiz.ProtoQuestionRewardInfo;
      
      private var total_reward$field:serverProto.quiz.ProtoQuestionRewardInfo;
      
      private var reward_box$field:int;
      
      private var has_open_reward_box$field:Boolean;
      
      public function ProtoQuestionInfo()
      {
         this.answerList = [];
         super();
      }
      
      public function clearQuestion() : void
      {
         this.question$field = null;
      }
      
      public function get hasQuestion() : Boolean
      {
         return this.question$field != null;
      }
      
      public function set question(param1:String) : void
      {
         this.question$field = param1;
      }
      
      public function get question() : String
      {
         return this.question$field;
      }
      
      public function clearRemainderTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.remainder_time$field = new uint();
      }
      
      public function get hasRemainderTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set remainderTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.remainder_time$field = param1;
      }
      
      public function get remainderTime() : uint
      {
         return this.remainder_time$field;
      }
      
      public function clearRemainderQuestion() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.remainder_question$field = new int();
      }
      
      public function get hasRemainderQuestion() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainderQuestion(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.remainder_question$field = param1;
      }
      
      public function get remainderQuestion() : int
      {
         return this.remainder_question$field;
      }
      
      public function clearRightQuestion() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.right_question$field = new int();
      }
      
      public function get hasRightQuestion() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set rightQuestion(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.right_question$field = param1;
      }
      
      public function get rightQuestion() : int
      {
         return this.right_question$field;
      }
      
      public function clearCurrentReward() : void
      {
         this.current_reward$field = null;
      }
      
      public function get hasCurrentReward() : Boolean
      {
         return this.current_reward$field != null;
      }
      
      public function set currentReward(param1:serverProto.quiz.ProtoQuestionRewardInfo) : void
      {
         this.current_reward$field = param1;
      }
      
      public function get currentReward() : serverProto.quiz.ProtoQuestionRewardInfo
      {
         return this.current_reward$field;
      }
      
      public function clearTotalReward() : void
      {
         this.total_reward$field = null;
      }
      
      public function get hasTotalReward() : Boolean
      {
         return this.total_reward$field != null;
      }
      
      public function set totalReward(param1:serverProto.quiz.ProtoQuestionRewardInfo) : void
      {
         this.total_reward$field = param1;
      }
      
      public function get totalReward() : serverProto.quiz.ProtoQuestionRewardInfo
      {
         return this.total_reward$field;
      }
      
      public function clearRewardBox() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.reward_box$field = new int();
      }
      
      public function get hasRewardBox() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set rewardBox(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.reward_box$field = param1;
      }
      
      public function get rewardBox() : int
      {
         return this.reward_box$field;
      }
      
      public function clearHasOpenRewardBox() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.has_open_reward_box$field = new Boolean();
      }
      
      public function get hasHasOpenRewardBox() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set hasOpenRewardBox(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.has_open_reward_box$field = param1;
      }
      
      public function get hasOpenRewardBox() : Boolean
      {
         return this.has_open_reward_box$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasQuestion)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_STRING(param1,this.question$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.answerList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.answerList[_loc2_]);
            _loc2_++;
         }
         if(this.hasRemainderTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.remainder_time$field);
         }
         if(this.hasRemainderQuestion)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_question$field);
         }
         if(this.hasRightQuestion)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.right_question$field);
         }
         if(this.hasCurrentReward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.current_reward$field);
         }
         if(this.hasTotalReward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.total_reward$field);
         }
         if(this.hasRewardBox)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.reward_box$field);
         }
         if(this.hasHasOpenRewardBox)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_BOOL(param1,this.has_open_reward_box$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
