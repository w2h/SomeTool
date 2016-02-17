package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoAssembleTeamNotify extends Message
   {
      
      public static const REASON:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoAssembleTeamNotify.reason","reason",1 << 3 | WireType.VARINT,ProtoAssembleTeamReason);
      
      public static const TEAM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoAssembleTeamNotify.team_info","teamInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoAllTeamInfo);
      
      public static const SCENE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoAssembleTeamNotify.scene","scene",3 << 3 | WireType.VARINT);
      
      public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoAssembleTeamNotify.location","location",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
      
      public static const SYNC_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoAssembleTeamNotify.sync_type","syncType",5 << 3 | WireType.VARINT,ProtoTeamSyncType);
      
      public static const DUNGEON_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoAssembleTeamNotify.dungeon_id","dungeonId",6 << 3 | WireType.VARINT);
       
      public var reason:int;
      
      public var teamInfo:serverProto.team.ProtoAllTeamInfo;
      
      private var scene$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var location$field:ProtoPoint;
      
      private var sync_type$field:int;
      
      private var dungeon_id$field:int;
      
      public function ProtoAssembleTeamNotify()
      {
         super();
      }
      
      public function clearScene() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.scene$field = new uint();
      }
      
      public function get hasScene() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set scene(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.scene$field = param1;
      }
      
      public function get scene() : uint
      {
         return this.scene$field;
      }
      
      public function clearLocation() : void
      {
         this.location$field = null;
      }
      
      public function get hasLocation() : Boolean
      {
         return this.location$field != null;
      }
      
      public function set location(param1:ProtoPoint) : void
      {
         this.location$field = param1;
      }
      
      public function get location() : ProtoPoint
      {
         return this.location$field;
      }
      
      public function clearSyncType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.sync_type$field = new int();
      }
      
      public function get hasSyncType() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set syncType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.sync_type$field = param1;
      }
      
      public function get syncType() : int
      {
         return this.sync_type$field;
      }
      
      public function clearDungeonId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.dungeon_id$field = new int();
      }
      
      public function get hasDungeonId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set dungeonId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.dungeon_id$field = param1;
      }
      
      public function get dungeonId() : int
      {
         return this.dungeon_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.reason);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
         WriteUtils.write$TYPE_MESSAGE(param1,this.teamInfo);
         if(this.hasScene)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.scene$field);
         }
         if(this.hasLocation)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.location$field);
         }
         if(this.hasSyncType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_ENUM(param1,this.sync_type$field);
         }
         if(this.hasDungeonId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.dungeon_id$field);
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
