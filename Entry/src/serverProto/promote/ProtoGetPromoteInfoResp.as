package serverProto.promote
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetPromoteInfoResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TOTAL_COMBAT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.promote.ProtoGetPromoteInfoResp.total_combat","totalCombat",2 << 3 | WireType.VARINT);
      
      public static const NINJA_PROPS_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.ninja_props_progress","ninjaPropsProgress",3 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const HUNT_LIFE_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.hunt_life_progress","huntLifeProgress",4 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const GUILD_SKILL_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.guild_skill_progress","guildSkillProgress",5 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const ROLE_PROMOTE_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.role_promote_progress","rolePromoteProgress",6 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const LEFT:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.left","left",7 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const NINJA_PROMOTE_INFO_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetPromoteInfoResp.ninja_promote_info_list","ninjaPromoteInfoList",8 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPromoteInfo);
       
      public var ret:ProtoRetInfo;
      
      private var total_combat$field:int;
      
      private var hasField$0:uint = 0;
      
      private var ninja_props_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var hunt_life_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var guild_skill_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var role_promote_progress$field:serverProto.promote.ProtoProgressBar;
      
      [ArrayElementType("serverProto.promote.ProtoProgressBar")]
      public var left:Array;
      
      [ArrayElementType("serverProto.promote.ProtoNinjaPromoteInfo")]
      public var ninjaPromoteInfoList:Array;
      
      public function ProtoGetPromoteInfoResp()
      {
         this.left = [];
         this.ninjaPromoteInfoList = [];
         super();
      }
      
      public function clearTotalCombat() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.total_combat$field = new int();
      }
      
      public function get hasTotalCombat() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set totalCombat(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.total_combat$field = param1;
      }
      
      public function get totalCombat() : int
      {
         return this.total_combat$field;
      }
      
      public function clearNinjaPropsProgress() : void
      {
         this.ninja_props_progress$field = null;
      }
      
      public function get hasNinjaPropsProgress() : Boolean
      {
         return this.ninja_props_progress$field != null;
      }
      
      public function set ninjaPropsProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.ninja_props_progress$field = param1;
      }
      
      public function get ninjaPropsProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.ninja_props_progress$field;
      }
      
      public function clearHuntLifeProgress() : void
      {
         this.hunt_life_progress$field = null;
      }
      
      public function get hasHuntLifeProgress() : Boolean
      {
         return this.hunt_life_progress$field != null;
      }
      
      public function set huntLifeProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.hunt_life_progress$field = param1;
      }
      
      public function get huntLifeProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.hunt_life_progress$field;
      }
      
      public function clearGuildSkillProgress() : void
      {
         this.guild_skill_progress$field = null;
      }
      
      public function get hasGuildSkillProgress() : Boolean
      {
         return this.guild_skill_progress$field != null;
      }
      
      public function set guildSkillProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.guild_skill_progress$field = param1;
      }
      
      public function get guildSkillProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.guild_skill_progress$field;
      }
      
      public function clearRolePromoteProgress() : void
      {
         this.role_promote_progress$field = null;
      }
      
      public function get hasRolePromoteProgress() : Boolean
      {
         return this.role_promote_progress$field != null;
      }
      
      public function set rolePromoteProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.role_promote_progress$field = param1;
      }
      
      public function get rolePromoteProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.role_promote_progress$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasTotalCombat)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.total_combat$field);
         }
         if(this.hasNinjaPropsProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_props_progress$field);
         }
         if(this.hasHuntLifeProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.hunt_life_progress$field);
         }
         if(this.hasGuildSkillProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.guild_skill_progress$field);
         }
         if(this.hasRolePromoteProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.role_promote_progress$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.left.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.left[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.ninjaPromoteInfoList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaPromoteInfoList[_loc3_]);
            _loc3_++;
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
