package serverProto.player
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoPoint;
   import serverProto.inc.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoDiamondInfo;
   import serverProto.user.ProtoTaskSign;
   import serverProto.user.ProtoExtraShowInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPlayerShowInfo extends Message
   {
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerShowInfo.player_key","playerKey",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoPlayerShowInfo.ninja","ninja",2 << 3 | WireType.VARINT);
      
      public static const NOTIFY_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoPlayerShowInfo.notify_type","notifyType",3 << 3 | WireType.VARINT,ProtoMoveNotifyType);
      
      public static const POINTS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerShowInfo.points","points",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.player.ProtoPlayerShowInfo.name","name",5 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const IS_FIGHT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.player.ProtoPlayerShowInfo.is_fight","isFight",6 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoPlayerShowInfo.vip_level","vipLevel",7 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoPlayerShowInfo.level","level",8 << 3 | WireType.VARINT);
      
      public static const TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.player.ProtoPlayerShowInfo.title_id","titleId",9 << 3 | WireType.VARINT);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerShowInfo.diamond_info","diamondInfo",10 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const TASK_SIGN:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoPlayerShowInfo.task_sign","taskSign",11 << 3 | WireType.VARINT,ProtoTaskSign);
      
      public static const SHOW_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoPlayerShowInfo.show_ninja","showNinja",12 << 3 | WireType.VARINT);
      
      public static const FASHION_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoPlayerShowInfo.fashion_ninja","fashionNinja",13 << 3 | WireType.VARINT);
      
      public static const EXTRA_SHOW_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerShowInfo.extra_show_info","extraShowInfo",14 << 3 | WireType.LENGTH_DELIMITED,ProtoExtraShowInfo);
       
      private var player_key$field:ProtoPlayerKey;
      
      private var ninja$field:int;
      
      private var hasField$0:uint = 0;
      
      private var notify_type$field:int;
      
      [ArrayElementType("serverProto.inc.ProtoPoint")]
      public var points:Array;
      
      private var name$field:String;
      
      private var is_fight$field:Boolean;
      
      private var vip_level$field:int;
      
      private var level$field:int;
      
      private var title_id$field:uint;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var task_sign$field:int;
      
      private var show_ninja$field:int;
      
      private var fashion_ninja$field:int;
      
      private var extra_show_info$field:ProtoExtraShowInfo;
      
      public function ProtoPlayerShowInfo()
      {
         this.points = [];
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
      
      public function set playerKey(param1:ProtoPlayerKey) : void
      {
         this.player_key$field = param1;
      }
      
      public function get playerKey() : ProtoPlayerKey
      {
         return this.player_key$field;
      }
      
      public function clearNinja() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja$field = new int();
      }
      
      public function get hasNinja() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninja(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja$field = param1;
      }
      
      public function get ninja() : int
      {
         return this.ninja$field;
      }
      
      public function clearNotifyType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.notify_type$field = new int();
      }
      
      public function get hasNotifyType() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set notifyType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.notify_type$field = param1;
      }
      
      public function get notifyType() : int
      {
         return this.notify_type$field;
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
      
      public function clearIsFight() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.is_fight$field = new Boolean();
      }
      
      public function get hasIsFight() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set isFight(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.is_fight$field = param1;
      }
      
      public function get isFight() : Boolean
      {
         return this.is_fight$field;
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
      
      public function clearTitleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.title_id$field = new uint();
      }
      
      public function get hasTitleId() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set titleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
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
      
      public function clearTaskSign() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.task_sign$field = new int();
      }
      
      public function get hasTaskSign() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set taskSign(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.task_sign$field = param1;
      }
      
      public function get taskSign() : int
      {
         return this.task_sign$field;
      }
      
      public function clearShowNinja() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.show_ninja$field = new int();
      }
      
      public function get hasShowNinja() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set showNinja(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.show_ninja$field = param1;
      }
      
      public function get showNinja() : int
      {
         return this.show_ninja$field;
      }
      
      public function clearFashionNinja() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.fashion_ninja$field = new int();
      }
      
      public function get hasFashionNinja() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set fashionNinja(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.fashion_ninja$field = param1;
      }
      
      public function get fashionNinja() : int
      {
         return this.fashion_ninja$field;
      }
      
      public function clearExtraShowInfo() : void
      {
         this.extra_show_info$field = null;
      }
      
      public function get hasExtraShowInfo() : Boolean
      {
         return this.extra_show_info$field != null;
      }
      
      public function set extraShowInfo(param1:ProtoExtraShowInfo) : void
      {
         this.extra_show_info$field = param1;
      }
      
      public function get extraShowInfo() : ProtoExtraShowInfo
      {
         return this.extra_show_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasPlayerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_key$field);
         }
         if(this.hasNinja)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.ninja$field);
         }
         if(this.hasNotifyType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.notify_type$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.points.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.points[_loc2_]);
            _loc2_++;
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasIsFight)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_BOOL(param1,this.is_fight$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.level$field);
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
         if(this.hasTaskSign)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_ENUM(param1,this.task_sign$field);
         }
         if(this.hasShowNinja)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_INT32(param1,this.show_ninja$field);
         }
         if(this.hasFashionNinja)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_INT32(param1,this.fashion_ninja$field);
         }
         if(this.hasExtraShowInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,14);
            WriteUtils.write$TYPE_MESSAGE(param1,this.extra_show_info$field);
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
