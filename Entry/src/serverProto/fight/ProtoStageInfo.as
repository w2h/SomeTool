package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoStageInfo extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoStageInfo.type","type",1 << 3 | WireType.VARINT,StageActionType);
      
      public static const SUMMON_SKILL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoStageInfo.summon_skill_info","summonSkillInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoActiveSkillInfo);
      
      public static const SUMMON_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoStageInfo.summon_pos","summonPos",3 << 3 | WireType.VARINT);
      
      public static const NINJA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoStageInfo.ninja","ninja",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNinja);
      
      public static const TARGET_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoStageInfo.target_pos","targetPos",5 << 3 | WireType.VARINT);
       
      public var type:int;
      
      private var summon_skill_info$field:serverProto.fight.ProtoActiveSkillInfo;
      
      private var summon_pos$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.fight.ProtoNinja")]
      public var ninja:Array;
      
      private var target_pos$field:uint;
      
      public function ProtoStageInfo()
      {
         this.ninja = [];
         super();
      }
      
      public function clearSummonSkillInfo() : void
      {
         this.summon_skill_info$field = null;
      }
      
      public function get hasSummonSkillInfo() : Boolean
      {
         return this.summon_skill_info$field != null;
      }
      
      public function set summonSkillInfo(param1:serverProto.fight.ProtoActiveSkillInfo) : void
      {
         this.summon_skill_info$field = param1;
      }
      
      public function get summonSkillInfo() : serverProto.fight.ProtoActiveSkillInfo
      {
         return this.summon_skill_info$field;
      }
      
      public function clearSummonPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.summon_pos$field = new uint();
      }
      
      public function get hasSummonPos() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set summonPos(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.summon_pos$field = param1;
      }
      
      public function get summonPos() : uint
      {
         return this.summon_pos$field;
      }
      
      public function clearTargetPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.target_pos$field = new uint();
      }
      
      public function get hasTargetPos() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set targetPos(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.target_pos$field = param1;
      }
      
      public function get targetPos() : uint
      {
         return this.target_pos$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasSummonSkillInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.summon_skill_info$field);
         }
         if(this.hasSummonPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.summon_pos$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninja.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja[_loc2_]);
            _loc2_++;
         }
         if(this.hasTargetPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.target_pos$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
