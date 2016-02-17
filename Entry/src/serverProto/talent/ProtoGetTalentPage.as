package serverProto.talent
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetTalentPage extends Message
   {
      
      public static const PAGE_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoGetTalentPage.page_index","pageIndex",1 << 3 | WireType.VARINT);
      
      public static const PAGE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.talent.ProtoGetTalentPage.page_name","pageName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const AWAKEN_GROUP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentPage.awaken_group","awakenGroup",3 << 3 | WireType.LENGTH_DELIMITED,ProtoTalentSkillRow);
      
      public static const COMMON_GROUP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentPage.common_group","commonGroup",4 << 3 | WireType.LENGTH_DELIMITED,ProtoTalentSkillRow);
      
      public static const TALENT_GROUPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentPage.talent_groups","talentGroups",5 << 3 | WireType.LENGTH_DELIMITED,ProtoTalentSkillRow);
      
      public static const SUMMON_MONSTER_GROUPS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentPage.summon_monster_groups","summonMonsterGroups",6 << 3 | WireType.LENGTH_DELIMITED,ProtoTalentSkillRow);
       
      public var pageIndex:uint;
      
      private var page_name$field:String;
      
      private var awaken_group$field:serverProto.talent.ProtoTalentSkillRow;
      
      private var common_group$field:serverProto.talent.ProtoTalentSkillRow;
      
      [ArrayElementType("serverProto.talent.ProtoTalentSkillRow")]
      public var talentGroups:Array;
      
      private var summon_monster_groups$field:serverProto.talent.ProtoTalentSkillRow;
      
      public function ProtoGetTalentPage()
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
      
      public function clearAwakenGroup() : void
      {
         this.awaken_group$field = null;
      }
      
      public function get hasAwakenGroup() : Boolean
      {
         return this.awaken_group$field != null;
      }
      
      public function set awakenGroup(param1:serverProto.talent.ProtoTalentSkillRow) : void
      {
         this.awaken_group$field = param1;
      }
      
      public function get awakenGroup() : serverProto.talent.ProtoTalentSkillRow
      {
         return this.awaken_group$field;
      }
      
      public function clearCommonGroup() : void
      {
         this.common_group$field = null;
      }
      
      public function get hasCommonGroup() : Boolean
      {
         return this.common_group$field != null;
      }
      
      public function set commonGroup(param1:serverProto.talent.ProtoTalentSkillRow) : void
      {
         this.common_group$field = param1;
      }
      
      public function get commonGroup() : serverProto.talent.ProtoTalentSkillRow
      {
         return this.common_group$field;
      }
      
      public function clearSummonMonsterGroups() : void
      {
         this.summon_monster_groups$field = null;
      }
      
      public function get hasSummonMonsterGroups() : Boolean
      {
         return this.summon_monster_groups$field != null;
      }
      
      public function set summonMonsterGroups(param1:serverProto.talent.ProtoTalentSkillRow) : void
      {
         this.summon_monster_groups$field = param1;
      }
      
      public function get summonMonsterGroups() : serverProto.talent.ProtoTalentSkillRow
      {
         return this.summon_monster_groups$field;
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
         if(this.hasAwakenGroup)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.awaken_group$field);
         }
         if(this.hasCommonGroup)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.common_group$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.talentGroups.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.talentGroups[_loc2_]);
            _loc2_++;
         }
         if(this.hasSummonMonsterGroups)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.summon_monster_groups$field);
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
