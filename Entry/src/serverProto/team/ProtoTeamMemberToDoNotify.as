package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTeamMemberToDoNotify extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoTeamMemberToDoNotify.type","type",1 << 3 | WireType.VARINT,ProtoTeamSyncType);
      
      public static const SCENE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberToDoNotify.scene","scene",2 << 3 | WireType.VARINT);
      
      public static const POINT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoTeamMemberToDoNotify.point","point",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
      
      public static const DUNGEON_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberToDoNotify.dungeon_id","dungeonId",4 << 3 | WireType.VARINT);
      
      public static const NPC_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberToDoNotify.npc_id","npcId",5 << 3 | WireType.VARINT);
      
      public static const GUILD_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberToDoNotify.guild_level","guildLevel",6 << 3 | WireType.VARINT);
       
      public var type:int;
      
      private var scene$field:int;
      
      private var hasField$0:uint = 0;
      
      private var point$field:ProtoPoint;
      
      private var dungeon_id$field:int;
      
      private var npc_id$field:int;
      
      private var guild_level$field:int;
      
      public function ProtoTeamMemberToDoNotify()
      {
         super();
      }
      
      public function clearScene() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.scene$field = new int();
      }
      
      public function get hasScene() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set scene(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.scene$field = param1;
      }
      
      public function get scene() : int
      {
         return this.scene$field;
      }
      
      public function clearPoint() : void
      {
         this.point$field = null;
      }
      
      public function get hasPoint() : Boolean
      {
         return this.point$field != null;
      }
      
      public function set point(param1:ProtoPoint) : void
      {
         this.point$field = param1;
      }
      
      public function get point() : ProtoPoint
      {
         return this.point$field;
      }
      
      public function clearDungeonId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.dungeon_id$field = new int();
      }
      
      public function get hasDungeonId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set dungeonId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.dungeon_id$field = param1;
      }
      
      public function get dungeonId() : int
      {
         return this.dungeon_id$field;
      }
      
      public function clearNpcId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.npc_id$field = new int();
      }
      
      public function get hasNpcId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set npcId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.npc_id$field = param1;
      }
      
      public function get npcId() : int
      {
         return this.npc_id$field;
      }
      
      public function clearGuildLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.guild_level$field = new int();
      }
      
      public function get hasGuildLevel() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set guildLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.guild_level$field = param1;
      }
      
      public function get guildLevel() : int
      {
         return this.guild_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasScene)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.scene$field);
         }
         if(this.hasPoint)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.point$field);
         }
         if(this.hasDungeonId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.dungeon_id$field);
         }
         if(this.hasNpcId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.npc_id$field);
         }
         if(this.hasGuildLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.guild_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
