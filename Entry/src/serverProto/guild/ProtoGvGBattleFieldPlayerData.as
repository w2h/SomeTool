package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGvGBattleFieldPlayerData extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldPlayerData.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const ROLE_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGvGBattleFieldPlayerData.role_name","roleName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ROLE_LVL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.role_lvl","roleLvl",3 << 3 | WireType.VARINT);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.combat_power","combatPower",4 << 3 | WireType.VARINT);
      
      public static const PLAYER_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.player_status","playerStatus",5 << 3 | WireType.VARINT);
      
      public static const FIGHT_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.fight_status","fightStatus",6 << 3 | WireType.VARINT);
      
      public static const SEQ:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.seq","seq",7 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGvGBattleFieldPlayerData.role_category","roleCategory",8 << 3 | WireType.VARINT);
      
      public static const IS_BEAST_CAPTAIN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoGvGBattleFieldPlayerData.is_beast_captain","isBeastCaptain",9 << 3 | WireType.VARINT);
       
      private var player_id$field:ProtoPlayerKey;
      
      private var role_name$field:String;
      
      private var role_lvl$field:int;
      
      private var hasField$0:uint = 0;
      
      private var combat_power$field:int;
      
      private var player_status$field:int;
      
      private var fight_status$field:int;
      
      private var seq$field:int;
      
      private var role_category$field:int;
      
      private var is_beast_captain$field:Boolean;
      
      public function ProtoGvGBattleFieldPlayerData()
      {
         super();
      }
      
      public function clearPlayerId() : void
      {
         this.player_id$field = null;
      }
      
      public function get hasPlayerId() : Boolean
      {
         return this.player_id$field != null;
      }
      
      public function set playerId(param1:ProtoPlayerKey) : void
      {
         this.player_id$field = param1;
      }
      
      public function get playerId() : ProtoPlayerKey
      {
         return this.player_id$field;
      }
      
      public function clearRoleName() : void
      {
         this.role_name$field = null;
      }
      
      public function get hasRoleName() : Boolean
      {
         return this.role_name$field != null;
      }
      
      public function set roleName(param1:String) : void
      {
         this.role_name$field = param1;
      }
      
      public function get roleName() : String
      {
         return this.role_name$field;
      }
      
      public function clearRoleLvl() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.role_lvl$field = new int();
      }
      
      public function get hasRoleLvl() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set roleLvl(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.role_lvl$field = param1;
      }
      
      public function get roleLvl() : int
      {
         return this.role_lvl$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.combat_power$field = new int();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set combatPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : int
      {
         return this.combat_power$field;
      }
      
      public function clearPlayerStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.player_status$field = new int();
      }
      
      public function get hasPlayerStatus() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set playerStatus(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.player_status$field = param1;
      }
      
      public function get playerStatus() : int
      {
         return this.player_status$field;
      }
      
      public function clearFightStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.fight_status$field = new int();
      }
      
      public function get hasFightStatus() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set fightStatus(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.fight_status$field = param1;
      }
      
      public function get fightStatus() : int
      {
         return this.fight_status$field;
      }
      
      public function clearSeq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.seq$field = new int();
      }
      
      public function get hasSeq() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set seq(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.seq$field = param1;
      }
      
      public function get seq() : int
      {
         return this.seq$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.role_category$field = new int();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set roleCategory(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : int
      {
         return this.role_category$field;
      }
      
      public function clearIsBeastCaptain() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.is_beast_captain$field = new Boolean();
      }
      
      public function get hasIsBeastCaptain() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set isBeastCaptain(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.is_beast_captain$field = param1;
      }
      
      public function get isBeastCaptain() : Boolean
      {
         return this.is_beast_captain$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasRoleName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.role_name$field);
         }
         if(this.hasRoleLvl)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.role_lvl$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.combat_power$field);
         }
         if(this.hasPlayerStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.player_status$field);
         }
         if(this.hasFightStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.fight_status$field);
         }
         if(this.hasSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.seq$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.role_category$field);
         }
         if(this.hasIsBeastCaptain)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_BOOL(param1,this.is_beast_captain$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
