package serverProto.familyNinja
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFamilyNinjaTotalConf extends Message
   {
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.level","level",1 << 3 | WireType.VARINT);
      
      public static const GIFT_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.gift_num","giftNum",2 << 3 | WireType.VARINT);
      
      public static const NINJA_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.ninja_num","ninjaNum",3 << 3 | WireType.VARINT);
      
      public static const MAX_HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.max_hp","maxHp",4 << 3 | WireType.VARINT);
      
      public static const BODY_ATTACK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.body_attack","bodyAttack",5 << 3 | WireType.VARINT);
      
      public static const BODY_DEFENSE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.body_defense","bodyDefense",6 << 3 | WireType.VARINT);
      
      public static const NINJA_ATTACK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.ninja_attack","ninjaAttack",7 << 3 | WireType.VARINT);
      
      public static const NINJA_DEFENSE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.ninja_defense","ninjaDefense",8 << 3 | WireType.VARINT);
      
      public static const SPEED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.speed","speed",9 << 3 | WireType.VARINT);
      
      public static const CONTROL_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.control_value","controlValue",10 << 3 | WireType.VARINT);
      
      public static const CRIT_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.crit_value","critValue",11 << 3 | WireType.VARINT);
      
      public static const COMBO_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.combo_value","comboValue",12 << 3 | WireType.VARINT);
      
      public static const CRIT_DAMAGE_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.crit_damage_value","critDamageValue",13 << 3 | WireType.VARINT);
      
      public static const BODY_PENETRATE_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.body_penetrate_value","bodyPenetrateValue",14 << 3 | WireType.VARINT);
      
      public static const NINJA_PENETRATE_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.ninja_penetrate_value","ninjaPenetrateValue",15 << 3 | WireType.VARINT);
      
      public static const DAMAGE_REDUCE_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.damage_reduce_value","damageReduceValue",16 << 3 | WireType.VARINT);
      
      public static const HP_RESTORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaTotalConf.hp_restore","hpRestore",17 << 3 | WireType.VARINT);
       
      private var level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var gift_num$field:uint;
      
      private var ninja_num$field:uint;
      
      private var max_hp$field:uint;
      
      private var body_attack$field:uint;
      
      private var body_defense$field:uint;
      
      private var ninja_attack$field:uint;
      
      private var ninja_defense$field:uint;
      
      private var speed$field:uint;
      
      private var control_value$field:uint;
      
      private var crit_value$field:uint;
      
      private var combo_value$field:uint;
      
      private var crit_damage_value$field:uint;
      
      private var body_penetrate_value$field:uint;
      
      private var ninja_penetrate_value$field:uint;
      
      private var damage_reduce_value$field:uint;
      
      private var hp_restore$field:uint;
      
      public function ProtoFamilyNinjaTotalConf()
      {
         super();
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.level$field = new uint();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set level(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.level$field = param1;
      }
      
      public function get level() : uint
      {
         return this.level$field;
      }
      
      public function clearGiftNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.gift_num$field = new uint();
      }
      
      public function get hasGiftNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set giftNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.gift_num$field = param1;
      }
      
      public function get giftNum() : uint
      {
         return this.gift_num$field;
      }
      
      public function clearNinjaNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.ninja_num$field = new uint();
      }
      
      public function get hasNinjaNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set ninjaNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.ninja_num$field = param1;
      }
      
      public function get ninjaNum() : uint
      {
         return this.ninja_num$field;
      }
      
      public function clearMaxHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.max_hp$field = new uint();
      }
      
      public function get hasMaxHp() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set maxHp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.max_hp$field = param1;
      }
      
      public function get maxHp() : uint
      {
         return this.max_hp$field;
      }
      
      public function clearBodyAttack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.body_attack$field = new uint();
      }
      
      public function get hasBodyAttack() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set bodyAttack(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.body_attack$field = param1;
      }
      
      public function get bodyAttack() : uint
      {
         return this.body_attack$field;
      }
      
      public function clearBodyDefense() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.body_defense$field = new uint();
      }
      
      public function get hasBodyDefense() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set bodyDefense(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.body_defense$field = param1;
      }
      
      public function get bodyDefense() : uint
      {
         return this.body_defense$field;
      }
      
      public function clearNinjaAttack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.ninja_attack$field = new uint();
      }
      
      public function get hasNinjaAttack() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set ninjaAttack(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.ninja_attack$field = param1;
      }
      
      public function get ninjaAttack() : uint
      {
         return this.ninja_attack$field;
      }
      
      public function clearNinjaDefense() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.ninja_defense$field = new uint();
      }
      
      public function get hasNinjaDefense() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set ninjaDefense(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.ninja_defense$field = param1;
      }
      
      public function get ninjaDefense() : uint
      {
         return this.ninja_defense$field;
      }
      
      public function clearSpeed() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.speed$field = new uint();
      }
      
      public function get hasSpeed() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set speed(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.speed$field = param1;
      }
      
      public function get speed() : uint
      {
         return this.speed$field;
      }
      
      public function clearControlValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.control_value$field = new uint();
      }
      
      public function get hasControlValue() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set controlValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.control_value$field = param1;
      }
      
      public function get controlValue() : uint
      {
         return this.control_value$field;
      }
      
      public function clearCritValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.crit_value$field = new uint();
      }
      
      public function get hasCritValue() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set critValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.crit_value$field = param1;
      }
      
      public function get critValue() : uint
      {
         return this.crit_value$field;
      }
      
      public function clearComboValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.combo_value$field = new uint();
      }
      
      public function get hasComboValue() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set comboValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.combo_value$field = param1;
      }
      
      public function get comboValue() : uint
      {
         return this.combo_value$field;
      }
      
      public function clearCritDamageValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.crit_damage_value$field = new uint();
      }
      
      public function get hasCritDamageValue() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set critDamageValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.crit_damage_value$field = param1;
      }
      
      public function get critDamageValue() : uint
      {
         return this.crit_damage_value$field;
      }
      
      public function clearBodyPenetrateValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.body_penetrate_value$field = new uint();
      }
      
      public function get hasBodyPenetrateValue() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set bodyPenetrateValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.body_penetrate_value$field = param1;
      }
      
      public function get bodyPenetrateValue() : uint
      {
         return this.body_penetrate_value$field;
      }
      
      public function clearNinjaPenetrateValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294950911E9;
         this.ninja_penetrate_value$field = new uint();
      }
      
      public function get hasNinjaPenetrateValue() : Boolean
      {
         return (this.hasField$0 & 16384) != 0;
      }
      
      public function set ninjaPenetrateValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16384;
         this.ninja_penetrate_value$field = param1;
      }
      
      public function get ninjaPenetrateValue() : uint
      {
         return this.ninja_penetrate_value$field;
      }
      
      public function clearDamageReduceValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294934527E9;
         this.damage_reduce_value$field = new uint();
      }
      
      public function get hasDamageReduceValue() : Boolean
      {
         return (this.hasField$0 & 32768) != 0;
      }
      
      public function set damageReduceValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32768;
         this.damage_reduce_value$field = param1;
      }
      
      public function get damageReduceValue() : uint
      {
         return this.damage_reduce_value$field;
      }
      
      public function clearHpRestore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294901759E9;
         this.hp_restore$field = new uint();
      }
      
      public function get hasHpRestore() : Boolean
      {
         return (this.hasField$0 & 65536) != 0;
      }
      
      public function set hpRestore(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 65536;
         this.hp_restore$field = param1;
      }
      
      public function get hpRestore() : uint
      {
         return this.hp_restore$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.level$field);
         }
         if(this.hasGiftNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.gift_num$field);
         }
         if(this.hasNinjaNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_num$field);
         }
         if(this.hasMaxHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.max_hp$field);
         }
         if(this.hasBodyAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.body_attack$field);
         }
         if(this.hasBodyDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.body_defense$field);
         }
         if(this.hasNinjaAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_attack$field);
         }
         if(this.hasNinjaDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_defense$field);
         }
         if(this.hasSpeed)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.speed$field);
         }
         if(this.hasControlValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.control_value$field);
         }
         if(this.hasCritValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.crit_value$field);
         }
         if(this.hasComboValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.combo_value$field);
         }
         if(this.hasCritDamageValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT32(param1,this.crit_damage_value$field);
         }
         if(this.hasBodyPenetrateValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_UINT32(param1,this.body_penetrate_value$field);
         }
         if(this.hasNinjaPenetrateValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_penetrate_value$field);
         }
         if(this.hasDamageReduceValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_UINT32(param1,this.damage_reduce_value$field);
         }
         if(this.hasHpRestore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,17);
            WriteUtils.write$TYPE_UINT32(param1,this.hp_restore$field);
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
          * Error type: IndexOutOfBoundsException (Index: 17, Size: 17)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
