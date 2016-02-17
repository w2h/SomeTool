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
   
   public final class ProtoFamilyNinjaConf extends Message
   {
      
      public static const MAX_HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaConf.max_hp","maxHp",1 << 3 | WireType.VARINT);
      
      public static const BODY_ATTACK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaConf.body_attack","bodyAttack",2 << 3 | WireType.VARINT);
      
      public static const BODY_DEFENSE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaConf.body_defense","bodyDefense",3 << 3 | WireType.VARINT);
      
      public static const NINJA_ATTACK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaConf.ninja_attack","ninjaAttack",4 << 3 | WireType.VARINT);
      
      public static const NINJA_DEFENSE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaConf.ninja_defense","ninjaDefense",5 << 3 | WireType.VARINT);
      
      public static const TASK_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaConf.task_id","taskId",6 << 3 | WireType.VARINT);
      
      public static const HAS_TASK_NEXT_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaConf.has_task_next_level","hasTaskNextLevel",7 << 3 | WireType.VARINT);
       
      private var max_hp$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var body_attack$field:uint;
      
      private var body_defense$field:uint;
      
      private var ninja_attack$field:uint;
      
      private var ninja_defense$field:uint;
      
      private var task_id$field:uint;
      
      private var has_task_next_level$field:uint;
      
      public function ProtoFamilyNinjaConf()
      {
         super();
      }
      
      public function clearMaxHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.max_hp$field = new uint();
      }
      
      public function get hasMaxHp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set maxHp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.max_hp$field = param1;
      }
      
      public function get maxHp() : uint
      {
         return this.max_hp$field;
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
      
      public function clearTaskId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.task_id$field = new uint();
      }
      
      public function get hasTaskId() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set taskId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.task_id$field = param1;
      }
      
      public function get taskId() : uint
      {
         return this.task_id$field;
      }
      
      public function clearHasTaskNextLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.has_task_next_level$field = new uint();
      }
      
      public function get hasHasTaskNextLevel() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set hasTaskNextLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.has_task_next_level$field = param1;
      }
      
      public function get hasTaskNextLevel() : uint
      {
         return this.has_task_next_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasMaxHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.max_hp$field);
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
         if(this.hasTaskId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.task_id$field);
         }
         if(this.hasHasTaskNextLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.has_task_next_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
