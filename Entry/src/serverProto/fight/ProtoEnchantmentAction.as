package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEnchantmentAction extends Message
   {
      
      public static const ACTION_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoEnchantmentAction.action_type","actionType",1 << 3 | WireType.VARINT,EnchantmentActionType);
      
      public static const ENCHANTMENT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoEnchantmentAction.enchantment_id","enchantmentId",2 << 3 | WireType.VARINT);
      
      public static const ACTIVE_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoEnchantmentAction.active_ninja","activeNinja",3 << 3 | WireType.LENGTH_DELIMITED,ProtoActiveNinjaInfo);
      
      public static const HAS_ADDITIONAL_SKILL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoEnchantmentAction.has_additional_skill","hasAdditionalSkill",4 << 3 | WireType.VARINT);
      
      public static const NINJA_HP_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoEnchantmentAction.ninja_hp_change","ninjaHpChange",5 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaHpChange);
      
      public static const TEAM_KATHA_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoEnchantmentAction.team_katha_change","teamKathaChange",6 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamKathaChange);
       
      public var actionType:int;
      
      public var enchantmentId:uint;
      
      private var active_ninja$field:serverProto.fight.ProtoActiveNinjaInfo;
      
      private var has_additional_skill$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.fight.ProtoNinjaHpChange")]
      public var ninjaHpChange:Array;
      
      [ArrayElementType("serverProto.fight.ProtoTeamKathaChange")]
      public var teamKathaChange:Array;
      
      public function ProtoEnchantmentAction()
      {
         this.ninjaHpChange = [];
         this.teamKathaChange = [];
         super();
      }
      
      public function clearActiveNinja() : void
      {
         this.active_ninja$field = null;
      }
      
      public function get hasActiveNinja() : Boolean
      {
         return this.active_ninja$field != null;
      }
      
      public function set activeNinja(param1:serverProto.fight.ProtoActiveNinjaInfo) : void
      {
         this.active_ninja$field = param1;
      }
      
      public function get activeNinja() : serverProto.fight.ProtoActiveNinjaInfo
      {
         return this.active_ninja$field;
      }
      
      public function clearHasAdditionalSkill() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.has_additional_skill$field = new uint();
      }
      
      public function get hasHasAdditionalSkill() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set hasAdditionalSkill(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.has_additional_skill$field = param1;
      }
      
      public function get hasAdditionalSkill() : uint
      {
         return this.has_additional_skill$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.actionType);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.enchantmentId);
         if(this.hasActiveNinja)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.active_ninja$field);
         }
         if(this.hasHasAdditionalSkill)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.has_additional_skill$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaHpChange.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaHpChange[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.teamKathaChange.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.teamKathaChange[_loc3_]);
            _loc3_++;
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
