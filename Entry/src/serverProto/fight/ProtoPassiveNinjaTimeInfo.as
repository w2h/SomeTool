package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPassiveNinjaTimeInfo extends Message
   {
      
      public static const BEATEN_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.beaten_type","beatenType",1 << 3 | WireType.VARINT);
      
      public static const POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.pos","pos",2 << 3 | WireType.VARINT);
      
      public static const NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.ninja_id","ninjaId",3 << 3 | WireType.VARINT);
      
      public static const DODGE_SKILL_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.dodge_skill_id","dodgeSkillId",4 << 3 | WireType.VARINT);
      
      public static const DODGE_EFFECT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPassiveNinjaTimeInfo.dodge_effect","dodgeEffect",5 << 3 | WireType.LENGTH_DELIMITED,ProtoEffectTimeInfo);
      
      public static const DODGE_ACTION_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.dodge_action_frame_count","dodgeActionFrameCount",6 << 3 | WireType.VARINT);
      
      public static const REBOUND_ATTACK_TIME_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPassiveNinjaTimeInfo.rebound_attack_time_info","reboundAttackTimeInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoAttackerTimeInfo);
      
      public static const REBOUND_BEATEN_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.rebound_beaten_frame_count","reboundBeatenFrameCount",8 << 3 | WireType.VARINT);
      
      public static const IS_BEATEN_BACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.is_beaten_back","isBeatenBack",9 << 3 | WireType.VARINT);
      
      public static const BEATEN_BACK_FRAMES:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.beaten_back_frames","beatenBackFrames",10 << 3 | WireType.VARINT);
      
      public static const BEATEN_ATTRIBUTE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPassiveNinjaTimeInfo.beaten_attribute","beatenAttribute",11 << 3 | WireType.LENGTH_DELIMITED,ProtoBeatenAttribute);
      
      public static const NEGATIVE_NINJA_STAT_IMMUNE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.negative_ninja_stat_immune","negativeNinjaStatImmune",12 << 3 | WireType.VARINT);
      
      public static const FIX_ACTION_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.fix_action_frame_count","fixActionFrameCount",13 << 3 | WireType.VARINT);
      
      public static const DEAD_ACTION_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPassiveNinjaTimeInfo.dead_action_frame_count","deadActionFrameCount",14 << 3 | WireType.VARINT);
       
      private var beaten_type$field:int;
      
      private var hasField$0:uint = 0;
      
      private var pos$field:int;
      
      private var ninja_id$field:int;
      
      private var dodge_skill_id$field:int;
      
      private var dodge_effect$field:serverProto.fight.ProtoEffectTimeInfo;
      
      private var dodge_action_frame_count$field:int;
      
      private var rebound_attack_time_info$field:serverProto.fight.ProtoAttackerTimeInfo;
      
      private var rebound_beaten_frame_count$field:int;
      
      private var is_beaten_back$field:int;
      
      [ArrayElementType("int")]
      public var beatenBackFrames:Array;
      
      [ArrayElementType("serverProto.fight.ProtoBeatenAttribute")]
      public var beatenAttribute:Array;
      
      private var negative_ninja_stat_immune$field:int;
      
      private var fix_action_frame_count$field:int;
      
      private var dead_action_frame_count$field:int;
      
      public function ProtoPassiveNinjaTimeInfo()
      {
         this.beatenBackFrames = [];
         this.beatenAttribute = [];
         super();
      }
      
      public function clearBeatenType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.beaten_type$field = new int();
      }
      
      public function get hasBeatenType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set beatenType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.beaten_type$field = param1;
      }
      
      public function get beatenType() : int
      {
         return this.beaten_type$field;
      }
      
      public function clearPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.pos$field = new int();
      }
      
      public function get hasPos() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set pos(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.pos$field = param1;
      }
      
      public function get pos() : int
      {
         return this.pos$field;
      }
      
      public function clearNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.ninja_id$field = new int();
      }
      
      public function get hasNinjaId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set ninjaId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.ninja_id$field = param1;
      }
      
      public function get ninjaId() : int
      {
         return this.ninja_id$field;
      }
      
      public function clearDodgeSkillId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.dodge_skill_id$field = new int();
      }
      
      public function get hasDodgeSkillId() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set dodgeSkillId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.dodge_skill_id$field = param1;
      }
      
      public function get dodgeSkillId() : int
      {
         return this.dodge_skill_id$field;
      }
      
      public function clearDodgeEffect() : void
      {
         this.dodge_effect$field = null;
      }
      
      public function get hasDodgeEffect() : Boolean
      {
         return this.dodge_effect$field != null;
      }
      
      public function set dodgeEffect(param1:serverProto.fight.ProtoEffectTimeInfo) : void
      {
         this.dodge_effect$field = param1;
      }
      
      public function get dodgeEffect() : serverProto.fight.ProtoEffectTimeInfo
      {
         return this.dodge_effect$field;
      }
      
      public function clearDodgeActionFrameCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.dodge_action_frame_count$field = new int();
      }
      
      public function get hasDodgeActionFrameCount() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set dodgeActionFrameCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.dodge_action_frame_count$field = param1;
      }
      
      public function get dodgeActionFrameCount() : int
      {
         return this.dodge_action_frame_count$field;
      }
      
      public function clearReboundAttackTimeInfo() : void
      {
         this.rebound_attack_time_info$field = null;
      }
      
      public function get hasReboundAttackTimeInfo() : Boolean
      {
         return this.rebound_attack_time_info$field != null;
      }
      
      public function set reboundAttackTimeInfo(param1:serverProto.fight.ProtoAttackerTimeInfo) : void
      {
         this.rebound_attack_time_info$field = param1;
      }
      
      public function get reboundAttackTimeInfo() : serverProto.fight.ProtoAttackerTimeInfo
      {
         return this.rebound_attack_time_info$field;
      }
      
      public function clearReboundBeatenFrameCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.rebound_beaten_frame_count$field = new int();
      }
      
      public function get hasReboundBeatenFrameCount() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set reboundBeatenFrameCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.rebound_beaten_frame_count$field = param1;
      }
      
      public function get reboundBeatenFrameCount() : int
      {
         return this.rebound_beaten_frame_count$field;
      }
      
      public function clearIsBeatenBack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.is_beaten_back$field = new int();
      }
      
      public function get hasIsBeatenBack() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set isBeatenBack(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.is_beaten_back$field = param1;
      }
      
      public function get isBeatenBack() : int
      {
         return this.is_beaten_back$field;
      }
      
      public function clearNegativeNinjaStatImmune() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.negative_ninja_stat_immune$field = new int();
      }
      
      public function get hasNegativeNinjaStatImmune() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set negativeNinjaStatImmune(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.negative_ninja_stat_immune$field = param1;
      }
      
      public function get negativeNinjaStatImmune() : int
      {
         return this.negative_ninja_stat_immune$field;
      }
      
      public function clearFixActionFrameCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.fix_action_frame_count$field = new int();
      }
      
      public function get hasFixActionFrameCount() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set fixActionFrameCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.fix_action_frame_count$field = param1;
      }
      
      public function get fixActionFrameCount() : int
      {
         return this.fix_action_frame_count$field;
      }
      
      public function clearDeadActionFrameCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.dead_action_frame_count$field = new int();
      }
      
      public function get hasDeadActionFrameCount() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set deadActionFrameCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.dead_action_frame_count$field = param1;
      }
      
      public function get deadActionFrameCount() : int
      {
         return this.dead_action_frame_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasBeatenType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.beaten_type$field);
         }
         if(this.hasPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.pos$field);
         }
         if(this.hasNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_id$field);
         }
         if(this.hasDodgeSkillId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.dodge_skill_id$field);
         }
         if(this.hasDodgeEffect)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.dodge_effect$field);
         }
         if(this.hasDodgeActionFrameCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.dodge_action_frame_count$field);
         }
         if(this.hasReboundAttackTimeInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rebound_attack_time_info$field);
         }
         if(this.hasReboundBeatenFrameCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.rebound_beaten_frame_count$field);
         }
         if(this.hasIsBeatenBack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.is_beaten_back$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.beatenBackFrames.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.beatenBackFrames[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.beatenAttribute.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_MESSAGE(param1,this.beatenAttribute[_loc3_]);
            _loc3_++;
         }
         if(this.hasNegativeNinjaStatImmune)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_INT32(param1,this.negative_ninja_stat_immune$field);
         }
         if(this.hasFixActionFrameCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_INT32(param1,this.fix_action_frame_count$field);
         }
         if(this.hasDeadActionFrameCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_INT32(param1,this.dead_action_frame_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 14, Size: 14)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
