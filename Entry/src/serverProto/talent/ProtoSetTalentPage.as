package serverProto.talent
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSetTalentPage extends Message
   {
      
      public static const PAGE_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoSetTalentPage.page_index","pageIndex",1 << 3 | WireType.VARINT);
      
      public static const PAGE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.talent.ProtoSetTalentPage.page_name","pageName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const AWAKEN_SKILL_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoSetTalentPage.awaken_skill_index","awakenSkillIndex",3 << 3 | WireType.VARINT);
      
      public static const COMMON_SKILL_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoSetTalentPage.common_skill_index","commonSkillIndex",4 << 3 | WireType.VARINT);
      
      public static const TALENT_GROUPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoSetTalentPage.talent_groups","talentGroups",5 << 3 | WireType.LENGTH_DELIMITED,ProtoSetTalentGroup);
      
      public static const SUMMON_MONSTER_SKILL_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoSetTalentPage.summon_monster_skill_index","summonMonsterSkillIndex",6 << 3 | WireType.VARINT);
       
      public var pageIndex:uint;
      
      private var page_name$field:String;
      
      private var awaken_skill_index$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var common_skill_index$field:uint;
      
      [ArrayElementType("serverProto.talent.ProtoSetTalentGroup")]
      public var talentGroups:Array;
      
      private var summon_monster_skill_index$field:uint;
      
      public function ProtoSetTalentPage()
      {
         this.talentGroups = [];
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
      
      public function clearAwakenSkillIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.awaken_skill_index$field = new uint();
      }
      
      public function get hasAwakenSkillIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set awakenSkillIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.awaken_skill_index$field = param1;
      }
      
      public function get awakenSkillIndex() : uint
      {
         return this.awaken_skill_index$field;
      }
      
      public function clearCommonSkillIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.common_skill_index$field = new uint();
      }
      
      public function get hasCommonSkillIndex() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set commonSkillIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.common_skill_index$field = param1;
      }
      
      public function get commonSkillIndex() : uint
      {
         return this.common_skill_index$field;
      }
      
      public function clearSummonMonsterSkillIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.summon_monster_skill_index$field = new uint();
      }
      
      public function get hasSummonMonsterSkillIndex() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set summonMonsterSkillIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.summon_monster_skill_index$field = param1;
      }
      
      public function get summonMonsterSkillIndex() : uint
      {
         return this.summon_monster_skill_index$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.pageIndex);
         if(this.hasPageName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.page_name$field);
         }
         if(this.hasAwakenSkillIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.awaken_skill_index$field);
         }
         if(this.hasCommonSkillIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.common_skill_index$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.talentGroups.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.talentGroups[_loc2_]);
            _loc2_++;
         }
         if(this.hasSummonMonsterSkillIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.summon_monster_skill_index$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
