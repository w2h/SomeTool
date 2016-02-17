package serverProto.rank
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
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
   
   public final class ProtoPvpRank extends Message
   {
      
      public static const RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoPvpRank.rank","rank",1 << 3 | WireType.VARINT);
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoPvpRank.player_id","playerId",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.rank.ProtoPvpRank.player_name","playerName",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoPvpRank.role_category","roleCategory",4 << 3 | WireType.VARINT);
      
      public static const ROLE_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoPvpRank.role_level","roleLevel",5 << 3 | WireType.VARINT);
      
      public static const MAX_WIN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoPvpRank.max_win_count","maxWinCount",6 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoPvpRank.score","score",7 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.rank.ProtoPvpRank.vip_level","vipLevel",8 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoPvpRank.title_id","titleId",9 << 3 | WireType.VARINT);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoPvpRank.diamond_info","diamondInfo",10 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
       
      private var rank$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var player_id$field:ProtoPlayerKey;
      
      private var player_name$field:String;
      
      private var role_category$field:uint;
      
      private var role_level$field:uint;
      
      private var max_win_count$field:uint;
      
      private var score$field:uint;
      
      private var vip_level$field:int;
      
      private var title_id$field:uint;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      public function ProtoPvpRank()
      {
         super();
      }
      
      public function clearRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rank$field = new uint();
      }
      
      public function get hasRank() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set rank(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rank$field = param1;
      }
      
      public function get rank() : uint
      {
         return this.rank$field;
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
      
      public function clearRoleLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.role_level$field = new uint();
      }
      
      public function get hasRoleLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set roleLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.role_level$field = param1;
      }
      
      public function get roleLevel() : uint
      {
         return this.role_level$field;
      }
      
      public function clearMaxWinCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.max_win_count$field = new uint();
      }
      
      public function get hasMaxWinCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set maxWinCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.max_win_count$field = param1;
      }
      
      public function get maxWinCount() : uint
      {
         return this.max_win_count$field;
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.score$field = new uint();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set score(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.score$field = param1;
      }
      
      public function get score() : uint
      {
         return this.score$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
      }
      
      public function clearTitleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.title_id$field = new uint();
      }
      
      public function get hasTitleId() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set titleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.title_id$field = param1;
      }
      
      public function get titleId() : uint
      {
         return this.title_id$field;
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
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.rank$field);
         }
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasPlayerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.player_name$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.role_category$field);
         }
         if(this.hasRoleLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.role_level$field);
         }
         if(this.hasMaxWinCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.max_win_count$field);
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.score$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasTitleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.title_id$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
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
