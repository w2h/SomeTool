package serverProto.player
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPlayerShowInfoChangeNotify extends Message
   {
      
      public static const PLAYER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerShowInfoChangeNotify.player_info","playerInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerShowInfo);
      
      public static const TEAM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerShowInfoChangeNotify.team_info","teamInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamShowInfo);
       
      private var player_info$field:serverProto.player.ProtoPlayerShowInfo;
      
      private var team_info$field:serverProto.player.ProtoTeamShowInfo;
      
      public function ProtoPlayerShowInfoChangeNotify()
      {
         super();
      }
      
      public function clearPlayerInfo() : void
      {
         this.player_info$field = null;
      }
      
      public function get hasPlayerInfo() : Boolean
      {
         return this.player_info$field != null;
      }
      
      public function set playerInfo(param1:serverProto.player.ProtoPlayerShowInfo) : void
      {
         this.player_info$field = param1;
      }
      
      public function get playerInfo() : serverProto.player.ProtoPlayerShowInfo
      {
         return this.player_info$field;
      }
      
      public function clearTeamInfo() : void
      {
         this.team_info$field = null;
      }
      
      public function get hasTeamInfo() : Boolean
      {
         return this.team_info$field != null;
      }
      
      public function set teamInfo(param1:serverProto.player.ProtoTeamShowInfo) : void
      {
         this.team_info$field = param1;
      }
      
      public function get teamInfo() : serverProto.player.ProtoTeamShowInfo
      {
         return this.team_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_info$field);
         }
         if(this.hasTeamInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.team_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
