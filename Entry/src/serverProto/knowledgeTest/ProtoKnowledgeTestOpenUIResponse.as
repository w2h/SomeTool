package serverProto.knowledgeTest
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoKnowledgeTestOpenUIResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NPC_DATA_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.npc_data_ary","npcDataAry",2 << 3 | WireType.LENGTH_DELIMITED,ProtoKnowledgeTestNpcData);
      
      public static const STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.state","state",3 << 3 | WireType.VARINT,ProtoKnowledgeTestUserState);
      
      public static const VOTE_NPC_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.vote_npc_id","voteNpcId",4 << 3 | WireType.VARINT);
      
      public static const ENTER_RAMIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.enter_ramin_time","enterRaminTime",5 << 3 | WireType.VARINT);
      
      public static const START_REAMIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.start_reamin_time","startReaminTime",6 << 3 | WireType.VARINT);
      
      public static const LOWEST_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestOpenUIResponse.lowest_score","lowestScore",7 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      [ArrayElementType("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData")]
      public var npcDataAry:Array;
      
      private var state$field:int;
      
      private var hasField$0:uint = 0;
      
      private var vote_npc_id$field:uint;
      
      private var enter_ramin_time$field:uint;
      
      private var start_reamin_time$field:uint;
      
      private var lowest_score$field:uint;
      
      public function ProtoKnowledgeTestOpenUIResponse()
      {
         this.npcDataAry = [];
         super();
      }
      
      public function clearState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.state$field = new int();
      }
      
      public function get hasState() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set state(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.state$field = param1;
      }
      
      public function get state() : int
      {
         return this.state$field;
      }
      
      public function clearVoteNpcId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.vote_npc_id$field = new uint();
      }
      
      public function get hasVoteNpcId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set voteNpcId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.vote_npc_id$field = param1;
      }
      
      public function get voteNpcId() : uint
      {
         return this.vote_npc_id$field;
      }
      
      public function clearEnterRaminTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.enter_ramin_time$field = new uint();
      }
      
      public function get hasEnterRaminTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set enterRaminTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.enter_ramin_time$field = param1;
      }
      
      public function get enterRaminTime() : uint
      {
         return this.enter_ramin_time$field;
      }
      
      public function clearStartReaminTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.start_reamin_time$field = new uint();
      }
      
      public function get hasStartReaminTime() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set startReaminTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.start_reamin_time$field = param1;
      }
      
      public function get startReaminTime() : uint
      {
         return this.start_reamin_time$field;
      }
      
      public function clearLowestScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.lowest_score$field = new uint();
      }
      
      public function get hasLowestScore() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set lowestScore(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.lowest_score$field = param1;
      }
      
      public function get lowestScore() : uint
      {
         return this.lowest_score$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         var _loc2_:uint = 0;
         while(_loc2_ < this.npcDataAry.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.npcDataAry[_loc2_]);
            _loc2_++;
         }
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.state$field);
         }
         if(this.hasVoteNpcId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.vote_npc_id$field);
         }
         if(this.hasEnterRaminTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.enter_ramin_time$field);
         }
         if(this.hasStartReaminTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.start_reamin_time$field);
         }
         if(this.hasLowestScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.lowest_score$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
