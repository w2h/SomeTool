package serverProto.clientLogin
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.user.ProtoPlayerInfo;
   import serverProto.user.ProtoSecondaryPasswordInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoLoginResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.clientLogin.ProtoLoginResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CHANNEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.clientLogin.ProtoLoginResponse.channel","channel",3 << 3 | WireType.VARINT);
      
      public static const SCENE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.clientLogin.ProtoLoginResponse.scene","scene",4 << 3 | WireType.VARINT);
      
      public static const PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.clientLogin.ProtoLoginResponse.player","player",5 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerInfo);
      
      public static const FROM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.clientLogin.ProtoLoginResponse.from","from",6 << 3 | WireType.VARINT);
      
      public static const SECONDARY_PASSWORD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.clientLogin.ProtoLoginResponse.secondary_password_info","secondaryPasswordInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoSecondaryPasswordInfo);
      
      public static const IS_MERGED_SERVER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.clientLogin.ProtoLoginResponse.is_merged_server","isMergedServer",8 << 3 | WireType.VARINT);
      
      public static const HIDE_ZONE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.clientLogin.ProtoLoginResponse.hide_zone_id","hideZoneId",9 << 3 | WireType.VARINT);
      
      public static const CAN_PVP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.clientLogin.ProtoLoginResponse.can_pvp","canPvp",10 << 3 | WireType.VARINT);
      
      public static const IS_INNER_QQ:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.clientLogin.ProtoLoginResponse.is_inner_qq","isInnerQq",11 << 3 | WireType.VARINT);
      
      public static const GUILD_BEAST_OPEN_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.clientLogin.ProtoLoginResponse.guild_beast_open_flag","guildBeastOpenFlag",12 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var channel$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var scene$field:uint;
      
      private var player$field:ProtoPlayerInfo;
      
      private var from$field:uint;
      
      private var secondary_password_info$field:ProtoSecondaryPasswordInfo;
      
      private var is_merged_server$field:Boolean;
      
      private var hide_zone_id$field:int;
      
      private var can_pvp$field:int;
      
      private var is_inner_qq$field:Boolean;
      
      private var guild_beast_open_flag$field:Boolean;
      
      public function ProtoLoginResponse()
      {
         super();
      }
      
      public function clearChannel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.channel$field = new uint();
      }
      
      public function get hasChannel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set channel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.channel$field = param1;
      }
      
      public function get channel() : uint
      {
         return this.channel$field;
      }
      
      public function clearScene() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.scene$field = new uint();
      }
      
      public function get hasScene() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set scene(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.scene$field = param1;
      }
      
      public function get scene() : uint
      {
         return this.scene$field;
      }
      
      public function clearPlayer() : void
      {
         this.player$field = null;
      }
      
      public function get hasPlayer() : Boolean
      {
         return this.player$field != null;
      }
      
      public function set player(param1:ProtoPlayerInfo) : void
      {
         this.player$field = param1;
      }
      
      public function get player() : ProtoPlayerInfo
      {
         return this.player$field;
      }
      
      public function clearFrom() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.from$field = new uint();
      }
      
      public function get hasFrom() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set from(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.from$field = param1;
      }
      
      public function get from() : uint
      {
         return this.from$field;
      }
      
      public function clearSecondaryPasswordInfo() : void
      {
         this.secondary_password_info$field = null;
      }
      
      public function get hasSecondaryPasswordInfo() : Boolean
      {
         return this.secondary_password_info$field != null;
      }
      
      public function set secondaryPasswordInfo(param1:ProtoSecondaryPasswordInfo) : void
      {
         this.secondary_password_info$field = param1;
      }
      
      public function get secondaryPasswordInfo() : ProtoSecondaryPasswordInfo
      {
         return this.secondary_password_info$field;
      }
      
      public function clearIsMergedServer() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.is_merged_server$field = new Boolean();
      }
      
      public function get hasIsMergedServer() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set isMergedServer(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.is_merged_server$field = param1;
      }
      
      public function get isMergedServer() : Boolean
      {
         return this.is_merged_server$field;
      }
      
      public function clearHideZoneId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.hide_zone_id$field = new int();
      }
      
      public function get hasHideZoneId() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set hideZoneId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.hide_zone_id$field = param1;
      }
      
      public function get hideZoneId() : int
      {
         return this.hide_zone_id$field;
      }
      
      public function clearCanPvp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.can_pvp$field = new int();
      }
      
      public function get hasCanPvp() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set canPvp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.can_pvp$field = param1;
      }
      
      public function get canPvp() : int
      {
         return this.can_pvp$field;
      }
      
      public function clearIsInnerQq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.is_inner_qq$field = new Boolean();
      }
      
      public function get hasIsInnerQq() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set isInnerQq(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.is_inner_qq$field = param1;
      }
      
      public function get isInnerQq() : Boolean
      {
         return this.is_inner_qq$field;
      }
      
      public function clearGuildBeastOpenFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.guild_beast_open_flag$field = new Boolean();
      }
      
      public function get hasGuildBeastOpenFlag() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set guildBeastOpenFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.guild_beast_open_flag$field = param1;
      }
      
      public function get guildBeastOpenFlag() : Boolean
      {
         return this.guild_beast_open_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasChannel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.channel$field);
         }
         if(this.hasScene)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.scene$field);
         }
         if(this.hasPlayer)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player$field);
         }
         if(this.hasFrom)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.from$field);
         }
         if(this.hasSecondaryPasswordInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.secondary_password_info$field);
         }
         if(this.hasIsMergedServer)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_BOOL(param1,this.is_merged_server$field);
         }
         if(this.hasHideZoneId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.hide_zone_id$field);
         }
         if(this.hasCanPvp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.can_pvp$field);
         }
         if(this.hasIsInnerQq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_BOOL(param1,this.is_inner_qq$field);
         }
         if(this.hasGuildBeastOpenFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_BOOL(param1,this.guild_beast_open_flag$field);
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
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
