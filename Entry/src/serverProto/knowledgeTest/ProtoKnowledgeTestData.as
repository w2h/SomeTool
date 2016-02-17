package serverProto.knowledgeTest
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoKnowledgeTestData extends Message
   {
      
      public static const NO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestData.no","no",1 << 3 | WireType.VARINT);
      
      public static const QUESTION:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.knowledgeTest.ProtoKnowledgeTestData.question","question",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ANSWER_LIST:RepeatedFieldDescriptor$TYPE_STRING = new RepeatedFieldDescriptor$TYPE_STRING("serverProto.knowledgeTest.ProtoKnowledgeTestData.answer_list","answerList",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ICON:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.knowledgeTest.ProtoKnowledgeTestData.icon","icon",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestData.begin_time","beginTime",5 << 3 | WireType.VARINT);
      
      public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.knowledgeTest.ProtoKnowledgeTestData.remain_time","remainTime",6 << 3 | WireType.VARINT);
      
      public static const NPC_DATA_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.knowledgeTest.ProtoKnowledgeTestData.npc_data_ary","npcDataAry",7 << 3 | WireType.LENGTH_DELIMITED,ProtoKnowledgeTestNpcData);
       
      private var no$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var question$field:String;
      
      [ArrayElementType("String")]
      public var answerList:Array;
      
      private var icon$field:String;
      
      private var begin_time$field:uint;
      
      private var remain_time$field:uint;
      
      [ArrayElementType("serverProto.knowledgeTest.ProtoKnowledgeTestNpcData")]
      public var npcDataAry:Array;
      
      public function ProtoKnowledgeTestData()
      {
         this.answerList = [];
         this.npcDataAry = [];
         super();
      }
      
      public function clearNo() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.no$field = new uint();
      }
      
      public function get hasNo() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set no(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.no$field = param1;
      }
      
      public function get no() : uint
      {
         return this.no$field;
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
      
      public function clearIcon() : void
      {
         this.icon$field = null;
      }
      
      public function get hasIcon() : Boolean
      {
         return this.icon$field != null;
      }
      
      public function set icon(param1:String) : void
      {
         this.icon$field = param1;
      }
      
      public function get icon() : String
      {
         return this.icon$field;
      }
      
      public function clearBeginTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.begin_time$field = new uint();
      }
      
      public function get hasBeginTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set beginTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.begin_time$field = param1;
      }
      
      public function get beginTime() : uint
      {
         return this.begin_time$field;
      }
      
      public function clearRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.remain_time$field = new uint();
      }
      
      public function get hasRemainTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set remainTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.remain_time$field = param1;
      }
      
      public function get remainTime() : uint
      {
         return this.remain_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasNo)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.no$field);
         }
         if(this.hasQuestion)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.question$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.answerList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.answerList[_loc2_]);
            _loc2_++;
         }
         if(this.hasIcon)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.icon$field);
         }
         if(this.hasBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.begin_time$field);
         }
         if(this.hasRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_time$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.npcDataAry.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.npcDataAry[_loc3_]);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
