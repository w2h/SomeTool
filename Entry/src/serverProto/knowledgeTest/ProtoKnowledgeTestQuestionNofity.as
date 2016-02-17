package serverProto.knowledgeTest
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.rank.ProtoKnowledgeTestRank;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoKnowledgeTestQuestionNofity extends Message
   {
      
      public static const LAST_ANSWER_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestQuestionNofity.last_answer_index","lastAnswerIndex",1 << 3 | WireType.VARINT);
      
      public static const NEXT_QUESTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestQuestionNofity.next_question","nextQuestion",2 << 3 | WireType.LENGTH_DELIMITED,ProtoKnowledgeTestData);
      
      public static const RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestQuestionNofity.rank","rank",3 << 3 | WireType.LENGTH_DELIMITED,ProtoKnowledgeTestRank);
      
      public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestQuestionNofity.score","score",4 << 3 | WireType.VARINT);
       
      private var last_answer_index$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var next_question$field:serverProto.knowledgeTest.ProtoKnowledgeTestData;
      
      [ArrayElementType("serverProto.rank.ProtoKnowledgeTestRank")]
      public var rank:Array;
      
      private var score$field:uint;
      
      public function ProtoKnowledgeTestQuestionNofity()
      {
         this.rank = [];
         super();
      }
      
      public function clearLastAnswerIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.last_answer_index$field = new uint();
      }
      
      public function get hasLastAnswerIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set lastAnswerIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.last_answer_index$field = param1;
      }
      
      public function get lastAnswerIndex() : uint
      {
         return this.last_answer_index$field;
      }
      
      public function clearNextQuestion() : void
      {
         this.next_question$field = null;
      }
      
      public function get hasNextQuestion() : Boolean
      {
         return this.next_question$field != null;
      }
      
      public function set nextQuestion(param1:serverProto.knowledgeTest.ProtoKnowledgeTestData) : void
      {
         this.next_question$field = param1;
      }
      
      public function get nextQuestion() : serverProto.knowledgeTest.ProtoKnowledgeTestData
      {
         return this.next_question$field;
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.score$field = new uint();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set score(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.score$field = param1;
      }
      
      public function get score() : uint
      {
         return this.score$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasLastAnswerIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.last_answer_index$field);
         }
         if(this.hasNextQuestion)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.next_question$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.rank.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rank[_loc2_]);
            _loc2_++;
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.score$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
