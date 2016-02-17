package serverProto.player
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetPlayerViewListResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoGetPlayerViewListResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PLAYER_VIEW_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoGetPlayerViewListResponse.player_view_list","playerViewList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerShowInfo);
      
      public static const TEAM_MOVE_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoGetPlayerViewListResponse.team_move_list","teamMoveList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamShowInfo);
      
      public static const SELF_TEAM:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoGetPlayerViewListResponse.self_team","selfTeam",4 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamShowInfo);
      
      public static const SCENE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoGetPlayerViewListResponse.scene_id","sceneId",5 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      [ArrayElementType("serverProto.player.ProtoPlayerShowInfo")]
      public var playerViewList:Array;
      
      [ArrayElementType("serverProto.player.ProtoTeamShowInfo")]
      public var teamMoveList:Array;
      
      private var self_team$field:serverProto.player.ProtoTeamShowInfo;
      
      private var scene_id$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoGetPlayerViewListResponse()
      {
         this.playerViewList = [];
         this.teamMoveList = [];
         super();
      }
      
      public function clearSelfTeam() : void
      {
         this.self_team$field = null;
      }
      
      public function get hasSelfTeam() : Boolean
      {
         return this.self_team$field != null;
      }
      
      public function set selfTeam(param1:serverProto.player.ProtoTeamShowInfo) : void
      {
         this.self_team$field = param1;
      }
      
      public function get selfTeam() : serverProto.player.ProtoTeamShowInfo
      {
         return this.self_team$field;
      }
      
      public function clearSceneId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.scene_id$field = new int();
      }
      
      public function get hasSceneId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set sceneId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.scene_id$field = param1;
      }
      
      public function get sceneId() : int
      {
         return this.scene_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         var _loc2_:uint = 0;
         while(_loc2_ < this.playerViewList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.playerViewList[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.teamMoveList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.teamMoveList[_loc3_]);
            _loc3_++;
         }
         if(this.hasSelfTeam)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.self_team$field);
         }
         if(this.hasSceneId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.scene_id$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
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
