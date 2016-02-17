package serverProto.bag
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEquipFumoLevelAttr extends Message
   {
      
      public static const HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.hp","hp",1 << 3 | WireType.VARINT);
      
      public static const BODY_ATTACK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.body_attack","bodyAttack",2 << 3 | WireType.VARINT);
      
      public static const BODY_DEFENSE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.body_defense","bodyDefense",3 << 3 | WireType.VARINT);
      
      public static const NINJA_ATTACK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.ninja_attack","ninjaAttack",4 << 3 | WireType.VARINT);
      
      public static const NINJA_DEFENSE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.ninja_defense","ninjaDefense",5 << 3 | WireType.VARINT);
      
      public static const SPEED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.speed","speed",6 << 3 | WireType.VARINT);
      
      public static const CRIT_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.crit_value","critValue",7 << 3 | WireType.VARINT);
      
      public static const CRIT_DAMAGE_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.crit_damage_value","critDamageValue",8 << 3 | WireType.VARINT);
      
      public static const CONTROL_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.control_value","controlValue",9 << 3 | WireType.VARINT);
      
      public static const COMBO_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.combo_value","comboValue",10 << 3 | WireType.VARINT);
      
      public static const NOW_LEVEL_BASE_RATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.now_level_base_rate","nowLevelBaseRate",11 << 3 | WireType.VARINT);
      
      public static const NOW_LEVEL_FORGE_RATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.now_level_forge_rate","nowLevelForgeRate",12 << 3 | WireType.VARINT);
      
      public static const NEXT_LEVEL_BASE_RATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.next_level_base_rate","nextLevelBaseRate",13 << 3 | WireType.VARINT);
      
      public static const NEXT_LEVEL_FORGE_RATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoLevelAttr.next_level_forge_rate","nextLevelForgeRate",14 << 3 | WireType.VARINT);
       
      private var hp$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var body_attack$field:uint;
      
      private var body_defense$field:uint;
      
      private var ninja_attack$field:uint;
      
      private var ninja_defense$field:uint;
      
      private var speed$field:uint;
      
      private var crit_value$field:uint;
      
      private var crit_damage_value$field:uint;
      
      private var control_value$field:uint;
      
      private var combo_value$field:uint;
      
      private var now_level_base_rate$field:uint;
      
      private var now_level_forge_rate$field:uint;
      
      private var next_level_base_rate$field:uint;
      
      private var next_level_forge_rate$field:uint;
      
      public function ProtoEquipFumoLevelAttr()
      {
         super();
      }
      
      public function clearHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.hp$field = new uint();
      }
      
      public function get hasHp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set hp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.hp$field = param1;
      }
      
      public function get hp() : uint
      {
         return this.hp$field;
      }
      
      public function clearBodyAttack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.body_attack$field = new uint();
      }
      
      public function get hasBodyAttack() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set bodyAttack(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.body_attack$field = param1;
      }
      
      public function get bodyAttack() : uint
      {
         return this.body_attack$field;
      }
      
      public function clearBodyDefense() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.body_defense$field = new uint();
      }
      
      public function get hasBodyDefense() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set bodyDefense(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.body_defense$field = param1;
      }
      
      public function get bodyDefense() : uint
      {
         return this.body_defense$field;
      }
      
      public function clearNinjaAttack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.ninja_attack$field = new uint();
      }
      
      public function get hasNinjaAttack() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set ninjaAttack(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.ninja_attack$field = param1;
      }
      
      public function get ninjaAttack() : uint
      {
         return this.ninja_attack$field;
      }
      
      public function clearNinjaDefense() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.ninja_defense$field = new uint();
      }
      
      public function get hasNinjaDefense() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set ninjaDefense(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.ninja_defense$field = param1;
      }
      
      public function get ninjaDefense() : uint
      {
         return this.ninja_defense$field;
      }
      
      public function clearSpeed() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.speed$field = new uint();
      }
      
      public function get hasSpeed() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set speed(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.speed$field = param1;
      }
      
      public function get speed() : uint
      {
         return this.speed$field;
      }
      
      public function clearCritValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.crit_value$field = new uint();
      }
      
      public function get hasCritValue() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set critValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.crit_value$field = param1;
      }
      
      public function get critValue() : uint
      {
         return this.crit_value$field;
      }
      
      public function clearCritDamageValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.crit_damage_value$field = new uint();
      }
      
      public function get hasCritDamageValue() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set critDamageValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.crit_damage_value$field = param1;
      }
      
      public function get critDamageValue() : uint
      {
         return this.crit_damage_value$field;
      }
      
      public function clearControlValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.control_value$field = new uint();
      }
      
      public function get hasControlValue() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set controlValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.control_value$field = param1;
      }
      
      public function get controlValue() : uint
      {
         return this.control_value$field;
      }
      
      public function clearComboValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.combo_value$field = new uint();
      }
      
      public function get hasComboValue() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set comboValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.combo_value$field = param1;
      }
      
      public function get comboValue() : uint
      {
         return this.combo_value$field;
      }
      
      public function clearNowLevelBaseRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.now_level_base_rate$field = new uint();
      }
      
      public function get hasNowLevelBaseRate() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set nowLevelBaseRate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.now_level_base_rate$field = param1;
      }
      
      public function get nowLevelBaseRate() : uint
      {
         return this.now_level_base_rate$field;
      }
      
      public function clearNowLevelForgeRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.now_level_forge_rate$field = new uint();
      }
      
      public function get hasNowLevelForgeRate() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set nowLevelForgeRate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.now_level_forge_rate$field = param1;
      }
      
      public function get nowLevelForgeRate() : uint
      {
         return this.now_level_forge_rate$field;
      }
      
      public function clearNextLevelBaseRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.next_level_base_rate$field = new uint();
      }
      
      public function get hasNextLevelBaseRate() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set nextLevelBaseRate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.next_level_base_rate$field = param1;
      }
      
      public function get nextLevelBaseRate() : uint
      {
         return this.next_level_base_rate$field;
      }
      
      public function clearNextLevelForgeRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.next_level_forge_rate$field = new uint();
      }
      
      public function get hasNextLevelForgeRate() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set nextLevelForgeRate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.next_level_forge_rate$field = param1;
      }
      
      public function get nextLevelForgeRate() : uint
      {
         return this.next_level_forge_rate$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.hp$field);
         }
         if(this.hasBodyAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.body_attack$field);
         }
         if(this.hasBodyDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.body_defense$field);
         }
         if(this.hasNinjaAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_attack$field);
         }
         if(this.hasNinjaDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_defense$field);
         }
         if(this.hasSpeed)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.speed$field);
         }
         if(this.hasCritValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.crit_value$field);
         }
         if(this.hasCritDamageValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.crit_damage_value$field);
         }
         if(this.hasControlValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.control_value$field);
         }
         if(this.hasComboValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.combo_value$field);
         }
         if(this.hasNowLevelBaseRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.now_level_base_rate$field);
         }
         if(this.hasNowLevelForgeRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.now_level_forge_rate$field);
         }
         if(this.hasNextLevelBaseRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT32(param1,this.next_level_base_rate$field);
         }
         if(this.hasNextLevelForgeRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_UINT32(param1,this.next_level_forge_rate$field);
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
          * Error type: IndexOutOfBoundsException (Index: 14, Size: 14)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
