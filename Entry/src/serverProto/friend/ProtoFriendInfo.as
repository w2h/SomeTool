package serverProto.friend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFriendInfo extends Message
   {
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.friend.ProtoFriendInfo.player_key","playerKey",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.friend.ProtoFriendInfo.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.friend.ProtoFriendInfo.level","level",3 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.friend.ProtoFriendInfo.role_category","roleCategory",4 << 3 | WireType.VARINT);
      
      public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.friend.ProtoFriendInfo.status","status",5 << 3 | WireType.VARINT,ProtoFriendStatus);
      
      public static const TEAM_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.friend.ProtoFriendInfo.team_id","teamId",6 << 3 | WireType.VARINT);
      
      public static const FRIEND_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoFriendInfo.friend_level","friendLevel",7 << 3 | WireType.VARINT);
      
      public static const FRIEND_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoFriendInfo.friend_degree","friendDegree",8 << 3 | WireType.VARINT);
      
      public static const WATERING_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoFriendInfo.watering_status","wateringStatus",9 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.friend.ProtoFriendInfo.vip_level","vipLevel",10 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.friend.ProtoFriendInfo.diamond_info","diamondInfo",11 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const NEXT_LEVEL_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoFriendInfo.next_level_degree","nextLevelDegree",12 << 3 | WireType.VARINT);
      
      public static const LOGOUT_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.friend.ProtoFriendInfo.logout_time","logoutTime",13 << 3 | WireType.VARINT);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoFriendInfo.combat_power","combatPower",14 << 3 | WireType.VARINT);
       
      public var playerKey:ProtoPlayerKey;
      
      public var name:String;
      
      public var level:int;
      
      public var roleCategory:int;
      
      public var status:int;
      
      public var teamId:UInt64;
      
      private var friend_level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var friend_degree$field:uint;
      
      private var watering_status$field:uint;
      
      private var vip_level$field:int;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var next_level_degree$field:uint;
      
      private var logout_time$field:UInt64;
      
      private var combat_power$field:uint;
      
      public function ProtoFriendInfo()
      {
         super();
      }
      
      public function clearFriendLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.friend_level$field = new uint();
      }
      
      public function get hasFriendLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set friendLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.friend_level$field = param1;
      }
      
      public function get friendLevel() : uint
      {
         return this.friend_level$field;
      }
      
      public function clearFriendDegree() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.friend_degree$field = new uint();
      }
      
      public function get hasFriendDegree() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set friendDegree(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.friend_degree$field = param1;
      }
      
      public function get friendDegree() : uint
      {
         return this.friend_degree$field;
      }
      
      public function clearWateringStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.watering_status$field = new uint();
      }
      
      public function get hasWateringStatus() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set wateringStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.watering_status$field = param1;
      }
      
      public function get wateringStatus() : uint
      {
         return this.watering_status$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
      }
      
      public function clearDiamondInfo() : void
      {
         this.diamond_info$field = null;
      }
      
      public function get hasDiamondInfo() : Boolean
      {
         return this.diamond_info$field != null;
      }
      
      public function set diamondInfo(param1:ProtoDiamondInfo) : void
      {
         this.diamond_info$field = param1;
      }
      
      public function get diamondInfo() : ProtoDiamondInfo
      {
         return this.diamond_info$field;
      }
      
      public function clearNextLevelDegree() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.next_level_degree$field = new uint();
      }
      
      public function get hasNextLevelDegree() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set nextLevelDegree(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.next_level_degree$field = param1;
      }
      
      public function get nextLevelDegree() : uint
      {
         return this.next_level_degree$field;
      }
      
      public function clearLogoutTime() : void
      {
         this.logout_time$field = null;
      }
      
      public function get hasLogoutTime() : Boolean
      {
         return this.logout_time$field != null;
      }
      
      public function set logoutTime(param1:UInt64) : void
      {
         this.logout_time$field = param1;
      }
      
      public function get logoutTime() : UInt64
      {
         return this.logout_time$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.combat_power$field = new uint();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set combatPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : uint
      {
         return this.combat_power$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.playerKey);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
         WriteUtils.write$TYPE_STRING(param1,this.name);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.level);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_INT32(param1,this.roleCategory);
         WriteUtils.writeTag(param1,WireType.VARINT,5);
         WriteUtils.write$TYPE_ENUM(param1,this.status);
         WriteUtils.writeTag(param1,WireType.VARINT,6);
         WriteUtils.write$TYPE_UINT64(param1,this.teamId);
         if(this.hasFriendLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.friend_level$field);
         }
         if(this.hasFriendDegree)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.friend_degree$field);
         }
         if(this.hasWateringStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.watering_status$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasNextLevelDegree)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.next_level_degree$field);
         }
         if(this.hasLogoutTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT64(param1,this.logout_time$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_UINT32(param1,this.combat_power$field);
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
          * Error type: IndexOutOfBoundsException (Index: 14, Size: 14)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
