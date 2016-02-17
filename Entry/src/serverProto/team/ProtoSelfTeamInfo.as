package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSelfTeamInfo extends Message
   {
      
      public static const TEAM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoSelfTeamInfo.team_info","teamInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoAllTeamInfo);
      
      public static const SCENE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoSelfTeamInfo.scene","scene",2 << 3 | WireType.VARINT);
      
      public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoSelfTeamInfo.location","location",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
      
      public static const SYNC_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoSelfTeamInfo.sync_type","syncType",4 << 3 | WireType.VARINT,ProtoTeamSyncType);
       
      private var team_info$field:serverProto.team.ProtoAllTeamInfo;
      
      private var scene$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var location$field:ProtoPoint;
      
      private var sync_type$field:int;
      
      public function ProtoSelfTeamInfo()
      {
         super();
      }
      
      public function clearTeamInfo() : void
      {
         this.team_info$field = null;
      }
      
      public function get hasTeamInfo() : Boolean
      {
         return this.team_info$field != null;
      }
      
      public function set teamInfo(param1:serverProto.team.ProtoAllTeamInfo) : void
      {
         this.team_info$field = param1;
      }
      
      public function get teamInfo() : serverProto.team.ProtoAllTeamInfo
      {
         return this.team_info$field;
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
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTeamInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.team_info$field);
         }
         if(this.hasScene)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.scene$field);
         }
         if(this.hasLocation)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.location$field);
         }
         if(this.hasSyncType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_ENUM(param1,this.sync_type$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
