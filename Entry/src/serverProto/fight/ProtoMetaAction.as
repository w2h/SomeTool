package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMetaAction extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoMetaAction.type","type",1 << 3 | WireType.VARINT,MetaActionType);
      
      public static const NORMAL_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.normal_action","normalAction",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNormalAction);
      
      public static const WITHSTAND_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.withstand_action","withstandAction",3 << 3 | WireType.LENGTH_DELIMITED,ProtoWithstandAction);
      
      public static const STAGE_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.stage_action","stageAction",4 << 3 | WireType.LENGTH_DELIMITED,ProtoStageAction);
      
      public static const BUFF_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.buff_action","buffAction",5 << 3 | WireType.LENGTH_DELIMITED,ProtoBuffAction);
      
      public static const ENCHANTMENT_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.enchantment_action","enchantmentAction",6 << 3 | WireType.LENGTH_DELIMITED,ProtoEnchantmentAction);
      
      public static const SCRIPT_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.script_action","scriptAction",7 << 3 | WireType.LENGTH_DELIMITED,ProtoScriptAction);
      
      public static const CHANGE_FORMATION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoMetaAction.change_formation","changeFormation",8 << 3 | WireType.VARINT);
      
      public static const DIALOGUE_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.dialogue_action","dialogueAction",9 << 3 | WireType.LENGTH_DELIMITED,ProtoBubbleDialogueAction);
      
      public static const TEAM_SKILL_STATE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.team_skill_state","teamSkillState",10 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamInfo);
      
      public static const ABORT_NINJA_AWAKEN_SKILL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.abort_ninja_awaken_skill","abortNinjaAwakenSkill",11 << 3 | WireType.LENGTH_DELIMITED,ProtoAbortNinjaAwakenSkill);
      
      public static const REBIRTH_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.rebirth_action","rebirthAction",12 << 3 | WireType.LENGTH_DELIMITED,ProtoRebirthAction);
      
      public static const TRANSFORM_ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.transform_action","transformAction",13 << 3 | WireType.LENGTH_DELIMITED,ProtoTransformAction);
      
      public static const IS_OVER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoMetaAction.is_over","isOver",100 << 3 | WireType.VARINT);
      
      public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoMetaAction.id","id",101 << 3 | WireType.VARINT);
      
      public static const PROPERTY_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoMetaAction.property_change","propertyChange",102 << 3 | WireType.LENGTH_DELIMITED,ProtoPropertyChangeAction);
       
      public var type:int;
      
      private var normal_action$field:serverProto.fight.ProtoNormalAction;
      
      private var withstand_action$field:serverProto.fight.ProtoWithstandAction;
      
      private var stage_action$field:serverProto.fight.ProtoStageAction;
      
      private var buff_action$field:serverProto.fight.ProtoBuffAction;
      
      private var enchantment_action$field:serverProto.fight.ProtoEnchantmentAction;
      
      private var script_action$field:serverProto.fight.ProtoScriptAction;
      
      private var change_formation$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var dialogue_action$field:serverProto.fight.ProtoBubbleDialogueAction;
      
      [ArrayElementType("serverProto.fight.ProtoTeamInfo")]
      public var teamSkillState:Array;
      
      [ArrayElementType("serverProto.fight.ProtoAbortNinjaAwakenSkill")]
      public var abortNinjaAwakenSkill:Array;
      
      private var rebirth_action$field:serverProto.fight.ProtoRebirthAction;
      
      private var transform_action$field:serverProto.fight.ProtoTransformAction;
      
      private var is_over$field:Boolean;
      
      private var id$field:int;
      
      [ArrayElementType("serverProto.fight.ProtoPropertyChangeAction")]
      public var propertyChange:Array;
      
      public function ProtoMetaAction()
      {
         this.teamSkillState = [];
         this.abortNinjaAwakenSkill = [];
         this.propertyChange = [];
         super();
      }
      
      public function clearNormalAction() : void
      {
         this.normal_action$field = null;
      }
      
      public function get hasNormalAction() : Boolean
      {
         return this.normal_action$field != null;
      }
      
      public function set normalAction(param1:serverProto.fight.ProtoNormalAction) : void
      {
         this.normal_action$field = param1;
      }
      
      public function get normalAction() : serverProto.fight.ProtoNormalAction
      {
         return this.normal_action$field;
      }
      
      public function clearWithstandAction() : void
      {
         this.withstand_action$field = null;
      }
      
      public function get hasWithstandAction() : Boolean
      {
         return this.withstand_action$field != null;
      }
      
      public function set withstandAction(param1:serverProto.fight.ProtoWithstandAction) : void
      {
         this.withstand_action$field = param1;
      }
      
      public function get withstandAction() : serverProto.fight.ProtoWithstandAction
      {
         return this.withstand_action$field;
      }
      
      public function clearStageAction() : void
      {
         this.stage_action$field = null;
      }
      
      public function get hasStageAction() : Boolean
      {
         return this.stage_action$field != null;
      }
      
      public function set stageAction(param1:serverProto.fight.ProtoStageAction) : void
      {
         this.stage_action$field = param1;
      }
      
      public function get stageAction() : serverProto.fight.ProtoStageAction
      {
         return this.stage_action$field;
      }
      
      public function clearBuffAction() : void
      {
         this.buff_action$field = null;
      }
      
      public function get hasBuffAction() : Boolean
      {
         return this.buff_action$field != null;
      }
      
      public function set buffAction(param1:serverProto.fight.ProtoBuffAction) : void
      {
         this.buff_action$field = param1;
      }
      
      public function get buffAction() : serverProto.fight.ProtoBuffAction
      {
         return this.buff_action$field;
      }
      
      public function clearEnchantmentAction() : void
      {
         this.enchantment_action$field = null;
      }
      
      public function get hasEnchantmentAction() : Boolean
      {
         return this.enchantment_action$field != null;
      }
      
      public function set enchantmentAction(param1:serverProto.fight.ProtoEnchantmentAction) : void
      {
         this.enchantment_action$field = param1;
      }
      
      public function get enchantmentAction() : serverProto.fight.ProtoEnchantmentAction
      {
         return this.enchantment_action$field;
      }
      
      public function clearScriptAction() : void
      {
         this.script_action$field = null;
      }
      
      public function get hasScriptAction() : Boolean
      {
         return this.script_action$field != null;
      }
      
      public function set scriptAction(param1:serverProto.fight.ProtoScriptAction) : void
      {
         this.script_action$field = param1;
      }
      
      public function get scriptAction() : serverProto.fight.ProtoScriptAction
      {
         return this.script_action$field;
      }
      
      public function clearChangeFormation() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.change_formation$field = new uint();
      }
      
      public function get hasChangeFormation() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set changeFormation(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.change_formation$field = param1;
      }
      
      public function get changeFormation() : uint
      {
         return this.change_formation$field;
      }
      
      public function clearDialogueAction() : void
      {
         this.dialogue_action$field = null;
      }
      
      public function get hasDialogueAction() : Boolean
      {
         return this.dialogue_action$field != null;
      }
      
      public function set dialogueAction(param1:serverProto.fight.ProtoBubbleDialogueAction) : void
      {
         this.dialogue_action$field = param1;
      }
      
      public function get dialogueAction() : serverProto.fight.ProtoBubbleDialogueAction
      {
         return this.dialogue_action$field;
      }
      
      public function clearRebirthAction() : void
      {
         this.rebirth_action$field = null;
      }
      
      public function get hasRebirthAction() : Boolean
      {
         return this.rebirth_action$field != null;
      }
      
      public function set rebirthAction(param1:serverProto.fight.ProtoRebirthAction) : void
      {
         this.rebirth_action$field = param1;
      }
      
      public function get rebirthAction() : serverProto.fight.ProtoRebirthAction
      {
         return this.rebirth_action$field;
      }
      
      public function clearTransformAction() : void
      {
         this.transform_action$field = null;
      }
      
      public function get hasTransformAction() : Boolean
      {
         return this.transform_action$field != null;
      }
      
      public function set transformAction(param1:serverProto.fight.ProtoTransformAction) : void
      {
         this.transform_action$field = param1;
      }
      
      public function get transformAction() : serverProto.fight.ProtoTransformAction
      {
         return this.transform_action$field;
      }
      
      public function clearIsOver() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.is_over$field = new Boolean();
      }
      
      public function get hasIsOver() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set isOver(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.is_over$field = param1;
      }
      
      public function get isOver() : Boolean
      {
         return this.is_over$field;
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.id$field = new int();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set id(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.id$field = param1;
      }
      
      public function get id() : int
      {
         return this.id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasNormalAction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.normal_action$field);
         }
         if(this.hasWithstandAction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.withstand_action$field);
         }
         if(this.hasStageAction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.stage_action$field);
         }
         if(this.hasBuffAction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.buff_action$field);
         }
         if(this.hasEnchantmentAction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.enchantment_action$field);
         }
         if(this.hasScriptAction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.script_action$field);
         }
         if(this.hasChangeFormation)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.change_formation$field);
         }
         if(this.hasDialogueAction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.dialogue_action$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.teamSkillState.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.teamSkillState[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.abortNinjaAwakenSkill.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_MESSAGE(param1,this.abortNinjaAwakenSkill[_loc3_]);
            _loc3_++;
         }
         if(this.hasRebirthAction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,12);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rebirth_action$field);
         }
         if(this.hasTransformAction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,13);
            WriteUtils.write$TYPE_MESSAGE(param1,this.transform_action$field);
         }
         if(this.hasIsOver)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,100);
            WriteUtils.write$TYPE_BOOL(param1,this.is_over$field);
         }
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,101);
            WriteUtils.write$TYPE_INT32(param1,this.id$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.propertyChange.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,102);
            WriteUtils.write$TYPE_MESSAGE(param1,this.propertyChange[_loc4_]);
            _loc4_++;
         }
         for(_loc5_ in this)
         {
            super.writeUnknown(param1,_loc5_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 16, Size: 16)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
