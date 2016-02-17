package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoNaurtoAllPropertyInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPlayerTeamPos extends Message
   {
      
      public static const PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPlayerTeamPos.player","player",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPlayerTeamPos.team_id","teamId",2 << 3 | WireType.VARINT);
      
      public static const KATHA_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPlayerTeamPos.katha_value","kathaValue",3 << 3 | WireType.VARINT);
      
      public static const TEAM_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPlayerTeamPos.team_type","teamType",4 << 3 | WireType.VARINT);
      
      public static const STAGE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPlayerTeamPos.stage_info","stageInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoStageInfo);
      
      public static const CONTRACT_PET_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPlayerTeamPos.contract_pet_id","contractPetId",6 << 3 | WireType.VARINT);
      
      public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.fight.ProtoPlayerTeamPos.player_name","playerName",7 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const OFFLINE_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPlayerTeamPos.offline_flag","offlineFlag",8 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.level","level",9 << 3 | WireType.VARINT);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.combat_power","combatPower",10 << 3 | WireType.VARINT);
      
      public static const FACE_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.face_id","faceId",11 << 3 | WireType.VARINT);
      
      public static const MASTER_TEAM:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.master_team","masterTeam",12 << 3 | WireType.VARINT);
      
      public static const HAS_LOADED_RES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.has_loaded_res","hasLoadedRes",13 << 3 | WireType.VARINT);
      
      public static const STANCE_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.stance_id","stanceId",14 << 3 | WireType.VARINT);
      
      public static const SVR_REPLACE_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.svr_replace_flag","svrReplaceFlag",15 << 3 | WireType.VARINT);
      
      public static const AI_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.ai_level","aiLevel",16 << 3 | WireType.VARINT);
      
      public static const ARENA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.arena_level","arenaLevel",17 << 3 | WireType.VARINT);
      
      public static const GUILD_BEAST_ADDITION_PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPlayerTeamPos.guild_beast_addition_property","guildBeastAdditionProperty",18 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const HAS_SUMMON_CONTRACT_PET:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoPlayerTeamPos.has_summon_contract_pet","hasSummonContractPet",19 << 3 | WireType.VARINT);
      
      public static const CONTRACT_PET_COLOR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPlayerTeamPos.contract_pet_color","contractPetColor",20 << 3 | WireType.VARINT);
       
      private var player$field:ProtoPlayerKey;
      
      private var team_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var katha_value$field:uint;
      
      private var team_type$field:uint;
      
      private var stage_info$field:serverProto.fight.ProtoStageInfo;
      
      private var contract_pet_id$field:uint;
      
      private var player_name$field:String;
      
      private var offline_flag$field:uint;
      
      private var level$field:int;
      
      private var combat_power$field:int;
      
      private var face_id$field:int;
      
      private var master_team$field:int;
      
      private var has_loaded_res$field:int;
      
      private var stance_id$field:int;
      
      private var svr_replace_flag$field:int;
      
      private var ai_level$field:int;
      
      private var arena_level$field:int;
      
      private var guild_beast_addition_property$field:ProtoNaurtoAllPropertyInfo;
      
      private var has_summon_contract_pet$field:Boolean;
      
      private var contract_pet_color$field:int;
      
      public function ProtoPlayerTeamPos()
      {
         super();
      }
      
      public function clearPlayer() : void
      {
         this.player$field = null;
      }
      
      public function get hasPlayer() : Boolean
      {
         return this.player$field != null;
      }
      
      public function set player(param1:ProtoPlayerKey) : void
      {
         this.player$field = param1;
      }
      
      public function get player() : ProtoPlayerKey
      {
         return this.player$field;
      }
      
      public function clearTeamId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.team_id$field = new uint();
      }
      
      public function get hasTeamId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set teamId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.team_id$field = param1;
      }
      
      public function get teamId() : uint
      {
         return this.team_id$field;
      }
      
      public function clearKathaValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.katha_value$field = new uint();
      }
      
      public function get hasKathaValue() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set kathaValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.katha_value$field = param1;
      }
      
      public function get kathaValue() : uint
      {
         return this.katha_value$field;
      }
      
      public function clearTeamType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.team_type$field = new uint();
      }
      
      public function get hasTeamType() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set teamType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.team_type$field = param1;
      }
      
      public function get teamType() : uint
      {
         return this.team_type$field;
      }
      
      public function clearStageInfo() : void
      {
         this.stage_info$field = null;
      }
      
      public function get hasStageInfo() : Boolean
      {
         return this.stage_info$field != null;
      }
      
      public function set stageInfo(param1:serverProto.fight.ProtoStageInfo) : void
      {
         this.stage_info$field = param1;
      }
      
      public function get stageInfo() : serverProto.fight.ProtoStageInfo
      {
         return this.stage_info$field;
      }
      
      public function clearContractPetId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.contract_pet_id$field = new uint();
      }
      
      public function get hasContractPetId() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set contractPetId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.contract_pet_id$field = param1;
      }
      
      public function get contractPetId() : uint
      {
         return this.contract_pet_id$field;
      }
      
      public function clearPlayerName() : void
      {
         this.player_name$field = null;
      }
      
      public function get hasPlayerName() : Boolean
      {
         return this.player_name$field != null;
      }
      
      public function set playerName(param1:String) : void
      {
         this.player_name$field = param1;
      }
      
      public function get playerName() : String
      {
         return this.player_name$field;
      }
      
      public function clearOfflineFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.offline_flag$field = new uint();
      }
      
      public function get hasOfflineFlag() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set offlineFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.offline_flag$field = param1;
      }
      
      public function get offlineFlag() : uint
      {
         return this.offline_flag$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.combat_power$field = new int();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set combatPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : int
      {
         return this.combat_power$field;
      }
      
      public function clearFaceId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.face_id$field = new int();
      }
      
      public function get hasFaceId() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set faceId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.face_id$field = param1;
      }
      
      public function get faceId() : int
      {
         return this.face_id$field;
      }
      
      public function clearMasterTeam() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.master_team$field = new int();
      }
      
      public function get hasMasterTeam() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set masterTeam(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.master_team$field = param1;
      }
      
      public function get masterTeam() : int
      {
         return this.master_team$field;
      }
      
      public function clearHasLoadedRes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.has_loaded_res$field = new int();
      }
      
      public function get hasHasLoadedRes() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set hasLoadedRes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.has_loaded_res$field = param1;
      }
      
      public function get hasLoadedRes() : int
      {
         return this.has_loaded_res$field;
      }
      
      public function clearStanceId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.stance_id$field = new int();
      }
      
      public function get hasStanceId() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set stanceId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.stance_id$field = param1;
      }
      
      public function get stanceId() : int
      {
         return this.stance_id$field;
      }
      
      public function clearSvrReplaceFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.svr_replace_flag$field = new int();
      }
      
      public function get hasSvrReplaceFlag() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set svrReplaceFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.svr_replace_flag$field = param1;
      }
      
      public function get svrReplaceFlag() : int
      {
         return this.svr_replace_flag$field;
      }
      
      public function clearAiLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.ai_level$field = new int();
      }
      
      public function get hasAiLevel() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set aiLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.ai_level$field = param1;
      }
      
      public function get aiLevel() : int
      {
         return this.ai_level$field;
      }
      
      public function clearArenaLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.arena_level$field = new int();
      }
      
      public function get hasArenaLevel() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set arenaLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.arena_level$field = param1;
      }
      
      public function get arenaLevel() : int
      {
         return this.arena_level$field;
      }
      
      public function clearGuildBeastAdditionProperty() : void
      {
         this.guild_beast_addition_property$field = null;
      }
      
      public function get hasGuildBeastAdditionProperty() : Boolean
      {
         return this.guild_beast_addition_property$field != null;
      }
      
      public function set guildBeastAdditionProperty(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.guild_beast_addition_property$field = param1;
      }
      
      public function get guildBeastAdditionProperty() : ProtoNaurtoAllPropertyInfo
      {
         return this.guild_beast_addition_property$field;
      }
      
      public function clearHasSummonContractPet() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294950911E9;
         this.has_summon_contract_pet$field = new Boolean();
      }
      
      public function get hasHasSummonContractPet() : Boolean
      {
         return (this.hasField$0 & 16384) != 0;
      }
      
      public function set hasSummonContractPet(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16384;
         this.has_summon_contract_pet$field = param1;
      }
      
      public function get hasSummonContractPet() : Boolean
      {
         return this.has_summon_contract_pet$field;
      }
      
      public function clearContractPetColor() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294934527E9;
         this.contract_pet_color$field = new int();
      }
      
      public function get hasContractPetColor() : Boolean
      {
         return (this.hasField$0 & 32768) != 0;
      }
      
      public function set contractPetColor(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32768;
         this.contract_pet_color$field = param1;
      }
      
      public function get contractPetColor() : int
      {
         return this.contract_pet_color$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayer)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player$field);
         }
         if(this.hasTeamId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.team_id$field);
         }
         if(this.hasKathaValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.katha_value$field);
         }
         if(this.hasTeamType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.team_type$field);
         }
         if(this.hasStageInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.stage_info$field);
         }
         if(this.hasContractPetId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.contract_pet_id$field);
         }
         if(this.hasPlayerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_STRING(param1,this.player_name$field);
         }
         if(this.hasOfflineFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.offline_flag$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.level$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_SINT32(param1,this.combat_power$field);
         }
         if(this.hasFaceId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_SINT32(param1,this.face_id$field);
         }
         if(this.hasMasterTeam)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_SINT32(param1,this.master_team$field);
         }
         if(this.hasHasLoadedRes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_SINT32(param1,this.has_loaded_res$field);
         }
         if(this.hasStanceId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_SINT32(param1,this.stance_id$field);
         }
         if(this.hasSvrReplaceFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_SINT32(param1,this.svr_replace_flag$field);
         }
         if(this.hasAiLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_SINT32(param1,this.ai_level$field);
         }
         if(this.hasArenaLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,17);
            WriteUtils.write$TYPE_SINT32(param1,this.arena_level$field);
         }
         if(this.hasGuildBeastAdditionProperty)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,18);
            WriteUtils.write$TYPE_MESSAGE(param1,this.guild_beast_addition_property$field);
         }
         if(this.hasHasSummonContractPet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,19);
            WriteUtils.write$TYPE_BOOL(param1,this.has_summon_contract_pet$field);
         }
         if(this.hasContractPetColor)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,20);
            WriteUtils.write$TYPE_SINT32(param1,this.contract_pet_color$field);
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
          * Error type: IndexOutOfBoundsException (Index: 20, Size: 20)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
