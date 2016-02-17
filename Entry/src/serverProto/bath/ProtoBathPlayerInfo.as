package serverProto.bath
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBathPlayerInfo extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bath.ProtoBathPlayerInfo.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.bath.ProtoBathPlayerInfo.player_name","playerName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const FRIEND_SHIP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bath.ProtoBathPlayerInfo.friend_ship","friendShip",3 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bath.ProtoBathPlayerInfo.role_category","roleCategory",4 << 3 | WireType.VARINT);
      
      public static const IS_FRIEND:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.bath.ProtoBathPlayerInfo.is_friend","isFriend",5 << 3 | WireType.VARINT);
      
      public static const FD_BATH_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bath.ProtoBathPlayerInfo.fd_bath_count","fdBathCount",6 << 3 | WireType.VARINT);
      
      public static const NEXT_LEVEL_DEGREE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bath.ProtoBathPlayerInfo.next_level_degree","nextLevelDegree",7 << 3 | WireType.VARINT);
      
      public static const FRIEND_DEGREE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bath.ProtoBathPlayerInfo.friend_degree","friendDegree",8 << 3 | WireType.VARINT);
       
      private var player_id$field:ProtoPlayerKey;
      
      private var player_name$field:String;
      
      private var friend_ship$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var role_category$field:uint;
      
      private var is_friend$field:Boolean;
      
      private var fd_bath_count$field:int;
      
      private var next_level_degree$field:int;
      
      private var friend_degree$field:int;
      
      public function ProtoBathPlayerInfo()
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
      
      public function clearFriendShip() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.friend_ship$field = new uint();
      }
      
      public function get hasFriendShip() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set friendShip(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.friend_ship$field = param1;
      }
      
      public function get friendShip() : uint
      {
         return this.friend_ship$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.role_category$field = new uint();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set roleCategory(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : uint
      {
         return this.role_category$field;
      }
      
      public function clearIsFriend() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.is_friend$field = new Boolean();
      }
      
      public function get hasIsFriend() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set isFriend(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.is_friend$field = param1;
      }
      
      public function get isFriend() : Boolean
      {
         return this.is_friend$field;
      }
      
      public function clearFdBathCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.fd_bath_count$field = new int();
      }
      
      public function get hasFdBathCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set fdBathCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.fd_bath_count$field = param1;
      }
      
      public function get fdBathCount() : int
      {
         return this.fd_bath_count$field;
      }
      
      public function clearNextLevelDegree() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.next_level_degree$field = new int();
      }
      
      public function get hasNextLevelDegree() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set nextLevelDegree(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.next_level_degree$field = param1;
      }
      
      public function get nextLevelDegree() : int
      {
         return this.next_level_degree$field;
      }
      
      public function clearFriendDegree() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.friend_degree$field = new int();
      }
      
      public function get hasFriendDegree() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set friendDegree(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.friend_degree$field = param1;
      }
      
      public function get friendDegree() : int
      {
         return this.friend_degree$field;
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
         if(this.hasFriendShip)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.friend_ship$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.role_category$field);
         }
         if(this.hasIsFriend)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_BOOL(param1,this.is_friend$field);
         }
         if(this.hasFdBathCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.fd_bath_count$field);
         }
         if(this.hasNextLevelDegree)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.next_level_degree$field);
         }
         if(this.hasFriendDegree)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.friend_degree$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
