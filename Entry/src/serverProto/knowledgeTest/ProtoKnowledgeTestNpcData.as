package serverProto.knowledgeTest
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoKnowledgeTestNpcData extends Message
   {
      
      public static const NPC_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData.npc_id","npcId",1 << 3 | WireType.VARINT);
      
      public static const VOTE_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData.vote_num","voteNum",2 << 3 | WireType.VARINT);
      
      public static const ANSWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData.answer","answer",3 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData.score","score",4 << 3 | WireType.VARINT);
      
      public static const RAND_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData.rand_time","randTime",5 << 3 | WireType.VARINT);
       
      private var npc_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var vote_num$field:uint;
      
      private var answer$field:uint;
      
      private var score$field:uint;
      
      private var rand_time$field:uint;
      
      public function ProtoKnowledgeTestNpcData()
      {
         super();
      }
      
      public function clearNpcId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.npc_id$field = new uint();
      }
      
      public function get hasNpcId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set npcId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.npc_id$field = param1;
      }
      
      public function get npcId() : uint
      {
         return this.npc_id$field;
      }
      
      public function clearVoteNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.vote_num$field = new uint();
      }
      
      public function get hasVoteNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set voteNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.vote_num$field = param1;
      }
      
      public function get voteNum() : uint
      {
         return this.vote_num$field;
      }
      
      public function clearAnswer() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.answer$field = new uint();
      }
      
      public function get hasAnswer() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set answer(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.answer$field = param1;
      }
      
      public function get answer() : uint
      {
         return this.answer$field;
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.score$field = new uint();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set score(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.score$field = param1;
      }
      
      public function get score() : uint
      {
         return this.score$field;
      }
      
      public function clearRandTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.rand_time$field = new uint();
      }
      
      public function get hasRandTime() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set randTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.rand_time$field = param1;
      }
      
      public function get randTime() : uint
      {
         return this.rand_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasNpcId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.npc_id$field);
         }
         if(this.hasVoteNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.vote_num$field);
         }
         if(this.hasAnswer)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.answer$field);
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.score$field);
         }
         if(this.hasRandTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.rand_time$field);
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
