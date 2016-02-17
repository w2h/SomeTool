package serverProto.promote
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaPromoteInfo extends Message
   {
      
      public static const NINJA_SEQ:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.promote.ProtoNinjaPromoteInfo.ninja_seq","ninjaSeq",1 << 3 | WireType.VARINT);
      
      public static const COMBAT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.promote.ProtoNinjaPromoteInfo.combat","combat",2 << 3 | WireType.VARINT);
      
      public static const RECOMMEND_COMBAT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.promote.ProtoNinjaPromoteInfo.recommend_combat","recommendCombat",3 << 3 | WireType.VARINT);
      
      public static const JADE_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.jade_progress","jadeProgress",4 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const EQUIPMENT_LEVEL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.equipment_level_progress","equipmentLevelProgress",5 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const EQUIPMENT_QUALITY_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.equipment_quality_progress","equipmentQualityProgress",6 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const EQUIPMENT_FORGE_LEVEL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.equipment_forge_level_progress","equipmentForgeLevelProgress",7 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const EQUIPMENT_FORGE_PROB_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.equipment_forge_prob_progress","equipmentForgeProbProgress",8 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const NINJA_AWAKEN_LEVEL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.ninja_awaken_level_progress","ninjaAwakenLevelProgress",9 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const NINJA_STAR_LEVEL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.ninja_star_level_progress","ninjaStarLevelProgress",10 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const NINJA_LEVEL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.ninja_level_progress","ninjaLevelProgress",11 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const NINJA_STRENGTH_PROPERY_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.ninja_strength_propery_progress","ninjaStrengthProperyProgress",12 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const LEFT:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoNinjaPromoteInfo.left","left",13 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
       
      public var ninjaSeq:int;
      
      private var combat$field:int;
      
      private var hasField$0:uint = 0;
      
      private var recommend_combat$field:int;
      
      private var jade_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var equipment_level_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var equipment_quality_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var equipment_forge_level_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var equipment_forge_prob_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var ninja_awaken_level_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var ninja_star_level_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var ninja_level_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var ninja_strength_propery_progress$field:serverProto.promote.ProtoProgressBar;
      
      [ArrayElementType("serverProto.promote.ProtoProgressBar")]
      public var left:Array;
      
      public function ProtoNinjaPromoteInfo()
      {
         this.left = [];
         super();
      }
      
      public function clearCombat() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.combat$field = new int();
      }
      
      public function get hasCombat() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set combat(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.combat$field = param1;
      }
      
      public function get combat() : int
      {
         return this.combat$field;
      }
      
      public function clearRecommendCombat() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.recommend_combat$field = new int();
      }
      
      public function get hasRecommendCombat() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set recommendCombat(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.recommend_combat$field = param1;
      }
      
      public function get recommendCombat() : int
      {
         return this.recommend_combat$field;
      }
      
      public function clearJadeProgress() : void
      {
         this.jade_progress$field = null;
      }
      
      public function get hasJadeProgress() : Boolean
      {
         return this.jade_progress$field != null;
      }
      
      public function set jadeProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.jade_progress$field = param1;
      }
      
      public function get jadeProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.jade_progress$field;
      }
      
      public function clearEquipmentLevelProgress() : void
      {
         this.equipment_level_progress$field = null;
      }
      
      public function get hasEquipmentLevelProgress() : Boolean
      {
         return this.equipment_level_progress$field != null;
      }
      
      public function set equipmentLevelProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.equipment_level_progress$field = param1;
      }
      
      public function get equipmentLevelProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.equipment_level_progress$field;
      }
      
      public function clearEquipmentQualityProgress() : void
      {
         this.equipment_quality_progress$field = null;
      }
      
      public function get hasEquipmentQualityProgress() : Boolean
      {
         return this.equipment_quality_progress$field != null;
      }
      
      public function set equipmentQualityProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.equipment_quality_progress$field = param1;
      }
      
      public function get equipmentQualityProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.equipment_quality_progress$field;
      }
      
      public function clearEquipmentForgeLevelProgress() : void
      {
         this.equipment_forge_level_progress$field = null;
      }
      
      public function get hasEquipmentForgeLevelProgress() : Boolean
      {
         return this.equipment_forge_level_progress$field != null;
      }
      
      public function set equipmentForgeLevelProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.equipment_forge_level_progress$field = param1;
      }
      
      public function get equipmentForgeLevelProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.equipment_forge_level_progress$field;
      }
      
      public function clearEquipmentForgeProbProgress() : void
      {
         this.equipment_forge_prob_progress$field = null;
      }
      
      public function get hasEquipmentForgeProbProgress() : Boolean
      {
         return this.equipment_forge_prob_progress$field != null;
      }
      
      public function set equipmentForgeProbProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.equipment_forge_prob_progress$field = param1;
      }
      
      public function get equipmentForgeProbProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.equipment_forge_prob_progress$field;
      }
      
      public function clearNinjaAwakenLevelProgress() : void
      {
         this.ninja_awaken_level_progress$field = null;
      }
      
      public function get hasNinjaAwakenLevelProgress() : Boolean
      {
         return this.ninja_awaken_level_progress$field != null;
      }
      
      public function set ninjaAwakenLevelProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.ninja_awaken_level_progress$field = param1;
      }
      
      public function get ninjaAwakenLevelProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.ninja_awaken_level_progress$field;
      }
      
      public function clearNinjaStarLevelProgress() : void
      {
         this.ninja_star_level_progress$field = null;
      }
      
      public function get hasNinjaStarLevelProgress() : Boolean
      {
         return this.ninja_star_level_progress$field != null;
      }
      
      public function set ninjaStarLevelProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.ninja_star_level_progress$field = param1;
      }
      
      public function get ninjaStarLevelProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.ninja_star_level_progress$field;
      }
      
      public function clearNinjaLevelProgress() : void
      {
         this.ninja_level_progress$field = null;
      }
      
      public function get hasNinjaLevelProgress() : Boolean
      {
         return this.ninja_level_progress$field != null;
      }
      
      public function set ninjaLevelProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.ninja_level_progress$field = param1;
      }
      
      public function get ninjaLevelProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.ninja_level_progress$field;
      }
      
      public function clearNinjaStrengthProperyProgress() : void
      {
         this.ninja_strength_propery_progress$field = null;
      }
      
      public function get hasNinjaStrengthProperyProgress() : Boolean
      {
         return this.ninja_strength_propery_progress$field != null;
      }
      
      public function set ninjaStrengthProperyProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.ninja_strength_propery_progress$field = param1;
      }
      
      public function get ninjaStrengthProperyProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.ninja_strength_propery_progress$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.ninjaSeq);
         if(this.hasCombat)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.combat$field);
         }
         if(this.hasRecommendCombat)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.recommend_combat$field);
         }
         if(this.hasJadeProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.jade_progress$field);
         }
         if(this.hasEquipmentLevelProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.equipment_level_progress$field);
         }
         if(this.hasEquipmentQualityProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.equipment_quality_progress$field);
         }
         if(this.hasEquipmentForgeLevelProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.equipment_forge_level_progress$field);
         }
         if(this.hasEquipmentForgeProbProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.equipment_forge_prob_progress$field);
         }
         if(this.hasNinjaAwakenLevelProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_awaken_level_progress$field);
         }
         if(this.hasNinjaStarLevelProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_star_level_progress$field);
         }
         if(this.hasNinjaLevelProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_level_progress$field);
         }
         if(this.hasNinjaStrengthProperyProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,12);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_strength_propery_progress$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.left.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,13);
            WriteUtils.write$TYPE_MESSAGE(param1,this.left[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 13, Size: 13)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
