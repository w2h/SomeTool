package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoKathaSkillResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoKathaSkillResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TEAM_KATHA_CHANGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoKathaSkillResponse.team_katha_change","teamKathaChange",2 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamKathaChange);
      
      public static const TEAM_SKILL_STATE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoKathaSkillResponse.team_skill_state","teamSkillState",3 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamInfo);
       
      public var ret:ProtoRetInfo;
      
      private var team_katha_change$field:serverProto.fight.ProtoTeamKathaChange;
      
      [ArrayElementType("serverProto.fight.ProtoTeamInfo")]
      public var teamSkillState:Array;
      
      public function ProtoKathaSkillResponse()
      {
         this.teamSkillState = [];
         super();
      }
      
      public function clearTeamKathaChange() : void
      {
         this.team_katha_change$field = null;
      }
      
      public function get hasTeamKathaChange() : Boolean
      {
         return this.team_katha_change$field != null;
      }
      
      public function set teamKathaChange(param1:serverProto.fight.ProtoTeamKathaChange) : void
      {
         this.team_katha_change$field = param1;
      }
      
      public function get teamKathaChange() : serverProto.fight.ProtoTeamKathaChange
      {
         return this.team_katha_change$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasTeamKathaChange)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.team_katha_change$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.teamSkillState.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.teamSkillState[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
