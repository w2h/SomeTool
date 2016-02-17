package serverProto.player
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   
   public final class ProtoMoveNotifyList extends Message
   {
      
      public static const PLAYER_MOVE_NOTIFY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoMoveNotifyList.player_move_notify","playerMoveNotify",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerShowInfo);
      
      public static const TEAM_MOVE_NOTIFY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoMoveNotifyList.team_move_notify","teamMoveNotify",2 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamShowInfo);
       
      [ArrayElementType("serverProto.player.ProtoPlayerShowInfo")]
      public var playerMoveNotify:Array;
      
      [ArrayElementType("serverProto.player.ProtoTeamShowInfo")]
      public var teamMoveNotify:Array;
      
      public function ProtoMoveNotifyList()
      {
         this.playerMoveNotify = [];
         this.teamMoveNotify = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.playerMoveNotify.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.playerMoveNotify[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.teamMoveNotify.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.teamMoveNotify[_loc3_]);
            _loc3_++;
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
