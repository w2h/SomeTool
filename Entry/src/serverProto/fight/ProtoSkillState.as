package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSkillState extends Message
   {
      
      public static const SKILL_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoSkillState.skill_index","skillIndex",1 << 3 | WireType.VARINT);
      
      public static const SKILL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoSkillState.skill_id","skillId",2 << 3 | WireType.VARINT);
      
      public static const CAN_USE_SKILL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoSkillState.can_use_skill","canUseSkill",3 << 3 | WireType.VARINT);
      
      public static const SKILL_PROHIBIT_TYPE:RepeatedFieldDescriptor$TYPE_ENUM = new RepeatedFieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoSkillState.skill_prohibit_type","skillProhibitType",4 << 3 | WireType.VARINT,SkillProhibitType);
      
      public static const SWITCH_SKILL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoSkillState.switch_skill_id","switchSkillId",5 << 3 | WireType.VARINT);
      
      public static const CD_ROUND:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoSkillState.cd_round","cdRound",6 << 3 | WireType.VARINT);
       
      public var skillIndex:uint;
      
      public var skillId:uint;
      
      public var canUseSkill:uint;
      
      [ArrayElementType("int")]
      public var skillProhibitType:Array;
      
      private var switch_skill_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var cd_round$field:uint;
      
      public function ProtoSkillState()
      {
         this.skillProhibitType = [];
         super();
      }
      
      public function clearSwitchSkillId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.switch_skill_id$field = new uint();
      }
      
      public function get hasSwitchSkillId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set switchSkillId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.switch_skill_id$field = param1;
      }
      
      public function get switchSkillId() : uint
      {
         return this.switch_skill_id$field;
      }
      
      public function clearCdRound() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.cd_round$field = new uint();
      }
      
      public function get hasCdRound() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set cdRound(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.cd_round$field = param1;
      }
      
      public function get cdRound() : uint
      {
         return this.cd_round$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.skillIndex);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.skillId);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.canUseSkill);
         var _loc2_:uint = 0;
         while(_loc2_ < this.skillProhibitType.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_ENUM(param1,this.skillProhibitType[_loc2_]);
            _loc2_++;
         }
         if(this.hasSwitchSkillId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.switch_skill_id$field);
         }
         if(this.hasCdRound)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.cd_round$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
