package serverProto.skill
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetSkillInfoResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.skill.ProtoGetSkillInfoResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SKILL_ATRR_LEVEL:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.skill.ProtoGetSkillInfoResponse.skill_atrr_level","skillAtrrLevel",2 << 3 | WireType.LENGTH_DELIMITED,ProtoSkillAttributeLevel);
      
      public static const LEARNED_SKILL_ID:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.skill.ProtoGetSkillInfoResponse.learned_skill_id","learnedSkillId",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const NINJA_SKILL_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.skill.ProtoGetSkillInfoResponse.ninja_skill_info","ninjaSkillInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaSkillInfo);
       
      public var ret:ProtoRetInfo;
      
      private var skill_atrr_level$field:serverProto.skill.ProtoSkillAttributeLevel;
      
      [ArrayElementType("uint")]
      public var learnedSkillId:Array;
      
      [ArrayElementType("serverProto.skill.ProtoNinjaSkillInfo")]
      public var ninjaSkillInfo:Array;
      
      public function ProtoGetSkillInfoResponse()
      {
         this.learnedSkillId = [];
         this.ninjaSkillInfo = [];
         super();
      }
      
      public function clearSkillAtrrLevel() : void
      {
         this.skill_atrr_level$field = null;
      }
      
      public function get hasSkillAtrrLevel() : Boolean
      {
         return this.skill_atrr_level$field != null;
      }
      
      public function set skillAtrrLevel(param1:serverProto.skill.ProtoSkillAttributeLevel) : void
      {
         this.skill_atrr_level$field = param1;
      }
      
      public function get skillAtrrLevel() : serverProto.skill.ProtoSkillAttributeLevel
      {
         return this.skill_atrr_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasSkillAtrrLevel)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.skill_atrr_level$field);
         }
         if(this.learnedSkillId != null && this.learnedSkillId.length > 0)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.writePackedRepeated(param1,WriteUtils.write$TYPE_UINT32,this.learnedSkillId);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaSkillInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaSkillInfo[_loc2_]);
            _loc2_++;
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
