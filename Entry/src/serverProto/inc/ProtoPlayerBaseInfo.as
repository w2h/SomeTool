package serverProto.inc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPlayerBaseInfo extends Message
   {
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.inc.ProtoPlayerBaseInfo.player_key","playerKey",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.inc.ProtoPlayerBaseInfo.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoPlayerBaseInfo.level","level",3 << 3 | WireType.VARINT);
      
      public static const SHOW_NINJIA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoPlayerBaseInfo.show_ninjia","showNinjia",4 << 3 | WireType.VARINT);
      
      public static const TABAR_NINJIA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoPlayerBaseInfo.tabar_ninjia","tabarNinjia",5 << 3 | WireType.VARINT);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.inc.ProtoPlayerBaseInfo.diamond_info","diamondInfo",6 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.inc.ProtoPlayerBaseInfo.vip_level","vipLevel",7 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const HISTORY_MAX_COMBAT_POWER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoPlayerBaseInfo.history_max_combat_power","historyMaxCombatPower",8 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoPlayerBaseInfo.role_category","roleCategory",9 << 3 | WireType.VARINT);
       
      private var player_key$field:serverProto.inc.ProtoPlayerKey;
      
      private var name$field:String;
      
      private var level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var show_ninjia$field:uint;
      
      private var tabar_ninjia$field:uint;
      
      private var diamond_info$field:serverProto.inc.ProtoDiamondInfo;
      
      private var vip_level$field:int;
      
      private var history_max_combat_power$field:int;
      
      private var role_category$field:int;
      
      public function ProtoPlayerBaseInfo()
      {
         super();
      }
      
      public function clearPlayerKey() : void
      {
         this.player_key$field = null;
      }
      
      public function get hasPlayerKey() : Boolean
      {
         return this.player_key$field != null;
      }
      
      public function set playerKey(param1:serverProto.inc.ProtoPlayerKey) : void
      {
         this.player_key$field = param1;
      }
      
      public function get playerKey() : serverProto.inc.ProtoPlayerKey
      {
         return this.player_key$field;
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
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.level$field = new uint();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set level(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.level$field = param1;
      }
      
      public function get level() : uint
      {
         return this.level$field;
      }
      
      public function clearShowNinjia() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.show_ninjia$field = new uint();
      }
      
      public function get hasShowNinjia() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set showNinjia(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.show_ninjia$field = param1;
      }
      
      public function get showNinjia() : uint
      {
         return this.show_ninjia$field;
      }
      
      public function clearTabarNinjia() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.tabar_ninjia$field = new uint();
      }
      
      public function get hasTabarNinjia() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set tabarNinjia(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.tabar_ninjia$field = param1;
      }
      
      public function get tabarNinjia() : uint
      {
         return this.tabar_ninjia$field;
      }
      
      public function clearDiamondInfo() : void
      {
         this.diamond_info$field = null;
      }
      
      public function get hasDiamondInfo() : Boolean
      {
         return this.diamond_info$field != null;
      }
      
      public function set diamondInfo(param1:serverProto.inc.ProtoDiamondInfo) : void
      {
         this.diamond_info$field = param1;
      }
      
      public function get diamondInfo() : serverProto.inc.ProtoDiamondInfo
      {
         return this.diamond_info$field;
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
      
      public function clearHistoryMaxCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.history_max_combat_power$field = new int();
      }
      
      public function get hasHistoryMaxCombatPower() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set historyMaxCombatPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.history_max_combat_power$field = param1;
      }
      
      public function get historyMaxCombatPower() : int
      {
         return this.history_max_combat_power$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.role_category$field = new int();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set roleCategory(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : int
      {
         return this.role_category$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_key$field);
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.level$field);
         }
         if(this.hasShowNinjia)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.show_ninjia$field);
         }
         if(this.hasTabarNinjia)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.tabar_ninjia$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasHistoryMaxCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.history_max_combat_power$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.role_category$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
