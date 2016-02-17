package serverProto.rolePromote
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPromoteAttrInfo extends Message
   {
      
      public static const OLD_ROLE_PROMOTE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_promote_level","oldRolePromoteLevel",4 << 3 | WireType.VARINT);
      
      public static const OLD_ROLE_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_hp","oldRoleHp",5 << 3 | WireType.VARINT);
      
      public static const OLD_ROLE_BODY_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_body_attack","oldRoleBodyAttack",6 << 3 | WireType.VARINT);
      
      public static const OLD_ROLE_BODY_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_body_defense","oldRoleBodyDefense",7 << 3 | WireType.VARINT);
      
      public static const OLD_ROLE_NINJA_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_ninja_attack","oldRoleNinjaAttack",8 << 3 | WireType.VARINT);
      
      public static const OLD_ROLE_NINJA_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_ninja_defense","oldRoleNinjaDefense",9 << 3 | WireType.VARINT);
      
      public static const OLD_ROLE_NINJA_ALL_ATTR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.old_role_ninja_all_attr","oldRoleNinjaAllAttr",10 << 3 | WireType.VARINT);
      
      public static const NEW_ROLE_PROMOTE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_promote_level","newRolePromoteLevel",11 << 3 | WireType.VARINT);
      
      public static const NEW_ROLE_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_hp","newRoleHp",12 << 3 | WireType.VARINT);
      
      public static const NEW_ROLE_BODY_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_body_attack","newRoleBodyAttack",13 << 3 | WireType.VARINT);
      
      public static const NEW_ROLE_BODY_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_body_defense","newRoleBodyDefense",14 << 3 | WireType.VARINT);
      
      public static const NEW_ROLE_NINJA_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_ninja_attack","newRoleNinjaAttack",15 << 3 | WireType.VARINT);
      
      public static const NEW_ROLE_NINJA_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_ninja_defense","newRoleNinjaDefense",16 << 3 | WireType.VARINT);
      
      public static const NEW_ROLE_NINJA_ALL_ATTR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoPromoteAttrInfo.new_role_ninja_all_attr","newRoleNinjaAllAttr",20 << 3 | WireType.VARINT);
       
      private var old_role_promote_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var old_role_hp$field:int;
      
      private var old_role_body_attack$field:int;
      
      private var old_role_body_defense$field:int;
      
      private var old_role_ninja_attack$field:int;
      
      private var old_role_ninja_defense$field:int;
      
      private var old_role_ninja_all_attr$field:int;
      
      private var new_role_promote_level$field:int;
      
      private var new_role_hp$field:int;
      
      private var new_role_body_attack$field:int;
      
      private var new_role_body_defense$field:int;
      
      private var new_role_ninja_attack$field:int;
      
      private var new_role_ninja_defense$field:int;
      
      private var new_role_ninja_all_attr$field:int;
      
      public function ProtoPromoteAttrInfo()
      {
         super();
      }
      
      public function clearOldRolePromoteLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.old_role_promote_level$field = new int();
      }
      
      public function get hasOldRolePromoteLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set oldRolePromoteLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.old_role_promote_level$field = param1;
      }
      
      public function get oldRolePromoteLevel() : int
      {
         return this.old_role_promote_level$field;
      }
      
      public function clearOldRoleHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.old_role_hp$field = new int();
      }
      
      public function get hasOldRoleHp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set oldRoleHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.old_role_hp$field = param1;
      }
      
      public function get oldRoleHp() : int
      {
         return this.old_role_hp$field;
      }
      
      public function clearOldRoleBodyAttack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.old_role_body_attack$field = new int();
      }
      
      public function get hasOldRoleBodyAttack() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set oldRoleBodyAttack(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.old_role_body_attack$field = param1;
      }
      
      public function get oldRoleBodyAttack() : int
      {
         return this.old_role_body_attack$field;
      }
      
      public function clearOldRoleBodyDefense() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.old_role_body_defense$field = new int();
      }
      
      public function get hasOldRoleBodyDefense() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set oldRoleBodyDefense(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.old_role_body_defense$field = param1;
      }
      
      public function get oldRoleBodyDefense() : int
      {
         return this.old_role_body_defense$field;
      }
      
      public function clearOldRoleNinjaAttack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.old_role_ninja_attack$field = new int();
      }
      
      public function get hasOldRoleNinjaAttack() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set oldRoleNinjaAttack(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.old_role_ninja_attack$field = param1;
      }
      
      public function get oldRoleNinjaAttack() : int
      {
         return this.old_role_ninja_attack$field;
      }
      
      public function clearOldRoleNinjaDefense() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.old_role_ninja_defense$field = new int();
      }
      
      public function get hasOldRoleNinjaDefense() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set oldRoleNinjaDefense(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.old_role_ninja_defense$field = param1;
      }
      
      public function get oldRoleNinjaDefense() : int
      {
         return this.old_role_ninja_defense$field;
      }
      
      public function clearOldRoleNinjaAllAttr() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.old_role_ninja_all_attr$field = new int();
      }
      
      public function get hasOldRoleNinjaAllAttr() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set oldRoleNinjaAllAttr(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.old_role_ninja_all_attr$field = param1;
      }
      
      public function get oldRoleNinjaAllAttr() : int
      {
         return this.old_role_ninja_all_attr$field;
      }
      
      public function clearNewRolePromoteLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.new_role_promote_level$field = new int();
      }
      
      public function get hasNewRolePromoteLevel() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set newRolePromoteLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.new_role_promote_level$field = param1;
      }
      
      public function get newRolePromoteLevel() : int
      {
         return this.new_role_promote_level$field;
      }
      
      public function clearNewRoleHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.new_role_hp$field = new int();
      }
      
      public function get hasNewRoleHp() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set newRoleHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.new_role_hp$field = param1;
      }
      
      public function get newRoleHp() : int
      {
         return this.new_role_hp$field;
      }
      
      public function clearNewRoleBodyAttack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.new_role_body_attack$field = new int();
      }
      
      public function get hasNewRoleBodyAttack() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set newRoleBodyAttack(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.new_role_body_attack$field = param1;
      }
      
      public function get newRoleBodyAttack() : int
      {
         return this.new_role_body_attack$field;
      }
      
      public function clearNewRoleBodyDefense() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.new_role_body_defense$field = new int();
      }
      
      public function get hasNewRoleBodyDefense() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set newRoleBodyDefense(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.new_role_body_defense$field = param1;
      }
      
      public function get newRoleBodyDefense() : int
      {
         return this.new_role_body_defense$field;
      }
      
      public function clearNewRoleNinjaAttack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.new_role_ninja_attack$field = new int();
      }
      
      public function get hasNewRoleNinjaAttack() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set newRoleNinjaAttack(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.new_role_ninja_attack$field = param1;
      }
      
      public function get newRoleNinjaAttack() : int
      {
         return this.new_role_ninja_attack$field;
      }
      
      public function clearNewRoleNinjaDefense() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.new_role_ninja_defense$field = new int();
      }
      
      public function get hasNewRoleNinjaDefense() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set newRoleNinjaDefense(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.new_role_ninja_defense$field = param1;
      }
      
      public function get newRoleNinjaDefense() : int
      {
         return this.new_role_ninja_defense$field;
      }
      
      public function clearNewRoleNinjaAllAttr() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.new_role_ninja_all_attr$field = new int();
      }
      
      public function get hasNewRoleNinjaAllAttr() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set newRoleNinjaAllAttr(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.new_role_ninja_all_attr$field = param1;
      }
      
      public function get newRoleNinjaAllAttr() : int
      {
         return this.new_role_ninja_all_attr$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasOldRolePromoteLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.old_role_promote_level$field);
         }
         if(this.hasOldRoleHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.old_role_hp$field);
         }
         if(this.hasOldRoleBodyAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.old_role_body_attack$field);
         }
         if(this.hasOldRoleBodyDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.old_role_body_defense$field);
         }
         if(this.hasOldRoleNinjaAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.old_role_ninja_attack$field);
         }
         if(this.hasOldRoleNinjaDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.old_role_ninja_defense$field);
         }
         if(this.hasOldRoleNinjaAllAttr)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_SINT32(param1,this.old_role_ninja_all_attr$field);
         }
         if(this.hasNewRolePromoteLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_SINT32(param1,this.new_role_promote_level$field);
         }
         if(this.hasNewRoleHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_SINT32(param1,this.new_role_hp$field);
         }
         if(this.hasNewRoleBodyAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_SINT32(param1,this.new_role_body_attack$field);
         }
         if(this.hasNewRoleBodyDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_SINT32(param1,this.new_role_body_defense$field);
         }
         if(this.hasNewRoleNinjaAttack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_SINT32(param1,this.new_role_ninja_attack$field);
         }
         if(this.hasNewRoleNinjaDefense)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_SINT32(param1,this.new_role_ninja_defense$field);
         }
         if(this.hasNewRoleNinjaAllAttr)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,20);
            WriteUtils.write$TYPE_SINT32(param1,this.new_role_ninja_all_attr$field);
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
