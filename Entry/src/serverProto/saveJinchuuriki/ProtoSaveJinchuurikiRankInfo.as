package serverProto.saveJinchuuriki
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
   
   public final class ProtoSaveJinchuurikiRankInfo extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiRankInfo.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiRankInfo.player_name","playerName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiRankInfo.times","times",3 << 3 | WireType.VARINT);
      
      public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.saveJinchuuriki.ProtoSaveJinchuurikiRankInfo.team_id","teamId",4 << 3 | WireType.VARINT);
       
      private var player_id$field:ProtoPlayerKey;
      
      private var player_name$field:String;
      
      private var times$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var team_id$field:uint;
      
      public function ProtoSaveJinchuurikiRankInfo()
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
      
      public function clearTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.times$field = new uint();
      }
      
      public function get hasTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set times(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.times$field = param1;
      }
      
      public function get times() : uint
      {
         return this.times$field;
      }
      
      public function clearTeamId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.team_id$field = new uint();
      }
      
      public function get hasTeamId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set teamId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.team_id$field = param1;
      }
      
      public function get teamId() : uint
      {
         return this.team_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasPlayerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.player_name$field);
         }
         if(this.hasTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.times$field);
         }
         if(this.hasTeamId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.team_id$field);
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
