package serverProto.inc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.ReadUtils;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WriteUtils;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.used_by_generated_code;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class ProtoNaurtoAllPropertyInfo extends Message
   {
      
      public static const HP_ULIMIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.hp_ulimit","hpUlimit",1 << 3 | WireType.VARINT);
      
      public static const BODY_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.body_attack","bodyAttack",2 << 3 | WireType.VARINT);
      
      public static const BODY_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.body_defense","bodyDefense",3 << 3 | WireType.VARINT);
      
      public static const NINJA_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.ninja_attack","ninjaAttack",4 << 3 | WireType.VARINT);
      
      public static const NINJA_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.ninja_defense","ninjaDefense",5 << 3 | WireType.VARINT);
      
      public static const CRIT_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.crit_value","critValue",6 << 3 | WireType.VARINT);
      
      public static const CRIT_DAMAGE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.crit_damage_value","critDamageValue",7 << 3 | WireType.VARINT);
      
      public static const SPEED:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.speed","speed",8 << 3 | WireType.VARINT);
      
      public static const COMBO_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.combo_value","comboValue",9 << 3 | WireType.VARINT);
      
      public static const CONTROL_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.control_value","controlValue",10 << 3 | WireType.VARINT);
      
      public static const BODY_PENETRATE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.body_penetrate_value","bodyPenetrateValue",11 << 3 | WireType.VARINT);
      
      public static const NINJA_PENETRATE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.ninja_penetrate_value","ninjaPenetrateValue",12 << 3 | WireType.VARINT);
      
      public static const DAMAGE_REDUCE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.damage_reduce_value","damageReduceValue",13 << 3 | WireType.VARINT);
      
      public static const HP_RESTORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.hp_restore","hpRestore",14 << 3 | WireType.VARINT);
      
      public static const FIRE_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.fire_resist","fireResist",15 << 3 | WireType.VARINT);
      
      public static const WIND_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.wind_resist","windResist",16 << 3 | WireType.VARINT);
      
      public static const THUNDER_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.thunder_resist","thunderResist",17 << 3 | WireType.VARINT);
      
      public static const EARTH_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.earth_resist","earthResist",18 << 3 | WireType.VARINT);
      
      public static const WATER_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.water_resist","waterResist",19 << 3 | WireType.VARINT);
       
      private var hp_ulimit$field:int;
      
      private var hasField$0:uint = 0;
      
      private var body_attack$field:int;
      
      private var body_defense$field:int;
      
      private var ninja_attack$field:int;
      
      private var ninja_defense$field:int;
      
      private var crit_value$field:int;
      
      private var crit_damage_value$field:int;
      
      private var speed$field:int;
      
      private var combo_value$field:int;
      
      private var control_value$field:int;
      
      private var body_penetrate_value$field:int;
      
      private var ninja_penetrate_value$field:int;
      
      private var damage_reduce_value$field:int;
      
      private var hp_restore$field:int;
      
      private var fire_resist$field:int;
      
      private var wind_resist$field:int;
      
      private var thunder_resist$field:int;
      
      private var earth_resist$field:int;
      
      private var water_resist$field:int;
      
      public function ProtoNaurtoAllPropertyInfo()
      {
         super();
      }
      
      public function clearHpUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.hp_ulimit$field = new int();
      }
      
      public function get hasHpUlimit() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set hpUlimit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.hp_ulimit$field = param1;
      }
      
      public function get hpUlimit() : int
      {
         return this.hp_ulimit$field;
      }
      
      public function clearBodyAttack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.body_attack$field = new int();
      }
      
      public function get hasBodyAttack() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set bodyAttack(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.body_attack$field = param1;
      }
      
      public function get bodyAttack() : int
      {
         return this.body_attack$field;
      }
      
      public function clearBodyDefense() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.body_defense$field = new int();
      }
      
      public function get hasBodyDefense() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set bodyDefense(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.body_defense$field = param1;
      }
      
      public function get bodyDefense() : int
      {
         return this.body_defense$field;
      }
      
      public function clearNinjaAttack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.ninja_attack$field = new int();
      }
      
      public function get hasNinjaAttack() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set ninjaAttack(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.ninja_attack$field = param1;
      }
      
      public function get ninjaAttack() : int
      {
         return this.ninja_attack$field;
      }
      
      public function clearNinjaDefense() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.ninja_defense$field = new int();
      }
      
      public function get hasNinjaDefense() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set ninjaDefense(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.ninja_defense$field = param1;
      }
      
      public function get ninjaDefense() : int
      {
         return this.ninja_defense$field;
      }
      
      public function clearCritValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.crit_value$field = new int();
      }
      
      public function get hasCritValue() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set critValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.crit_value$field = param1;
      }
      
      public function get critValue() : int
      {
         return this.crit_value$field;
      }
      
      public function clearCritDamageValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.crit_damage_value$field = new int();
      }
      
      public function get hasCritDamageValue() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set critDamageValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.crit_damage_value$field = param1;
      }
      
      public function get critDamageValue() : int
      {
         return this.crit_damage_value$field;
      }
      
      public function clearSpeed() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.speed$field = new int();
      }
      
      public function get hasSpeed() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set speed(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.speed$field = param1;
      }
      
      public function get speed() : int
      {
         return this.speed$field;
      }
      
      public function clearComboValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.combo_value$field = new int();
      }
      
      public function get hasComboValue() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set comboValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.combo_value$field = param1;
      }
      
      public function get comboValue() : int
      {
         return this.combo_value$field;
      }
      
      public function clearControlValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.control_value$field = new int();
      }
      
      public function get hasControlValue() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set controlValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.control_value$field = param1;
      }
      
      public function get controlValue() : int
      {
         return this.control_value$field;
      }
      
      public function clearBodyPenetrateValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.body_penetrate_value$field = new int();
      }
      
      public function get hasBodyPenetrateValue() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set bodyPenetrateValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.body_penetrate_value$field = param1;
      }
      
      public function get bodyPenetrateValue() : int
      {
         return this.body_penetrate_value$field;
      }
      
      public function clearNinjaPenetrateValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.ninja_penetrate_value$field = new int();
      }
      
      public function get hasNinjaPenetrateValue() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set ninjaPenetrateValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.ninja_penetrate_value$field = param1;
      }
      
      public function get ninjaPenetrateValue() : int
      {
         return this.ninja_penetrate_value$field;
      }
      
      public function clearDamageReduceValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.damage_reduce_value$field = new int();
      }
      
      public function get hasDamageReduceValue() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set damageReduceValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.damage_reduce_value$field = param1;
      }
      
      public function get damageReduceValue() : int
      {
         return this.damage_reduce_value$field;
      }
      
      public function clearHpRestore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.hp_restore$field = new int();
      }
      
      public function get hasHpRestore() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set hpRestore(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.hp_restore$field = param1;
      }
      
      public function get hpRestore() : int
      {
         return this.hp_restore$field;
      }
      
      public function clearFireResist() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294950911E9;
         this.fire_resist$field = new int();
      }
      
      public function get hasFireResist() : Boolean
      {
         return (this.hasField$0 & 16384) != 0;
      }
      
      public function set fireResist(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16384;
         this.fire_resist$field = param1;
      }
      
      public function get fireResist() : int
      {
         return this.fire_resist$field;
      }
      
      public function clearWindResist() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294934527E9;
         this.wind_resist$field = new int();
      }
      
      public function get hasWindResist() : Boolean
      {
         return (this.hasField$0 & 32768) != 0;
      }
      
      public function set windResist(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32768;
         this.wind_resist$field = param1;
      }
      
      public function get windResist() : int
      {
         return this.wind_resist$field;
      }
      
      public function clearThunderResist() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294901759E9;
         this.thunder_resist$field = new int();
      }
      
      public function get hasThunderResist() : Boolean
      {
         return (this.hasField$0 & 65536) != 0;
      }
      
      public function set thunderResist(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 65536;
         this.thunder_resist$field = param1;
      }
      
      public function get thunderResist() : int
      {
         return this.thunder_resist$field;
      }
      
      public function clearEarthResist() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294836223E9;
         this.earth_resist$field = new int();
      }
      
      public function get hasEarthResist() : Boolean
      {
         return (this.hasField$0 & 131072) != 0;
      }
      
      public function set earthResist(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 131072;
         this.earth_resist$field = param1;
      }
      
      public function get earthResist() : int
      {
         return this.earth_resist$field;
      }
      
      public function clearWaterResist() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294705151E9;
         this.water_resist$field = new int();
      }
      
      public function get hasWaterResist() : Boolean
      {
         return (this.hasField$0 & 262144) != 0;
      }
      
      public function set waterResist(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 262144;
         this.water_resist$field = param1;
      }
      
      public function get waterResist() : int
      {
         return this.water_resist$field;
      }
      
      override used_by_generated_code function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasHpUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.hp_ulimit$field);
         }
         if(this.hasBodyAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.body_attack$field);
         }
         if(this.hasBodyDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.body_defense$field);
         }
         if(this.hasNinjaAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_attack$field);
         }
         if(this.hasNinjaDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_defense$field);
         }
         if(this.hasCritValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.crit_value$field);
         }
         if(this.hasCritDamageValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.crit_damage_value$field);
         }
         if(this.hasSpeed)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.speed$field);
         }
         if(this.hasComboValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.combo_value$field);
         }
         if(this.hasControlValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_SINT32(param1,this.control_value$field);
         }
         if(this.hasBodyPenetrateValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_SINT32(param1,this.body_penetrate_value$field);
         }
         if(this.hasNinjaPenetrateValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_penetrate_value$field);
         }
         if(this.hasDamageReduceValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_SINT32(param1,this.damage_reduce_value$field);
         }
         if(this.hasHpRestore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_SINT32(param1,this.hp_restore$field);
         }
         if(this.hasFireResist)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_SINT32(param1,this.fire_resist$field);
         }
         if(this.hasWindResist)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_SINT32(param1,this.wind_resist$field);
         }
         if(this.hasThunderResist)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,17);
            WriteUtils.write$TYPE_SINT32(param1,this.thunder_resist$field);
         }
         if(this.hasEarthResist)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,18);
            WriteUtils.write$TYPE_SINT32(param1,this.earth_resist$field);
         }
         if(this.hasWaterResist)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,19);
            WriteUtils.write$TYPE_SINT32(param1,this.water_resist$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override used_by_generated_code function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 19, Size: 19)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
