package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniFuzBdkWarPlayer extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CAREER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer.career","career",3 << 3 | WireType.VARINT);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer.combat_power","combatPower",4 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer.level","level",5 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer.vip_level","vipLevel",6 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer.diamond_info","diamondInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const FUZION_POINT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer.fuzion_point","fuzionPoint",8 << 3 | WireType.VARINT);
      
      public static const IS_READY:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer.is_ready","isReady",9 << 3 | WireType.VARINT);
      
      public static const IS_ENTER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer.is_enter","isEnter",10 << 3 | WireType.VARINT);
       
      public var playerId:ProtoPlayerKey;
      
      private var name$field:String;
      
      private var career$field:int;
      
      private var hasField$0:uint = 0;
      
      private var combat_power$field:int;
      
      private var level$field:int;
      
      private var vip_level$field:int;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var fuzion_point$field:int;
      
      private var is_ready$field:Boolean;
      
      private var is_enter$field:Boolean;
      
      public function ProtoUniFuzBdkWarPlayer()
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
      
      public function clearCareer() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.career$field = new int();
      }
      
      public function get hasCareer() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set career(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.career$field = param1;
      }
      
      public function get career() : int
      {
         return this.career$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.combat_power$field = new int();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set combatPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : int
      {
         return this.combat_power$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
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
      
      public function clearFuzionPoint() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.fuzion_point$field = new int();
      }
      
      public function get hasFuzionPoint() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set fuzionPoint(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.fuzion_point$field = param1;
      }
      
      public function get fuzionPoint() : int
      {
         return this.fuzion_point$field;
      }
      
      public function clearIsReady() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.is_ready$field = new Boolean();
      }
      
      public function get hasIsReady() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set isReady(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.is_ready$field = param1;
      }
      
      public function get isReady() : Boolean
      {
         return this.is_ready$field;
      }
      
      public function clearIsEnter() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.is_enter$field = new Boolean();
      }
      
      public function get hasIsEnter() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set isEnter(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.is_enter$field = param1;
      }
      
      public function get isEnter() : Boolean
      {
         return this.is_enter$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.playerId);
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasCareer)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.career$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.combat_power$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.level$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
         }
         if(this.hasFuzionPoint)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.fuzion_point$field);
         }
         if(this.hasIsReady)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_BOOL(param1,this.is_ready$field);
         }
         if(this.hasIsEnter)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_BOOL(param1,this.is_enter$field);
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
