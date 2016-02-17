package serverProto.activity
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
   
   public final class ProtoValentineRank extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoValentineRank.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoValentineRank.player_name","playerName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineRank.role_category","roleCategory",3 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.activity.ProtoValentineRank.vip_level","vipLevel",4 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoValentineRank.diamond_info","diamondInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineRank.data","data",6 << 3 | WireType.VARINT);
       
      private var player_id$field:ProtoPlayerKey;
      
      private var player_name$field:String;
      
      private var role_category$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var vip_level$field:int;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var data$field:uint;
      
      public function ProtoValentineRank()
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
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.role_category$field = new uint();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set roleCategory(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : uint
      {
         return this.role_category$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
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
      
      public function clearData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.data$field = new uint();
      }
      
      public function get hasData() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set data(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.data$field = param1;
      }
      
      public function get data() : uint
      {
         return this.data$field;
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
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.role_category$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.data$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
