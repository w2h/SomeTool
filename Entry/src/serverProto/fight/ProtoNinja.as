package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinja extends Message
   {
      
      public static const POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.pos","pos",1 << 3 | WireType.VARINT);
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.id","id",2 << 3 | WireType.VARINT);
      
      public static const HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoNinja.hp","hp",3 << 3 | WireType.VARINT);
      
      public static const MAX_HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.max_hp","maxHp",4 << 3 | WireType.VARINT);
      
      public static const SKILL_LIST:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.skill_list","skillList",5 << 3 | WireType.VARINT);
      
      public static const IS_CALL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoNinja.is_call","isCall",6 << 3 | WireType.VARINT);
      
      public static const BUFFS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNinja.buffs","buffs",7 << 3 | WireType.LENGTH_DELIMITED,ProtoBuffInfo);
      
      public static const STAGE_NINJA_ACTION_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoNinja.stage_ninja_action_type","stageNinjaActionType",8 << 3 | WireType.VARINT,StageNinjaActionType);
      
      public static const SKILL_STATE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNinja.skill_state","skillState",9 << 3 | WireType.LENGTH_DELIMITED,ProtoSkillState);
      
      public static const IS_DISPLAY_NAME:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoNinja.is_display_name","isDisplayName",10 << 3 | WireType.VARINT);
      
      public static const SHORT_KEY_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.short_key_index","shortKeyIndex",11 << 3 | WireType.VARINT);
      
      public static const POS_QUEUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinja.pos_queue","posQueue",12 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinja.level","level",13 << 3 | WireType.VARINT);
      
      public static const IS_COPY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.is_copy","isCopy",14 << 3 | WireType.VARINT);
      
      public static const SECOND_AWAKEN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNinja.second_awaken_level","secondAwakenLevel",15 << 3 | WireType.VARINT);
       
      public var pos:uint;
      
      private var id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var hp$field:int;
      
      private var max_hp$field:uint;
      
      [ArrayElementType("uint")]
      public var skillList:Array;
      
      private var is_call$field:Boolean;
      
      [ArrayElementType("serverProto.fight.ProtoBuffInfo")]
      public var buffs:Array;
      
      private var stage_ninja_action_type$field:int;
      
      [ArrayElementType("serverProto.fight.ProtoSkillState")]
      public var skillState:Array;
      
      private var is_display_name$field:Boolean;
      
      private var short_key_index$field:uint;
      
      private var pos_queue$field:int;
      
      private var level$field:int;
      
      private var is_copy$field:uint;
      
      private var second_awaken_level$field:uint;
      
      public function ProtoNinja()
      {
         this.skillList = [];
         this.buffs = [];
         this.skillState = [];
         super();
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.id$field = new uint();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set id(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.id$field = param1;
      }
      
      public function get id() : uint
      {
         return this.id$field;
      }
      
      public function clearHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.hp$field = new int();
      }
      
      public function get hasHp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set hp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.hp$field = param1;
      }
      
      public function get hp() : int
      {
         return this.hp$field;
      }
      
      public function clearMaxHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.max_hp$field = new uint();
      }
      
      public function get hasMaxHp() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set maxHp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.max_hp$field = param1;
      }
      
      public function get maxHp() : uint
      {
         return this.max_hp$field;
      }
      
      public function clearIsCall() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.is_call$field = new Boolean();
      }
      
      public function get hasIsCall() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set isCall(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.is_call$field = param1;
      }
      
      public function get isCall() : Boolean
      {
         return this.is_call$field;
      }
      
      public function clearStageNinjaActionType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.stage_ninja_action_type$field = new int();
      }
      
      public function get hasStageNinjaActionType() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set stageNinjaActionType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.stage_ninja_action_type$field = param1;
      }
      
      public function get stageNinjaActionType() : int
      {
         return this.stage_ninja_action_type$field;
      }
      
      public function clearIsDisplayName() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.is_display_name$field = new Boolean();
      }
      
      public function get hasIsDisplayName() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set isDisplayName(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.is_display_name$field = param1;
      }
      
      public function get isDisplayName() : Boolean
      {
         return this.is_display_name$field;
      }
      
      public function clearShortKeyIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.short_key_index$field = new uint();
      }
      
      public function get hasShortKeyIndex() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set shortKeyIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.short_key_index$field = param1;
      }
      
      public function get shortKeyIndex() : uint
      {
         return this.short_key_index$field;
      }
      
      public function clearPosQueue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.pos_queue$field = new int();
      }
      
      public function get hasPosQueue() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set posQueue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.pos_queue$field = param1;
      }
      
      public function get posQueue() : int
      {
         return this.pos_queue$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      public function clearIsCopy() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.is_copy$field = new uint();
      }
      
      public function get hasIsCopy() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set isCopy(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.is_copy$field = param1;
      }
      
      public function get isCopy() : uint
      {
         return this.is_copy$field;
      }
      
      public function clearSecondAwakenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.second_awaken_level$field = new uint();
      }
      
      public function get hasSecondAwakenLevel() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set secondAwakenLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.second_awaken_level$field = param1;
      }
      
      public function get secondAwakenLevel() : uint
      {
         return this.second_awaken_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.pos);
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.id$field);
         }
         if(this.hasHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.hp$field);
         }
         if(this.hasMaxHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.max_hp$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.skillList.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.skillList[_loc2_]);
            _loc2_++;
         }
         if(this.hasIsCall)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_BOOL(param1,this.is_call$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.buffs.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.buffs[_loc3_]);
            _loc3_++;
         }
         if(this.hasStageNinjaActionType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_ENUM(param1,this.stage_ninja_action_type$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.skillState.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.skillState[_loc4_]);
            _loc4_++;
         }
         if(this.hasIsDisplayName)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_BOOL(param1,this.is_display_name$field);
         }
         if(this.hasShortKeyIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.short_key_index$field);
         }
         if(this.hasPosQueue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_SINT32(param1,this.pos_queue$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_SINT32(param1,this.level$field);
         }
         if(this.hasIsCopy)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_UINT32(param1,this.is_copy$field);
         }
         if(this.hasSecondAwakenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_UINT32(param1,this.second_awaken_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 15, Size: 15)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
