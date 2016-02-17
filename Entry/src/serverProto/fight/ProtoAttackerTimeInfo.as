package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoAttackerTimeInfo extends Message
   {
      
      public static const ATTACKER_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.attacker_pos","attackerPos",1 << 3 | WireType.VARINT);
      
      public static const ATTACKER_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.attacker_id","attackerId",2 << 3 | WireType.VARINT);
      
      public static const SKILL_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.skill_id","skillId",3 << 3 | WireType.VARINT);
      
      public static const SQUAT_FRAME_COUNT:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.squat_frame_count","squatFrameCount",4 << 3 | WireType.VARINT);
      
      public static const STAND_FRAME_COUNT:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.stand_frame_count","standFrameCount",5 << 3 | WireType.VARINT);
      
      public static const ATTACK_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.attack_frame_count","attackFrameCount",6 << 3 | WireType.VARINT);
      
      public static const BEATEN_POS:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.beaten_pos","beatenPos",7 << 3 | WireType.VARINT);
      
      public static const SKILL_EFFECT:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoAttackerTimeInfo.skill_effect","skillEffect",8 << 3 | WireType.LENGTH_DELIMITED,ProtoEffectTimeInfo);
      
      public static const FULL_SCREEN_EFFECT:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoAttackerTimeInfo.full_screen_effect","fullScreenEffect",9 << 3 | WireType.LENGTH_DELIMITED,ProtoEffectTimeInfo);
      
      public static const ENTER_STAGE_EFFECT_FRAME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.enter_stage_effect_frame","enterStageEffectFrame",10 << 3 | WireType.VARINT);
      
      public static const HIT_POINT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.hit_point","hitPoint",11 << 3 | WireType.VARINT);
      
      public static const DEAD_ACTION_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoAttackerTimeInfo.dead_action_frame_count","deadActionFrameCount",12 << 3 | WireType.VARINT);
       
      private var attacker_pos$field:int;
      
      private var hasField$0:uint = 0;
      
      private var attacker_id$field:int;
      
      private var skill_id$field:int;
      
      [ArrayElementType("int")]
      public var squatFrameCount:Array;
      
      [ArrayElementType("int")]
      public var standFrameCount:Array;
      
      private var attack_frame_count$field:int;
      
      [ArrayElementType("int")]
      public var beatenPos:Array;
      
      [ArrayElementType("serverProto.fight.ProtoEffectTimeInfo")]
      public var skillEffect:Array;
      
      [ArrayElementType("serverProto.fight.ProtoEffectTimeInfo")]
      public var fullScreenEffect:Array;
      
      private var enter_stage_effect_frame$field:int;
      
      private var hit_point$field:int;
      
      private var dead_action_frame_count$field:int;
      
      public function ProtoAttackerTimeInfo()
      {
         this.squatFrameCount = [];
         this.standFrameCount = [];
         this.beatenPos = [];
         this.skillEffect = [];
         this.fullScreenEffect = [];
         super();
      }
      
      public function clearAttackerPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.attacker_pos$field = new int();
      }
      
      public function get hasAttackerPos() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set attackerPos(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.attacker_pos$field = param1;
      }
      
      public function get attackerPos() : int
      {
         return this.attacker_pos$field;
      }
      
      public function clearAttackerId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.attacker_id$field = new int();
      }
      
      public function get hasAttackerId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set attackerId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.attacker_id$field = param1;
      }
      
      public function get attackerId() : int
      {
         return this.attacker_id$field;
      }
      
      public function clearSkillId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.skill_id$field = new int();
      }
      
      public function get hasSkillId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set skillId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.skill_id$field = param1;
      }
      
      public function get skillId() : int
      {
         return this.skill_id$field;
      }
      
      public function clearAttackFrameCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.attack_frame_count$field = new int();
      }
      
      public function get hasAttackFrameCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set attackFrameCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.attack_frame_count$field = param1;
      }
      
      public function get attackFrameCount() : int
      {
         return this.attack_frame_count$field;
      }
      
      public function clearEnterStageEffectFrame() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.enter_stage_effect_frame$field = new int();
      }
      
      public function get hasEnterStageEffectFrame() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set enterStageEffectFrame(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.enter_stage_effect_frame$field = param1;
      }
      
      public function get enterStageEffectFrame() : int
      {
         return this.enter_stage_effect_frame$field;
      }
      
      public function clearHitPoint() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.hit_point$field = new int();
      }
      
      public function get hasHitPoint() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set hitPoint(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.hit_point$field = param1;
      }
      
      public function get hitPoint() : int
      {
         return this.hit_point$field;
      }
      
      public function clearDeadActionFrameCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.dead_action_frame_count$field = new int();
      }
      
      public function get hasDeadActionFrameCount() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set deadActionFrameCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.dead_action_frame_count$field = param1;
      }
      
      public function get deadActionFrameCount() : int
      {
         return this.dead_action_frame_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc7_:* = undefined;
         if(this.hasAttackerPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.attacker_pos$field);
         }
         if(this.hasAttackerId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.attacker_id$field);
         }
         if(this.hasSkillId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.skill_id$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.squatFrameCount.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.squatFrameCount[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.standFrameCount.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.standFrameCount[_loc3_]);
            _loc3_++;
         }
         if(this.hasAttackFrameCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.attack_frame_count$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.beatenPos.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.beatenPos[_loc4_]);
            _loc4_++;
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.skillEffect.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.skillEffect[_loc5_]);
            _loc5_++;
         }
         var _loc6_:uint = 0;
         while(_loc6_ < this.fullScreenEffect.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.fullScreenEffect[_loc6_]);
            _loc6_++;
         }
         if(this.hasEnterStageEffectFrame)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.enter_stage_effect_frame$field);
         }
         if(this.hasHitPoint)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.hit_point$field);
         }
         if(this.hasDeadActionFrameCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_INT32(param1,this.dead_action_frame_count$field);
         }
         for(_loc7_ in this)
         {
            super.writeUnknown(param1,_loc7_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
