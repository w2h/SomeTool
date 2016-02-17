package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTeamMemberInfo extends Message
   {
      
      public static const PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoTeamMemberInfo.player","player",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const IS_CAPTAIN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.team.ProtoTeamMemberInfo.is_captain","isCaptain",2 << 3 | WireType.VARINT);
      
      public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.index","index",3 << 3 | WireType.VARINT);
      
      public static const NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.ninja","ninja",4 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoTeamMemberInfo.name","name",5 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoTeamMemberInfo.status","status",6 << 3 | WireType.VARINT,ProtoTeamMemberStatus);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.level","level",7 << 3 | WireType.VARINT);
      
      public static const CURRENT_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.current_hp","currentHp",8 << 3 | WireType.VARINT);
      
      public static const MAX_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.max_hp","maxHp",9 << 3 | WireType.VARINT);
      
      public static const FORMATION_NINJAI_LIST:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.formation_ninjai_list","formationNinjaiList",10 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoTeamMemberInfo.vip_level","vipLevel",11 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoTeamMemberInfo.diamond_info","diamondInfo",12 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const SHOW_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.show_ninja","showNinja",15 << 3 | WireType.VARINT);
      
      public static const FASHION_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberInfo.fashion_ninja","fashionNinja",16 << 3 | WireType.VARINT);
       
      public var player:ProtoPlayerKey;
      
      private var is_captain$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var index$field:int;
      
      private var ninja$field:int;
      
      private var name$field:String;
      
      private var status$field:int;
      
      private var level$field:int;
      
      private var current_hp$field:int;
      
      private var max_hp$field:int;
      
      [ArrayElementType("int")]
      public var formationNinjaiList:Array;
      
      private var vip_level$field:int;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var show_ninja$field:int;
      
      private var fashion_ninja$field:int;
      
      public function ProtoTeamMemberInfo()
      {
         this.formationNinjaiList = [];
         super();
      }
      
      public function clearIsCaptain() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_captain$field = new Boolean();
      }
      
      public function get hasIsCaptain() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isCaptain(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_captain$field = param1;
      }
      
      public function get isCaptain() : Boolean
      {
         return this.is_captain$field;
      }
      
      public function clearIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.index$field = new int();
      }
      
      public function get hasIndex() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set index(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.index$field = param1;
      }
      
      public function get index() : int
      {
         return this.index$field;
      }
      
      public function clearNinja() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.ninja$field = new int();
      }
      
      public function get hasNinja() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set ninja(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.ninja$field = param1;
      }
      
      public function get ninja() : int
      {
         return this.ninja$field;
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
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.status$field = new int();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set status(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.status$field = param1;
      }
      
      public function get status() : int
      {
         return this.status$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      public function clearCurrentHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.current_hp$field = new int();
      }
      
      public function get hasCurrentHp() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set currentHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.current_hp$field = param1;
      }
      
      public function get currentHp() : int
      {
         return this.current_hp$field;
      }
      
      public function clearMaxHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.max_hp$field = new int();
      }
      
      public function get hasMaxHp() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set maxHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.max_hp$field = param1;
      }
      
      public function get maxHp() : int
      {
         return this.max_hp$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
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
      
      public function clearShowNinja() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.show_ninja$field = new int();
      }
      
      public function get hasShowNinja() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set showNinja(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.show_ninja$field = param1;
      }
      
      public function get showNinja() : int
      {
         return this.show_ninja$field;
      }
      
      public function clearFashionNinja() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.fashion_ninja$field = new int();
      }
      
      public function get hasFashionNinja() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set fashionNinja(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.fashion_ninja$field = param1;
      }
      
      public function get fashionNinja() : int
      {
         return this.fashion_ninja$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.player);
         if(this.hasIsCaptain)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.is_captain$field);
         }
         if(this.hasIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.index$field);
         }
         if(this.hasNinja)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.ninja$field);
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_ENUM(param1,this.status$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.level$field);
         }
         if(this.hasCurrentHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.current_hp$field);
         }
         if(this.hasMaxHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.max_hp$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.formationNinjaiList.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.formationNinjaiList[_loc2_]);
            _loc2_++;
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,12);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasShowNinja)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_INT32(param1,this.show_ninja$field);
         }
         if(this.hasFashionNinja)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_INT32(param1,this.fashion_ninja$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
