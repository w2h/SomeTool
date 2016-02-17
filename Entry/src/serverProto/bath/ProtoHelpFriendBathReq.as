package serverProto.bath
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoHelpFriendBathReq extends Message
   {
      
      public static const FRIEND_PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bath.ProtoHelpFriendBathReq.friend_player_id","friendPlayerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
       
      private var friend_player_id$field:ProtoPlayerKey;
      
      public function ProtoHelpFriendBathReq()
      {
         super();
      }
      
      public function clearFriendPlayerId() : void
      {
         this.friend_player_id$field = null;
      }
      
      public function get hasFriendPlayerId() : Boolean
      {
         return this.friend_player_id$field != null;
      }
      
      public function set friendPlayerId(param1:ProtoPlayerKey) : void
      {
         this.friend_player_id$field = param1;
      }
      
      public function get friendPlayerId() : ProtoPlayerKey
      {
         return this.friend_player_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFriendPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.friend_player_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
