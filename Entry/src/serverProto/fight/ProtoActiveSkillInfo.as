package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoActiveSkillInfo extends Message
   {
      
      public static const SKILL_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoActiveSkillInfo.skill_id","skillId",1 << 3 | WireType.VARINT);
      
      public static const SKILL_INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoActiveSkillInfo.skill_index","skillIndex",2 << 3 | WireType.VARINT);
       
      private var skill_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var skill_index$field:int;
      
      public function ProtoActiveSkillInfo()
      {
         super();
      }
      
      public function clearSkillId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.skill_id$field = new int();
      }
      
      public function get hasSkillId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set skillId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.skill_id$field = param1;
      }
      
      public function get skillId() : int
      {
         return this.skill_id$field;
      }
      
      public function clearSkillIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.skill_index$field = new int();
      }
      
      public function get hasSkillIndex() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set skillIndex(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.skill_index$field = param1;
      }
      
      public function get skillIndex() : int
      {
         return this.skill_index$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasSkillId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.skill_id$field);
         }
         if(this.hasSkillIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.skill_index$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
