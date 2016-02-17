package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFightMemberBenefit extends Message
   {
      
      public static const NINJA_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightMemberBenefit.ninja_pos","ninjaPos",1 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightMemberBenefit.exp","exp",2 << 3 | WireType.VARINT);
      
      public static const IS_LEVEL_UP:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoFightMemberBenefit.is_level_up","isLevelUp",3 << 3 | WireType.VARINT);
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightMemberBenefit.id","id",4 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightMemberBenefit.level","level",5 << 3 | WireType.VARINT);
      
      public static const SKILL_LIST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightMemberBenefit.skill_list","skillList",6 << 3 | WireType.VARINT);
       
      public var ninjaPos:uint;
      
      public var exp:uint;
      
      private var is_level_up$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var id$field:uint;
      
      private var level$field:uint;
      
      private var skill_list$field:uint;
      
      public function ProtoFightMemberBenefit()
      {
         super();
      }
      
      public function clearIsLevelUp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_level_up$field = new Boolean();
      }
      
      public function get hasIsLevelUp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isLevelUp(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_level_up$field = param1;
      }
      
      public function get isLevelUp() : Boolean
      {
         return this.is_level_up$field;
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.id$field = new uint();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set id(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.id$field = param1;
      }
      
      public function get id() : uint
      {
         return this.id$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.level$field = new uint();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set level(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.level$field = param1;
      }
      
      public function get level() : uint
      {
         return this.level$field;
      }
      
      public function clearSkillList() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.skill_list$field = new uint();
      }
      
      public function get hasSkillList() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set skillList(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.skill_list$field = param1;
      }
      
      public function get skillList() : uint
      {
         return this.skill_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaPos);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.exp);
         if(this.hasIsLevelUp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.is_level_up$field);
         }
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.id$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.level$field);
         }
         if(this.hasSkillList)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.skill_list$field);
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
