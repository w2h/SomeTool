package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPassiveNinjaInfo extends Message
   {
      
      public static const PASSIVE_NINJA_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.passive_ninja_pos","passiveNinjaPos",1 << 3 | WireType.VARINT);
      
      public static const ATTACK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.attack_status","attackStatus",3 << 3 | WireType.VARINT);
      
      public static const ATTACK_EFFECT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.attack_effect","attackEffect",4 << 3 | WireType.VARINT);
      
      public static const ATTACK_RESULT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.attack_result","attackResult",5 << 3 | WireType.VARINT);
      
      public static const ATTACK_SUB_EFFECT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.attack_sub_effect","attackSubEffect",6 << 3 | WireType.VARINT);
      
      public static const IS_CRITICAL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoPassiveNinjaInfo.is_critical","isCritical",7 << 3 | WireType.VARINT);
      
      public static const IS_DODGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.is_dodge","isDodge",8 << 3 | WireType.VARINT);
      
      public static const DODGE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.dodge_id","dodgeId",9 << 3 | WireType.VARINT);
      
      public static const TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.time","time",10 << 3 | WireType.VARINT);
      
      public static const IS_MAJOR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.is_major","isMajor",11 << 3 | WireType.VARINT);
      
      public static const SKILL_CONGEST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPassiveNinjaInfo.skill_congest","skillCongest",12 << 3 | WireType.VARINT);
       
      public var passiveNinjaPos:uint;
      
      private var attack_status$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var attack_effect$field:uint;
      
      private var attack_result$field:uint;
      
      private var attack_sub_effect$field:uint;
      
      private var is_critical$field:Boolean;
      
      private var is_dodge$field:uint;
      
      private var dodge_id$field:uint;
      
      private var time$field:uint;
      
      private var is_major$field:uint;
      
      private var skill_congest$field:int;
      
      public function ProtoPassiveNinjaInfo()
      {
         super();
      }
      
      public function clearAttackStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.attack_status$field = new uint();
      }
      
      public function get hasAttackStatus() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set attackStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.attack_status$field = param1;
      }
      
      public function get attackStatus() : uint
      {
         return this.attack_status$field;
      }
      
      public function clearAttackEffect() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.attack_effect$field = new uint();
      }
      
      public function get hasAttackEffect() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set attackEffect(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.attack_effect$field = param1;
      }
      
      public function get attackEffect() : uint
      {
         return this.attack_effect$field;
      }
      
      public function clearAttackResult() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.attack_result$field = new uint();
      }
      
      public function get hasAttackResult() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set attackResult(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.attack_result$field = param1;
      }
      
      public function get attackResult() : uint
      {
         return this.attack_result$field;
      }
      
      public function clearAttackSubEffect() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.attack_sub_effect$field = new uint();
      }
      
      public function get hasAttackSubEffect() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set attackSubEffect(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.attack_sub_effect$field = param1;
      }
      
      public function get attackSubEffect() : uint
      {
         return this.attack_sub_effect$field;
      }
      
      public function clearIsCritical() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.is_critical$field = new Boolean();
      }
      
      public function get hasIsCritical() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set isCritical(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.is_critical$field = param1;
      }
      
      public function get isCritical() : Boolean
      {
         return this.is_critical$field;
      }
      
      public function clearIsDodge() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.is_dodge$field = new uint();
      }
      
      public function get hasIsDodge() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set isDodge(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.is_dodge$field = param1;
      }
      
      public function get isDodge() : uint
      {
         return this.is_dodge$field;
      }
      
      public function clearDodgeId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.dodge_id$field = new uint();
      }
      
      public function get hasDodgeId() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set dodgeId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.dodge_id$field = param1;
      }
      
      public function get dodgeId() : uint
      {
         return this.dodge_id$field;
      }
      
      public function clearTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.time$field = new uint();
      }
      
      public function get hasTime() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set time(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.time$field = param1;
      }
      
      public function get time() : uint
      {
         return this.time$field;
      }
      
      public function clearIsMajor() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.is_major$field = new uint();
      }
      
      public function get hasIsMajor() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set isMajor(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.is_major$field = param1;
      }
      
      public function get isMajor() : uint
      {
         return this.is_major$field;
      }
      
      public function clearSkillCongest() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.skill_congest$field = new int();
      }
      
      public function get hasSkillCongest() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set skillCongest(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
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
         WriteUtils.write$TYPE_UINT32(param1,this.passiveNinjaPos);
         if(this.hasAttackStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.attack_status$field);
         }
         if(this.hasAttackEffect)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.attack_effect$field);
         }
         if(this.hasAttackResult)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.attack_result$field);
         }
         if(this.hasAttackSubEffect)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.attack_sub_effect$field);
         }
         if(this.hasIsCritical)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_BOOL(param1,this.is_critical$field);
         }
         if(this.hasIsDodge)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.is_dodge$field);
         }
         if(this.hasDodgeId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.dodge_id$field);
         }
         if(this.hasTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.time$field);
         }
         if(this.hasIsMajor)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.is_major$field);
         }
         if(this.hasSkillCongest)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
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
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
