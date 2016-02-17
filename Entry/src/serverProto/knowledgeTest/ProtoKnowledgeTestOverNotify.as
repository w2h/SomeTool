package serverProto.knowledgeTest
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoKnowledgeTestOverNotify extends Message
   {
      
      public static const SCORE_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestOverNotify.score_reward","scoreReward",1 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const VOTE_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestOverNotify.vote_reward","voteReward",2 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestOverNotify.score","score",3 << 3 | WireType.VARINT);
      
      public static const WIN_NPC_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.knowledgeTest.ProtoKnowledgeTestOverNotify.win_npc_name","winNpcName",4 << 3 | WireType.LENGTH_DELIMITED);
       
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var scoreReward:Array;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var voteReward:Array;
      
      private var score$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var win_npc_name$field:String;
      
      public function ProtoKnowledgeTestOverNotify()
      {
         this.scoreReward = [];
         this.voteReward = [];
         super();
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.score$field = new uint();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set score(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.score$field = param1;
      }
      
      public function get score() : uint
      {
         return this.score$field;
      }
      
      public function clearWinNpcName() : void
      {
         this.win_npc_name$field = null;
      }
      
      public function get hasWinNpcName() : Boolean
      {
         return this.win_npc_name$field != null;
      }
      
      public function set winNpcName(param1:String) : void
      {
         this.win_npc_name$field = param1;
      }
      
      public function get winNpcName() : String
      {
         return this.win_npc_name$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.scoreReward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.scoreReward[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.voteReward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.voteReward[_loc3_]);
            _loc3_++;
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.score$field);
         }
         if(this.hasWinNpcName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.win_npc_name$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
