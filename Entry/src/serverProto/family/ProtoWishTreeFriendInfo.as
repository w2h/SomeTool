package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWishTreeFriendInfo extends Message
   {
      
      public static const FRIEND_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoWishTreeFriendInfo.friend_key","friendKey",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoWishTreeFriendInfo.friend_name","friendName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const FRIEND_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.friend_lvl","friendLvl",3 << 3 | WireType.VARINT);
      
      public static const CAN_WATERING:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.can_watering","canWatering",4 << 3 | WireType.VARINT);
      
      public static const FRIEND_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.friend_degree","friendDegree",5 << 3 | WireType.VARINT);
      
      public static const NEXT_LEVEL_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.next_level_degree","nextLevelDegree",6 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.family.ProtoWishTreeFriendInfo.vip_level","vipLevel",7 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoWishTreeFriendInfo.diamond_info","diamondInfo",8 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const FRIEND_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.friend_level_coin","friendLevelCoin",9 << 3 | WireType.VARINT);
      
      public static const ROLE_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoWishTreeFriendInfo.role_level_coin","roleLevelCoin",10 << 3 | WireType.VARINT);
       
      private var friend_key$field:ProtoPlayerKey;
      
      private var friend_name$field:String;
      
      private var friend_lvl$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var can_watering$field:uint;
      
      private var friend_degree$field:uint;
      
      private var next_level_degree$field:uint;
      
      private var vip_level$field:int;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var friend_level_coin$field:uint;
      
      private var role_level_coin$field:uint;
      
      public function ProtoWishTreeFriendInfo()
      {
         super();
      }
      
      public function clearFriendKey() : void
      {
         this.friend_key$field = null;
      }
      
      public function get hasFriendKey() : Boolean
      {
         return this.friend_key$field != null;
      }
      
      public function set friendKey(param1:ProtoPlayerKey) : void
      {
         this.friend_key$field = param1;
      }
      
      public function get friendKey() : ProtoPlayerKey
      {
         return this.friend_key$field;
      }
      
      public function clearFriendName() : void
      {
         this.friend_name$field = null;
      }
      
      public function get hasFriendName() : Boolean
      {
         return this.friend_name$field != null;
      }
      
      public function set friendName(param1:String) : void
      {
         this.friend_name$field = param1;
      }
      
      public function get friendName() : String
      {
         return this.friend_name$field;
      }
      
      public function clearFriendLvl() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.friend_lvl$field = new uint();
      }
      
      public function get hasFriendLvl() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set friendLvl(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.friend_lvl$field = param1;
      }
      
      public function get friendLvl() : uint
      {
         return this.friend_lvl$field;
      }
      
      public function clearCanWatering() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.can_watering$field = new uint();
      }
      
      public function get hasCanWatering() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set canWatering(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.can_watering$field = param1;
      }
      
      public function get canWatering() : uint
      {
         return this.can_watering$field;
      }
      
      public function clearFriendDegree() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.friend_degree$field = new uint();
      }
      
      public function get hasFriendDegree() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set friendDegree(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.friend_degree$field = param1;
      }
      
      public function get friendDegree() : uint
      {
         return this.friend_degree$field;
      }
      
      public function clearNextLevelDegree() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.next_level_degree$field = new uint();
      }
      
      public function get hasNextLevelDegree() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set nextLevelDegree(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.next_level_degree$field = param1;
      }
      
      public function get nextLevelDegree() : uint
      {
         return this.next_level_degree$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
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
      
      public function clearFriendLevelCoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.friend_level_coin$field = new uint();
      }
      
      public function get hasFriendLevelCoin() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set friendLevelCoin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.friend_level_coin$field = param1;
      }
      
      public function get friendLevelCoin() : uint
      {
         return this.friend_level_coin$field;
      }
      
      public function clearRoleLevelCoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.role_level_coin$field = new uint();
      }
      
      public function get hasRoleLevelCoin() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set roleLevelCoin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.role_level_coin$field = param1;
      }
      
      public function get roleLevelCoin() : uint
      {
         return this.role_level_coin$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFriendKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.friend_key$field);
         }
         if(this.hasFriendName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.friend_name$field);
         }
         if(this.hasFriendLvl)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.friend_lvl$field);
         }
         if(this.hasCanWatering)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.can_watering$field);
         }
         if(this.hasFriendDegree)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.friend_degree$field);
         }
         if(this.hasNextLevelDegree)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.next_level_degree$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasFriendLevelCoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.friend_level_coin$field);
         }
         if(this.hasRoleLevelCoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.role_level_coin$field);
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
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
