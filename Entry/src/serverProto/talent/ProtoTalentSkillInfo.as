package serverProto.talent
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
   
   public final class ProtoTalentSkillInfo extends Message
   {
      
      public static const SKILL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoTalentSkillInfo.skill_id","skillId",1 << 3 | WireType.VARINT);
      
      public static const IS_LIGHT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.talent.ProtoTalentSkillInfo.is_light","isLight",2 << 3 | WireType.VARINT);
      
      public static const UNLOCK_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoTalentSkillInfo.unlock_level","unlockLevel",3 << 3 | WireType.VARINT);
       
      public var skillId:uint;
      
      private var is_light$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var unlock_level$field:uint;
      
      public function ProtoTalentSkillInfo()
      {
         super();
      }
      
      public function clearIsLight() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_light$field = new Boolean();
      }
      
      public function get hasIsLight() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isLight(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_light$field = param1;
      }
      
      public function get isLight() : Boolean
      {
         return this.is_light$field;
      }
      
      public function clearUnlockLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.unlock_level$field = new uint();
      }
      
      public function get hasUnlockLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set unlockLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.unlock_level$field = param1;
      }
      
      public function get unlockLevel() : uint
      {
         return this.unlock_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.skillId);
         if(this.hasIsLight)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.is_light$field);
         }
         if(this.hasUnlockLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.unlock_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
