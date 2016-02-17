package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFightStartRequest extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoFightStartRequest.type","type",1 << 3 | WireType.VARINT,FightStartType);
      
      public static const PASSIVE_PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightStartRequest.passive_player","passivePlayer",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const NPC_CLIENT_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.npc_client_id","npcClientId",3 << 3 | WireType.VARINT);
      
      public static const CUSTOM_BATTLE_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.custom_battle_id","customBattleId",4 << 3 | WireType.VARINT);
      
      public static const NINJA_EXAM_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.ninja_exam_id","ninjaExamId",5 << 3 | WireType.VARINT);
      
      public static const STORY_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.story_id","storyId",6 << 3 | WireType.VARINT);
      
      public static const DUNGEON_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.dungeon_id","dungeonId",7 << 3 | WireType.VARINT);
      
      public static const TRANSFER_ROLE_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.transfer_role_id","transferRoleId",8 << 3 | WireType.VARINT);
      
      public static const DUNGEON_DIFFICULTY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.dungeon_difficulty","dungeonDifficulty",9 << 3 | WireType.VARINT);
      
      public static const TREASURE_MAP_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.treasure_map_id","treasureMapId",10 << 3 | WireType.VARINT);
      
      public static const TREASURE_MAP_INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.treasure_map_index","treasureMapIndex",11 << 3 | WireType.VARINT);
      
      public static const CHALLENGE_TOWER_TYPE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.challenge_tower_type","challengeTowerType",12 << 3 | WireType.VARINT);
       
      public var type:int;
      
      private var passive_player$field:ProtoPlayerKey;
      
      private var npc_client_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var custom_battle_id$field:int;
      
      private var ninja_exam_id$field:int;
      
      private var story_id$field:int;
      
      private var dungeon_id$field:int;
      
      private var transfer_role_id$field:int;
      
      private var dungeon_difficulty$field:int;
      
      private var treasure_map_id$field:int;
      
      private var treasure_map_index$field:int;
      
      private var challenge_tower_type$field:int;
      
      public function ProtoFightStartRequest()
      {
         super();
      }
      
      public function clearPassivePlayer() : void
      {
         this.passive_player$field = null;
      }
      
      public function get hasPassivePlayer() : Boolean
      {
         return this.passive_player$field != null;
      }
      
      public function set passivePlayer(param1:ProtoPlayerKey) : void
      {
         this.passive_player$field = param1;
      }
      
      public function get passivePlayer() : ProtoPlayerKey
      {
         return this.passive_player$field;
      }
      
      public function clearNpcClientId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.npc_client_id$field = new int();
      }
      
      public function get hasNpcClientId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set npcClientId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.npc_client_id$field = param1;
      }
      
      public function get npcClientId() : int
      {
         return this.npc_client_id$field;
      }
      
      public function clearCustomBattleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.custom_battle_id$field = new int();
      }
      
      public function get hasCustomBattleId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set customBattleId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.custom_battle_id$field = param1;
      }
      
      public function get customBattleId() : int
      {
         return this.custom_battle_id$field;
      }
      
      public function clearNinjaExamId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.ninja_exam_id$field = new int();
      }
      
      public function get hasNinjaExamId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set ninjaExamId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.ninja_exam_id$field = param1;
      }
      
      public function get ninjaExamId() : int
      {
         return this.ninja_exam_id$field;
      }
      
      public function clearStoryId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.story_id$field = new int();
      }
      
      public function get hasStoryId() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set storyId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.story_id$field = param1;
      }
      
      public function get storyId() : int
      {
         return this.story_id$field;
      }
      
      public function clearDungeonId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.dungeon_id$field = new int();
      }
      
      public function get hasDungeonId() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set dungeonId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.dungeon_id$field = param1;
      }
      
      public function get dungeonId() : int
      {
         return this.dungeon_id$field;
      }
      
      public function clearTransferRoleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.transfer_role_id$field = new int();
      }
      
      public function get hasTransferRoleId() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set transferRoleId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.transfer_role_id$field = param1;
      }
      
      public function get transferRoleId() : int
      {
         return this.transfer_role_id$field;
      }
      
      public function clearDungeonDifficulty() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.dungeon_difficulty$field = new int();
      }
      
      public function get hasDungeonDifficulty() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set dungeonDifficulty(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.dungeon_difficulty$field = param1;
      }
      
      public function get dungeonDifficulty() : int
      {
         return this.dungeon_difficulty$field;
      }
      
      public function clearTreasureMapId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.treasure_map_id$field = new int();
      }
      
      public function get hasTreasureMapId() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set treasureMapId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.treasure_map_id$field = param1;
      }
      
      public function get treasureMapId() : int
      {
         return this.treasure_map_id$field;
      }
      
      public function clearTreasureMapIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.treasure_map_index$field = new int();
      }
      
      public function get hasTreasureMapIndex() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set treasureMapIndex(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.treasure_map_index$field = param1;
      }
      
      public function get treasureMapIndex() : int
      {
         return this.treasure_map_index$field;
      }
      
      public function clearChallengeTowerType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.challenge_tower_type$field = new int();
      }
      
      public function get hasChallengeTowerType() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set challengeTowerType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.challenge_tower_type$field = param1;
      }
      
      public function get challengeTowerType() : int
      {
         return this.challenge_tower_type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasPassivePlayer)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.passive_player$field);
         }
         if(this.hasNpcClientId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.npc_client_id$field);
         }
         if(this.hasCustomBattleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.custom_battle_id$field);
         }
         if(this.hasNinjaExamId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_exam_id$field);
         }
         if(this.hasStoryId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.story_id$field);
         }
         if(this.hasDungeonId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.dungeon_id$field);
         }
         if(this.hasTransferRoleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.transfer_role_id$field);
         }
         if(this.hasDungeonDifficulty)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.dungeon_difficulty$field);
         }
         if(this.hasTreasureMapId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_SINT32(param1,this.treasure_map_id$field);
         }
         if(this.hasTreasureMapIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_SINT32(param1,this.treasure_map_index$field);
         }
         if(this.hasChallengeTowerType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_SINT32(param1,this.challenge_tower_type$field);
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
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
