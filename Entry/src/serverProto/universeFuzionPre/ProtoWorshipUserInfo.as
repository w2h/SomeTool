package serverProto.universeFuzionPre
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoPlayerVipLevel;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWorshipUserInfo extends Message
   {
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.universeFuzionPre.ProtoWorshipUserInfo.name","name",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const COMBACT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoWorshipUserInfo.combact_power","combactPower",2 << 3 | WireType.VARINT);
      
      public static const USER_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoWorshipUserInfo.user_count","userCount",3 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoWorshipUserInfo.role_category","roleCategory",4 << 3 | WireType.VARINT);
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoWorshipUserInfo.player_key","playerKey",5 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const TITLE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoWorshipUserInfo.title","title",6 << 3 | WireType.VARINT);
      
      public static const REWARD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoWorshipUserInfo.reward","reward",7 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.universeFuzionPre.ProtoWorshipUserInfo.vip_level","vipLevel",8 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
       
      private var name$field:String;
      
      private var combact_power$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var user_count$field:uint;
      
      private var role_category$field:uint;
      
      private var player_key$field:ProtoPlayerKey;
      
      private var title$field:uint;
      
      private var reward$field:uint;
      
      private var vip_level$field:int;
      
      public function ProtoWorshipUserInfo()
      {
         super();
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearCombactPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.combact_power$field = new uint();
      }
      
      public function get hasCombactPower() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set combactPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.combact_power$field = param1;
      }
      
      public function get combactPower() : uint
      {
         return this.combact_power$field;
      }
      
      public function clearUserCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.user_count$field = new uint();
      }
      
      public function get hasUserCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set userCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.user_count$field = param1;
      }
      
      public function get userCount() : uint
      {
         return this.user_count$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.role_category$field = new uint();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set roleCategory(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : uint
      {
         return this.role_category$field;
      }
      
      public function clearPlayerKey() : void
      {
         this.player_key$field = null;
      }
      
      public function get hasPlayerKey() : Boolean
      {
         return this.player_key$field != null;
      }
      
      public function set playerKey(param1:ProtoPlayerKey) : void
      {
         this.player_key$field = param1;
      }
      
      public function get playerKey() : ProtoPlayerKey
      {
         return this.player_key$field;
      }
      
      public function clearTitle() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.title$field = new uint();
      }
      
      public function get hasTitle() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set title(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.title$field = param1;
      }
      
      public function get title() : uint
      {
         return this.title$field;
      }
      
      public function clearReward() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.reward$field = new uint();
      }
      
      public function get hasReward() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set reward(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.reward$field = param1;
      }
      
      public function get reward() : uint
      {
         return this.reward$field;
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
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasCombactPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.combact_power$field);
         }
         if(this.hasUserCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.user_count$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.role_category$field);
         }
         if(this.hasPlayerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_key$field);
         }
         if(this.hasTitle)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.title$field);
         }
         if(this.hasReward)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.reward$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
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
