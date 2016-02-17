package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoActiveNinjaInfo extends Message
   {
      
      public static const ACTIVE_NINJA_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoActiveNinjaInfo.active_ninja_pos","activeNinjaPos",1 << 3 | WireType.VARINT);
      
      public static const SKILL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoActiveNinjaInfo.skill_info","skillInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoActiveSkillInfo);
      
      public static const TOTAL_ATTACK_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoActiveNinjaInfo.total_attack_times","totalAttackTimes",4 << 3 | WireType.VARINT);
      
      public static const HIT_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoActiveNinjaInfo.hit_num","hitNum",6 << 3 | WireType.VARINT);
      
      public static const SKILL_CONGEST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoActiveNinjaInfo.skill_congest","skillCongest",7 << 3 | WireType.VARINT);
       
      public var activeNinjaPos:uint;
      
      private var skill_info$field:serverProto.fight.ProtoActiveSkillInfo;
      
      private var total_attack_times$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var hit_num$field:uint;
      
      private var skill_congest$field:int;
      
      public function ProtoActiveNinjaInfo()
      {
         super();
      }
      
      public function clearSkillInfo() : void
      {
         this.skill_info$field = null;
      }
      
      public function get hasSkillInfo() : Boolean
      {
         return this.skill_info$field != null;
      }
      
      public function set skillInfo(param1:serverProto.fight.ProtoActiveSkillInfo) : void
      {
         this.skill_info$field = param1;
      }
      
      public function get skillInfo() : serverProto.fight.ProtoActiveSkillInfo
      {
         return this.skill_info$field;
      }
      
      public function clearTotalAttackTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.total_attack_times$field = new uint();
      }
      
      public function get hasTotalAttackTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set totalAttackTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.total_attack_times$field = param1;
      }
      
      public function get totalAttackTimes() : uint
      {
         return this.total_attack_times$field;
      }
      
      public function clearHitNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.hit_num$field = new uint();
      }
      
      public function get hasHitNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set hitNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.hit_num$field = param1;
      }
      
      public function get hitNum() : uint
      {
         return this.hit_num$field;
      }
      
      public function clearSkillCongest() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.skill_congest$field = new int();
      }
      
      public function get hasSkillCongest() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set skillCongest(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.skill_congest$field = param1;
      }
      
      public function get skillCongest() : int
      {
         return this.skill_congest$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.activeNinjaPos);
         if(this.hasSkillInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.skill_info$field);
         }
         if(this.hasTotalAttackTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.total_attack_times$field);
         }
         if(this.hasHitNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.hit_num$field);
         }
         if(this.hasSkillCongest)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.skill_congest$field);
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
