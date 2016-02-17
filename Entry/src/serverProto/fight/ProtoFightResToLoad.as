package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFightResToLoad extends Message
   {
      
      public static const PLAYER_RES_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightResToLoad.player_res_info","playerResInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerTeamPos);
      
      public static const CUSTOM_BATTLE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightResToLoad.custom_battle_info","customBattleInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoCustomBattleInfo);
      
      public static const SCRIPT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightResToLoad.script_id","scriptId",3 << 3 | WireType.VARINT);
      
      public static const BACKGROUND_RES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightResToLoad.background_res","backgroundRes",4 << 3 | WireType.LENGTH_DELIMITED,FightBackgroundRes);
      
      public static const FIGHT_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoFightResToLoad.fight_type","fightType",5 << 3 | WireType.VARINT,FightStartType);
      
      public static const TEAM_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightResToLoad.team_id","teamId",6 << 3 | WireType.VARINT);
      
      public static const WORLD_BOSS_FAINT_ROUND:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightResToLoad.world_boss_faint_round","worldBossFaintRound",7 << 3 | WireType.VARINT);
      
      public static const HAS_START_TIPS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightResToLoad.has_start_tips","hasStartTips",8 << 3 | WireType.VARINT);
      
      public static const FIGHT_SUB_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoFightResToLoad.fight_sub_type","fightSubType",9 << 3 | WireType.VARINT,FightStartSubType);
      
      public static const SYNC_TIMEOUT_SEC:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightResToLoad.sync_timeout_sec","syncTimeoutSec",10 << 3 | WireType.VARINT);
       
      [ArrayElementType("serverProto.fight.ProtoPlayerTeamPos")]
      public var playerResInfo:Array;
      
      private var custom_battle_info$field:serverProto.fight.ProtoCustomBattleInfo;
      
      private var script_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var background_res$field:serverProto.fight.FightBackgroundRes;
      
      private var fight_type$field:int;
      
      private var team_id$field:int;
      
      private var world_boss_faint_round$field:int;
      
      private var has_start_tips$field:int;
      
      private var fight_sub_type$field:int;
      
      private var sync_timeout_sec$field:int;
      
      public function ProtoFightResToLoad()
      {
         this.playerResInfo = [];
         super();
      }
      
      public function clearCustomBattleInfo() : void
      {
         this.custom_battle_info$field = null;
      }
      
      public function get hasCustomBattleInfo() : Boolean
      {
         return this.custom_battle_info$field != null;
      }
      
      public function set customBattleInfo(param1:serverProto.fight.ProtoCustomBattleInfo) : void
      {
         this.custom_battle_info$field = param1;
      }
      
      public function get customBattleInfo() : serverProto.fight.ProtoCustomBattleInfo
      {
         return this.custom_battle_info$field;
      }
      
      public function clearScriptId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.script_id$field = new uint();
      }
      
      public function get hasScriptId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set scriptId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.script_id$field = param1;
      }
      
      public function get scriptId() : uint
      {
         return this.script_id$field;
      }
      
      public function clearBackgroundRes() : void
      {
         this.background_res$field = null;
      }
      
      public function get hasBackgroundRes() : Boolean
      {
         return this.background_res$field != null;
      }
      
      public function set backgroundRes(param1:serverProto.fight.FightBackgroundRes) : void
      {
         this.background_res$field = param1;
      }
      
      public function get backgroundRes() : serverProto.fight.FightBackgroundRes
      {
         return this.background_res$field;
      }
      
      public function clearFightType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.fight_type$field = new int();
      }
      
      public function get hasFightType() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set fightType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.fight_type$field = param1;
      }
      
      public function get fightType() : int
      {
         return this.fight_type$field;
      }
      
      public function clearTeamId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.team_id$field = new int();
      }
      
      public function get hasTeamId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set teamId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.team_id$field = param1;
      }
      
      public function get teamId() : int
      {
         return this.team_id$field;
      }
      
      public function clearWorldBossFaintRound() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.world_boss_faint_round$field = new int();
      }
      
      public function get hasWorldBossFaintRound() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set worldBossFaintRound(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.world_boss_faint_round$field = param1;
      }
      
      public function get worldBossFaintRound() : int
      {
         return this.world_boss_faint_round$field;
      }
      
      public function clearHasStartTips() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.has_start_tips$field = new int();
      }
      
      public function get hasHasStartTips() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set hasStartTips(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.has_start_tips$field = param1;
      }
      
      public function get hasStartTips() : int
      {
         return this.has_start_tips$field;
      }
      
      public function clearFightSubType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.fight_sub_type$field = new int();
      }
      
      public function get hasFightSubType() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set fightSubType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.fight_sub_type$field = param1;
      }
      
      public function get fightSubType() : int
      {
         return this.fight_sub_type$field;
      }
      
      public function clearSyncTimeoutSec() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.sync_timeout_sec$field = new int();
      }
      
      public function get hasSyncTimeoutSec() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set syncTimeoutSec(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.sync_timeout_sec$field = param1;
      }
      
      public function get syncTimeoutSec() : int
      {
         return this.sync_timeout_sec$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.playerResInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.playerResInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasCustomBattleInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.custom_battle_info$field);
         }
         if(this.hasScriptId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.script_id$field);
         }
         if(this.hasBackgroundRes)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.background_res$field);
         }
         if(this.hasFightType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_ENUM(param1,this.fight_type$field);
         }
         if(this.hasTeamId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.team_id$field);
         }
         if(this.hasWorldBossFaintRound)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.world_boss_faint_round$field);
         }
         if(this.hasHasStartTips)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.has_start_tips$field);
         }
         if(this.hasFightSubType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_ENUM(param1,this.fight_sub_type$field);
         }
         if(this.hasSyncTimeoutSec)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_SINT32(param1,this.sync_timeout_sec$field);
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
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
