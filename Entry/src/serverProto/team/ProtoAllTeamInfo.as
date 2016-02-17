package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoAllTeamInfo extends Message
   {
      
      public static const TEAM_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.team.ProtoAllTeamInfo.team_id","teamId",1 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoAllTeamInfo.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.combat_power","combatPower",3 << 3 | WireType.VARINT);
      
      public static const CAPTAIN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.captain_level","captainLevel",4 << 3 | WireType.VARINT);
      
      public static const MEMBER_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoAllTeamInfo.member_info","memberInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamMemberInfo);
      
      public static const GOAL_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoAllTeamInfo.goal_type","goalType",6 << 3 | WireType.VARINT,ProtoTeamType);
      
      public static const GOAL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.goal_id","goalId",7 << 3 | WireType.VARINT);
      
      public static const CURRENT_MAP_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.current_map_id","currentMapId",8 << 3 | WireType.VARINT);
      
      public static const ALLOW_AUTO_JOIN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.team.ProtoAllTeamInfo.allow_auto_join","allowAutoJoin",9 << 3 | WireType.VARINT);
      
      public static const AUTO_JOIN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.auto_join_level","autoJoinLevel",10 << 3 | WireType.VARINT);
      
      public static const IS_IDLE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.team.ProtoAllTeamInfo.is_idle","isIdle",11 << 3 | WireType.VARINT);
      
      public static const GUILD_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAllTeamInfo.guild_level","guildLevel",12 << 3 | WireType.VARINT);
       
      public var teamId:UInt64;
      
      private var name$field:String;
      
      private var combat_power$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var captain_level$field:uint;
      
      [ArrayElementType("serverProto.team.ProtoTeamMemberInfo")]
      public var memberInfo:Array;
      
      private var goal_type$field:int;
      
      private var goal_id$field:uint;
      
      private var current_map_id$field:uint;
      
      private var allow_auto_join$field:Boolean;
      
      private var auto_join_level$field:uint;
      
      private var is_idle$field:Boolean;
      
      private var guild_level$field:uint;
      
      public function ProtoAllTeamInfo()
      {
         this.memberInfo = [];
         super();
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.combat_power$field = new uint();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set combatPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : uint
      {
         return this.combat_power$field;
      }
      
      public function clearCaptainLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.captain_level$field = new uint();
      }
      
      public function get hasCaptainLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set captainLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.captain_level$field = param1;
      }
      
      public function get captainLevel() : uint
      {
         return this.captain_level$field;
      }
      
      public function clearGoalType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.goal_type$field = new int();
      }
      
      public function get hasGoalType() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set goalType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.goal_type$field = param1;
      }
      
      public function get goalType() : int
      {
         return this.goal_type$field;
      }
      
      public function clearGoalId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.goal_id$field = new uint();
      }
      
      public function get hasGoalId() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set goalId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.goal_id$field = param1;
      }
      
      public function get goalId() : uint
      {
         return this.goal_id$field;
      }
      
      public function clearCurrentMapId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.current_map_id$field = new uint();
      }
      
      public function get hasCurrentMapId() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set currentMapId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.current_map_id$field = param1;
      }
      
      public function get currentMapId() : uint
      {
         return this.current_map_id$field;
      }
      
      public function clearAllowAutoJoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.allow_auto_join$field = new Boolean();
      }
      
      public function get hasAllowAutoJoin() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set allowAutoJoin(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.allow_auto_join$field = param1;
      }
      
      public function get allowAutoJoin() : Boolean
      {
         return this.allow_auto_join$field;
      }
      
      public function clearAutoJoinLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.auto_join_level$field = new uint();
      }
      
      public function get hasAutoJoinLevel() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set autoJoinLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.auto_join_level$field = param1;
      }
      
      public function get autoJoinLevel() : uint
      {
         return this.auto_join_level$field;
      }
      
      public function clearIsIdle() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.is_idle$field = new Boolean();
      }
      
      public function get hasIsIdle() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set isIdle(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.is_idle$field = param1;
      }
      
      public function get isIdle() : Boolean
      {
         return this.is_idle$field;
      }
      
      public function clearGuildLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.guild_level$field = new uint();
      }
      
      public function get hasGuildLevel() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set guildLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.guild_level$field = param1;
      }
      
      public function get guildLevel() : uint
      {
         return this.guild_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT64(param1,this.teamId);
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.combat_power$field);
         }
         if(this.hasCaptainLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.captain_level$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.memberInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.memberInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasGoalType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_ENUM(param1,this.goal_type$field);
         }
         if(this.hasGoalId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.goal_id$field);
         }
         if(this.hasCurrentMapId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.current_map_id$field);
         }
         if(this.hasAllowAutoJoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_BOOL(param1,this.allow_auto_join$field);
         }
         if(this.hasAutoJoinLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.auto_join_level$field);
         }
         if(this.hasIsIdle)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_BOOL(param1,this.is_idle$field);
         }
         if(this.hasGuildLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
