package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildApplyInfo extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildApplyInfo.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PLAYER_NICK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildApplyInfo.player_nick","playerNick",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const PLAYER_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildApplyInfo.player_lvl","playerLvl",3 << 3 | WireType.VARINT);
      
      public static const PLAYER_COMBAT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildApplyInfo.player_combat","playerCombat",4 << 3 | WireType.VARINT);
      
      public static const PLAYER_CAREER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildApplyInfo.player_career","playerCareer",5 << 3 | WireType.VARINT);
       
      private var player_id$field:ProtoPlayerKey;
      
      private var player_nick$field:String;
      
      private var player_lvl$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var player_combat$field:uint;
      
      private var player_career$field:uint;
      
      public function ProtoGuildApplyInfo()
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
      
      public function clearPlayerNick() : void
      {
         this.player_nick$field = null;
      }
      
      public function get hasPlayerNick() : Boolean
      {
         return this.player_nick$field != null;
      }
      
      public function set playerNick(param1:String) : void
      {
         this.player_nick$field = param1;
      }
      
      public function get playerNick() : String
      {
         return this.player_nick$field;
      }
      
      public function clearPlayerLvl() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.player_lvl$field = new uint();
      }
      
      public function get hasPlayerLvl() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set playerLvl(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.player_lvl$field = param1;
      }
      
      public function get playerLvl() : uint
      {
         return this.player_lvl$field;
      }
      
      public function clearPlayerCombat() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.player_combat$field = new uint();
      }
      
      public function get hasPlayerCombat() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set playerCombat(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.player_combat$field = param1;
      }
      
      public function get playerCombat() : uint
      {
         return this.player_combat$field;
      }
      
      public function clearPlayerCareer() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.player_career$field = new uint();
      }
      
      public function get hasPlayerCareer() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set playerCareer(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.player_career$field = param1;
      }
      
      public function get playerCareer() : uint
      {
         return this.player_career$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasPlayerNick)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.player_nick$field);
         }
         if(this.hasPlayerLvl)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.player_lvl$field);
         }
         if(this.hasPlayerCombat)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.player_combat$field);
         }
         if(this.hasPlayerCareer)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.player_career$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
