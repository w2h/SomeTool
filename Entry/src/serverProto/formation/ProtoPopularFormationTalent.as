package serverProto.formation
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPopularFormationTalent extends Message
   {
      
      public static const PAGE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.formation.ProtoPopularFormationTalent.page_name","pageName",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CHOSEN_AWAKEN_SKILL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationTalent.chosen_awaken_skill","chosenAwakenSkill",2 << 3 | WireType.VARINT);
      
      public static const CHOSEN_COMMON_SKILL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationTalent.chosen_common_skill","chosenCommonSkill",3 << 3 | WireType.VARINT);
      
      public static const CHOSEN_TALENT_SKILLS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoPopularFormationTalent.chosen_talent_skills","chosenTalentSkills",4 << 3 | WireType.VARINT);
       
      private var page_name$field:String;
      
      private var chosen_awaken_skill$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var chosen_common_skill$field:uint;
      
      [ArrayElementType("uint")]
      public var chosenTalentSkills:Array;
      
      public function ProtoPopularFormationTalent()
      {
         this.chosenTalentSkills = [];
         super();
      }
      
      public function clearPageName() : void
      {
         this.page_name$field = null;
      }
      
      public function get hasPageName() : Boolean
      {
         return this.page_name$field != null;
      }
      
      public function set pageName(param1:String) : void
      {
         this.page_name$field = param1;
      }
      
      public function get pageName() : String
      {
         return this.page_name$field;
      }
      
      public function clearChosenAwakenSkill() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.chosen_awaken_skill$field = new uint();
      }
      
      public function get hasChosenAwakenSkill() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set chosenAwakenSkill(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.chosen_awaken_skill$field = param1;
      }
      
      public function get chosenAwakenSkill() : uint
      {
         return this.chosen_awaken_skill$field;
      }
      
      public function clearChosenCommonSkill() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.chosen_common_skill$field = new uint();
      }
      
      public function get hasChosenCommonSkill() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set chosenCommonSkill(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.chosen_common_skill$field = param1;
      }
      
      public function get chosenCommonSkill() : uint
      {
         return this.chosen_common_skill$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasPageName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_STRING(param1,this.page_name$field);
         }
         if(this.hasChosenAwakenSkill)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.chosen_awaken_skill$field);
         }
         if(this.hasChosenCommonSkill)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.chosen_common_skill$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.chosenTalentSkills.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.chosenTalentSkills[_loc2_]);
            _loc2_++;
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
