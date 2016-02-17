package serverProto.fashion
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFashionPropertyInfo extends Message
   {
      
      public static const HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoFashionPropertyInfo.hp","hp",1 << 3 | WireType.VARINT);
      
      public static const BODY_ATTACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoFashionPropertyInfo.body_attack","bodyAttack",2 << 3 | WireType.VARINT);
      
      public static const BODY_DEFENSE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoFashionPropertyInfo.body_defense","bodyDefense",3 << 3 | WireType.VARINT);
      
      public static const NINJA_ATTACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoFashionPropertyInfo.ninja_attack","ninjaAttack",4 << 3 | WireType.VARINT);
      
      public static const NINJA_DEFENSE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoFashionPropertyInfo.ninja_defense","ninjaDefense",5 << 3 | WireType.VARINT);
      
      public static const SPEED:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoFashionPropertyInfo.speed","speed",6 << 3 | WireType.VARINT);
      
      public static const CRIT_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoFashionPropertyInfo.crit_value","critValue",7 << 3 | WireType.VARINT);
      
      public static const CRIT_DAMAGE_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoFashionPropertyInfo.crit_damage_value","critDamageValue",8 << 3 | WireType.VARINT);
      
      public static const COMBO_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoFashionPropertyInfo.combo_value","comboValue",9 << 3 | WireType.VARINT);
      
      public static const CONTROL_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoFashionPropertyInfo.control_value","controlValue",10 << 3 | WireType.VARINT);
       
      private var hp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var body_attack$field:int;
      
      private var body_defense$field:int;
      
      private var ninja_attack$field:int;
      
      private var ninja_defense$field:int;
      
      private var speed$field:int;
      
      private var crit_value$field:int;
      
      private var crit_damage_value$field:int;
      
      private var combo_value$field:int;
      
      private var control_value$field:int;
      
      public function ProtoFashionPropertyInfo()
      {
         super();
      }
      
      public function clearHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.hp$field = new int();
      }
      
      public function get hasHp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set hp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.hp$field = param1;
      }
      
      public function get hp() : int
      {
         return this.hp$field;
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
      
      public function clearSpeed() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.speed$field = new int();
      }
      
      public function get hasSpeed() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set speed(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.speed$field = param1;
      }
      
      public function get speed() : int
      {
         return this.speed$field;
      }
      
      public function clearCritValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.crit_value$field = new int();
      }
      
      public function get hasCritValue() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set critValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.crit_value$field = param1;
      }
      
      public function get critValue() : int
      {
         return this.crit_value$field;
      }
      
      public function clearCritDamageValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.crit_damage_value$field = new int();
      }
      
      public function get hasCritDamageValue() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set critDamageValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.crit_damage_value$field = param1;
      }
      
      public function get critDamageValue() : int
      {
         return this.crit_damage_value$field;
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
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.hp$field);
         }
         if(this.hasBodyAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.body_attack$field);
         }
         if(this.hasBodyDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.body_defense$field);
         }
         if(this.hasNinjaAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_attack$field);
         }
         if(this.hasNinjaDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_defense$field);
         }
         if(this.hasSpeed)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.speed$field);
         }
         if(this.hasCritValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.crit_value$field);
         }
         if(this.hasCritDamageValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.crit_damage_value$field);
         }
         if(this.hasComboValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.combo_value$field);
         }
         if(this.hasControlValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.control_value$field);
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
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
