package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoImportantOperateNotify extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoImportantOperateNotify.type","type",1 << 3 | WireType.VARINT,ImportantOperateType);
      
      public static const NINJA_OPERATE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoImportantOperateNotify.ninja_operate","ninjaOperate",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaImportantOperate);
      
      public static const TALENT_SKILL_ID:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.user.ProtoImportantOperateNotify.talent_skill_id","talentSkillId",3 << 3 | WireType.VARINT);
      
      public static const NEW_EQUIP:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.user.ProtoImportantOperateNotify.new_equip","newEquip",4 << 3 | WireType.VARINT);
      
      public static const EVOLVE_EQUIP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoImportantOperateNotify.evolve_equip","evolveEquip",5 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipEvolveImportantOperate);
      
      public static const RANK_OPERATE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoImportantOperateNotify.rank_operate","rankOperate",6 << 3 | WireType.LENGTH_DELIMITED,ProtoRankOnboardOperate);
      
      public static const PRACTICE_POS_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoImportantOperateNotify.practice_pos_open_level","practicePosOpenLevel",7 << 3 | WireType.VARINT);
      
      public static const NINJA_PROPS_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoImportantOperateNotify.ninja_props_id","ninjaPropsId",8 << 3 | WireType.VARINT);
      
      public static const TITLE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoImportantOperateNotify.title","title",9 << 3 | WireType.LENGTH_DELIMITED,ProtoNewRankTitle);
      
      public static const SWITCH_STATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoImportantOperateNotify.switch_state","switchState",10 << 3 | WireType.VARINT);
      
      public static const FASHION_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoImportantOperateNotify.fashion_id","fashionId",11 << 3 | WireType.VARINT);
      
      public static const NEW_NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoImportantOperateNotify.new_ninja_id","newNinjaId",12 << 3 | WireType.VARINT);
       
      public var type:int;
      
      private var ninja_operate$field:serverProto.user.ProtoNinjaImportantOperate;
      
      [ArrayElementType("int")]
      public var talentSkillId:Array;
      
      [ArrayElementType("int")]
      public var newEquip:Array;
      
      private var evolve_equip$field:serverProto.user.ProtoEquipEvolveImportantOperate;
      
      [ArrayElementType("serverProto.user.ProtoRankOnboardOperate")]
      public var rankOperate:Array;
      
      private var practice_pos_open_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var ninja_props_id$field:int;
      
      private var title$field:serverProto.user.ProtoNewRankTitle;
      
      private var switch_state$field:int;
      
      private var fashion_id$field:int;
      
      private var new_ninja_id$field:int;
      
      public function ProtoImportantOperateNotify()
      {
         this.talentSkillId = [];
         this.newEquip = [];
         this.rankOperate = [];
         super();
      }
      
      public function clearNinjaOperate() : void
      {
         this.ninja_operate$field = null;
      }
      
      public function get hasNinjaOperate() : Boolean
      {
         return this.ninja_operate$field != null;
      }
      
      public function set ninjaOperate(param1:serverProto.user.ProtoNinjaImportantOperate) : void
      {
         this.ninja_operate$field = param1;
      }
      
      public function get ninjaOperate() : serverProto.user.ProtoNinjaImportantOperate
      {
         return this.ninja_operate$field;
      }
      
      public function clearEvolveEquip() : void
      {
         this.evolve_equip$field = null;
      }
      
      public function get hasEvolveEquip() : Boolean
      {
         return this.evolve_equip$field != null;
      }
      
      public function set evolveEquip(param1:serverProto.user.ProtoEquipEvolveImportantOperate) : void
      {
         this.evolve_equip$field = param1;
      }
      
      public function get evolveEquip() : serverProto.user.ProtoEquipEvolveImportantOperate
      {
         return this.evolve_equip$field;
      }
      
      public function clearPracticePosOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.practice_pos_open_level$field = new int();
      }
      
      public function get hasPracticePosOpenLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set practicePosOpenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.practice_pos_open_level$field = param1;
      }
      
      public function get practicePosOpenLevel() : int
      {
         return this.practice_pos_open_level$field;
      }
      
      public function clearNinjaPropsId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.ninja_props_id$field = new int();
      }
      
      public function get hasNinjaPropsId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set ninjaPropsId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.ninja_props_id$field = param1;
      }
      
      public function get ninjaPropsId() : int
      {
         return this.ninja_props_id$field;
      }
      
      public function clearTitle() : void
      {
         this.title$field = null;
      }
      
      public function get hasTitle() : Boolean
      {
         return this.title$field != null;
      }
      
      public function set title(param1:serverProto.user.ProtoNewRankTitle) : void
      {
         this.title$field = param1;
      }
      
      public function get title() : serverProto.user.ProtoNewRankTitle
      {
         return this.title$field;
      }
      
      public function clearSwitchState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.switch_state$field = new int();
      }
      
      public function get hasSwitchState() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set switchState(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.switch_state$field = param1;
      }
      
      public function get switchState() : int
      {
         return this.switch_state$field;
      }
      
      public function clearFashionId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.fashion_id$field = new int();
      }
      
      public function get hasFashionId() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set fashionId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.fashion_id$field = param1;
      }
      
      public function get fashionId() : int
      {
         return this.fashion_id$field;
      }
      
      public function clearNewNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.new_ninja_id$field = new int();
      }
      
      public function get hasNewNinjaId() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set newNinjaId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.new_ninja_id$field = param1;
      }
      
      public function get newNinjaId() : int
      {
         return this.new_ninja_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasNinjaOperate)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_operate$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.talentSkillId.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.talentSkillId[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.newEquip.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.newEquip[_loc3_]);
            _loc3_++;
         }
         if(this.hasEvolveEquip)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.evolve_equip$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.rankOperate.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rankOperate[_loc4_]);
            _loc4_++;
         }
         if(this.hasPracticePosOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.practice_pos_open_level$field);
         }
         if(this.hasNinjaPropsId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_props_id$field);
         }
         if(this.hasTitle)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.title$field);
         }
         if(this.hasSwitchState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.switch_state$field);
         }
         if(this.hasFashionId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.fashion_id$field);
         }
         if(this.hasNewNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_INT32(param1,this.new_ninja_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
