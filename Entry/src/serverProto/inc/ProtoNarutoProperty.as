package serverProto.inc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNarutoProperty extends Message
   {
      
      public static const MAX_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.max_hp","maxHp",1 << 3 | WireType.VARINT);
      
      public static const BODY_ATTACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.body_attack","bodyAttack",2 << 3 | WireType.VARINT);
      
      public static const BODY_DEFENSE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.body_defense","bodyDefense",3 << 3 | WireType.VARINT);
      
      public static const NINJA_ATTACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.ninja_attack","ninjaAttack",4 << 3 | WireType.VARINT);
      
      public static const NINJA_DEFENSE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.ninja_defense","ninjaDefense",5 << 3 | WireType.VARINT);
      
      public static const COMBAT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.combat","combat",6 << 3 | WireType.VARINT);
       
      private var max_hp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var body_attack$field:int;
      
      private var body_defense$field:int;
      
      private var ninja_attack$field:int;
      
      private var ninja_defense$field:int;
      
      private var combat$field:int;
      
      public function ProtoNarutoProperty()
      {
         super();
      }
      
      public function clearMaxHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.max_hp$field = new int();
      }
      
      public function get hasMaxHp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set maxHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.max_hp$field = param1;
      }
      
      public function get maxHp() : int
      {
         return this.max_hp$field;
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
      
      public function clearCombat() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.combat$field = new int();
      }
      
      public function get hasCombat() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set combat(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.combat$field = param1;
      }
      
      public function get combat() : int
      {
         return this.combat$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasMaxHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.max_hp$field);
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
         if(this.hasCombat)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.combat$field);
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
