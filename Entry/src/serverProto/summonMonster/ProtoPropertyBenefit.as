package serverProto.summonMonster
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPropertyBenefit extends Message
   {
      
      public static const HP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoPropertyBenefit.hp","hp",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPropertyValue);
      
      public static const BODY_ATTACK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoPropertyBenefit.body_attack","bodyAttack",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPropertyValue);
      
      public static const BODY_DEFENSE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoPropertyBenefit.body_defense","bodyDefense",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPropertyValue);
      
      public static const NINJA_ATTACK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoPropertyBenefit.ninja_attack","ninjaAttack",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPropertyValue);
      
      public static const NINJA_DEFENSE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoPropertyBenefit.ninja_defense","ninjaDefense",5 << 3 | WireType.LENGTH_DELIMITED,ProtoPropertyValue);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoPropertyBenefit.combat_power","combatPower",6 << 3 | WireType.VARINT);
       
      private var hp$field:serverProto.summonMonster.ProtoPropertyValue;
      
      private var body_attack$field:serverProto.summonMonster.ProtoPropertyValue;
      
      private var body_defense$field:serverProto.summonMonster.ProtoPropertyValue;
      
      private var ninja_attack$field:serverProto.summonMonster.ProtoPropertyValue;
      
      private var ninja_defense$field:serverProto.summonMonster.ProtoPropertyValue;
      
      private var combat_power$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoPropertyBenefit()
      {
         super();
      }
      
      public function clearHp() : void
      {
         this.hp$field = null;
      }
      
      public function get hasHp() : Boolean
      {
         return this.hp$field != null;
      }
      
      public function set hp(param1:serverProto.summonMonster.ProtoPropertyValue) : void
      {
         this.hp$field = param1;
      }
      
      public function get hp() : serverProto.summonMonster.ProtoPropertyValue
      {
         return this.hp$field;
      }
      
      public function clearBodyAttack() : void
      {
         this.body_attack$field = null;
      }
      
      public function get hasBodyAttack() : Boolean
      {
         return this.body_attack$field != null;
      }
      
      public function set bodyAttack(param1:serverProto.summonMonster.ProtoPropertyValue) : void
      {
         this.body_attack$field = param1;
      }
      
      public function get bodyAttack() : serverProto.summonMonster.ProtoPropertyValue
      {
         return this.body_attack$field;
      }
      
      public function clearBodyDefense() : void
      {
         this.body_defense$field = null;
      }
      
      public function get hasBodyDefense() : Boolean
      {
         return this.body_defense$field != null;
      }
      
      public function set bodyDefense(param1:serverProto.summonMonster.ProtoPropertyValue) : void
      {
         this.body_defense$field = param1;
      }
      
      public function get bodyDefense() : serverProto.summonMonster.ProtoPropertyValue
      {
         return this.body_defense$field;
      }
      
      public function clearNinjaAttack() : void
      {
         this.ninja_attack$field = null;
      }
      
      public function get hasNinjaAttack() : Boolean
      {
         return this.ninja_attack$field != null;
      }
      
      public function set ninjaAttack(param1:serverProto.summonMonster.ProtoPropertyValue) : void
      {
         this.ninja_attack$field = param1;
      }
      
      public function get ninjaAttack() : serverProto.summonMonster.ProtoPropertyValue
      {
         return this.ninja_attack$field;
      }
      
      public function clearNinjaDefense() : void
      {
         this.ninja_defense$field = null;
      }
      
      public function get hasNinjaDefense() : Boolean
      {
         return this.ninja_defense$field != null;
      }
      
      public function set ninjaDefense(param1:serverProto.summonMonster.ProtoPropertyValue) : void
      {
         this.ninja_defense$field = param1;
      }
      
      public function get ninjaDefense() : serverProto.summonMonster.ProtoPropertyValue
      {
         return this.ninja_defense$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.combat_power$field = new int();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set combatPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : int
      {
         return this.combat_power$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasHp)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.hp$field);
         }
         if(this.hasBodyAttack)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.body_attack$field);
         }
         if(this.hasBodyDefense)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.body_defense$field);
         }
         if(this.hasNinjaAttack)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_attack$field);
         }
         if(this.hasNinjaDefense)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_defense$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.combat_power$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
