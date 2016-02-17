package serverProto.expedition
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerVipLevel;
   import serverProto.inc.ProtoDiamondInfo;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoExpeditionStageInfo extends Message
   {
      
      public static const STAGE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.stage_level","stageLevel",1 << 3 | WireType.VARINT);
      
      public static const RIVAL_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.rival_level","rivalLevel",2 << 3 | WireType.VARINT);
      
      public static const RIVAL_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.expedition.ProtoExpeditionStageInfo.rival_name","rivalName",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.expedition.ProtoExpeditionStageInfo.guild_name","guildName",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionStageInfo.ninja_list","ninjaList",5 << 3 | WireType.LENGTH_DELIMITED,ProtoExpeditionStageNinjaInfo);
      
      public static const CHEST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionStageInfo.chest","chest",6 << 3 | WireType.LENGTH_DELIMITED,ProtoExpeditionChestInfo);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.expedition.ProtoExpeditionStageInfo.vip_level","vipLevel",7 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionStageInfo.diamond_info","diamondInfo",8 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const SUMMON_MONSTER_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.summon_monster_id","summonMonsterId",9 << 3 | WireType.VARINT);
      
      public static const AWARD_STAGE_STATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.award_stage_state","awardStageState",10 << 3 | WireType.VARINT);
      
      public static const POWER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.power","power",11 << 3 | WireType.VARINT);
      
      public static const OPEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.open_level","openLevel",12 << 3 | WireType.VARINT);
      
      public static const OPEN_STAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.open_stage","openStage",13 << 3 | WireType.VARINT);
      
      public static const RAIDS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageInfo.raids","raids",14 << 3 | WireType.VARINT);
      
      public static const RIVAL_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionStageInfo.rival_id","rivalId",15 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.expedition.ProtoExpeditionStageInfo.guild_id","guildId",16 << 3 | WireType.VARINT);
       
      public var stageLevel:int;
      
      private var rival_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var rival_name$field:String;
      
      private var guild_name$field:String;
      
      [ArrayElementType("serverProto.expedition.ProtoExpeditionStageNinjaInfo")]
      public var ninjaList:Array;
      
      private var chest$field:serverProto.expedition.ProtoExpeditionChestInfo;
      
      private var vip_level$field:int;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      private var summon_monster_id$field:int;
      
      private var award_stage_state$field:int;
      
      private var power$field:int;
      
      private var open_level$field:int;
      
      private var open_stage$field:int;
      
      private var raids$field:int;
      
      private var rival_id$field:ProtoPlayerKey;
      
      private var guild_id$field:UInt64;
      
      public function ProtoExpeditionStageInfo()
      {
         this.ninjaList = [];
         super();
      }
      
      public function clearRivalLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rival_level$field = new int();
      }
      
      public function get hasRivalLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set rivalLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rival_level$field = param1;
      }
      
      public function get rivalLevel() : int
      {
         return this.rival_level$field;
      }
      
      public function clearRivalName() : void
      {
         this.rival_name$field = null;
      }
      
      public function get hasRivalName() : Boolean
      {
         return this.rival_name$field != null;
      }
      
      public function set rivalName(param1:String) : void
      {
         this.rival_name$field = param1;
      }
      
      public function get rivalName() : String
      {
         return this.rival_name$field;
      }
      
      public function clearGuildName() : void
      {
         this.guild_name$field = null;
      }
      
      public function get hasGuildName() : Boolean
      {
         return this.guild_name$field != null;
      }
      
      public function set guildName(param1:String) : void
      {
         this.guild_name$field = param1;
      }
      
      public function get guildName() : String
      {
         return this.guild_name$field;
      }
      
      public function clearChest() : void
      {
         this.chest$field = null;
      }
      
      public function get hasChest() : Boolean
      {
         return this.chest$field != null;
      }
      
      public function set chest(param1:serverProto.expedition.ProtoExpeditionChestInfo) : void
      {
         this.chest$field = param1;
      }
      
      public function get chest() : serverProto.expedition.ProtoExpeditionChestInfo
      {
         return this.chest$field;
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
      
      public function clearSummonMonsterId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.summon_monster_id$field = new int();
      }
      
      public function get hasSummonMonsterId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set summonMonsterId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.summon_monster_id$field = param1;
      }
      
      public function get summonMonsterId() : int
      {
         return this.summon_monster_id$field;
      }
      
      public function clearAwardStageState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.award_stage_state$field = new int();
      }
      
      public function get hasAwardStageState() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set awardStageState(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.award_stage_state$field = param1;
      }
      
      public function get awardStageState() : int
      {
         return this.award_stage_state$field;
      }
      
      public function clearPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.power$field = new int();
      }
      
      public function get hasPower() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set power(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.power$field = param1;
      }
      
      public function get power() : int
      {
         return this.power$field;
      }
      
      public function clearOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.open_level$field = new int();
      }
      
      public function get hasOpenLevel() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set openLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.open_level$field = param1;
      }
      
      public function get openLevel() : int
      {
         return this.open_level$field;
      }
      
      public function clearOpenStage() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.open_stage$field = new int();
      }
      
      public function get hasOpenStage() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set openStage(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.open_stage$field = param1;
      }
      
      public function get openStage() : int
      {
         return this.open_stage$field;
      }
      
      public function clearRaids() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.raids$field = new int();
      }
      
      public function get hasRaids() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set raids(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.raids$field = param1;
      }
      
      public function get raids() : int
      {
         return this.raids$field;
      }
      
      public function clearRivalId() : void
      {
         this.rival_id$field = null;
      }
      
      public function get hasRivalId() : Boolean
      {
         return this.rival_id$field != null;
      }
      
      public function set rivalId(param1:ProtoPlayerKey) : void
      {
         this.rival_id$field = param1;
      }
      
      public function get rivalId() : ProtoPlayerKey
      {
         return this.rival_id$field;
      }
      
      public function clearGuildId() : void
      {
         this.guild_id$field = null;
      }
      
      public function get hasGuildId() : Boolean
      {
         return this.guild_id$field != null;
      }
      
      public function set guildId(param1:UInt64) : void
      {
         this.guild_id$field = param1;
      }
      
      public function get guildId() : UInt64
      {
         return this.guild_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.stageLevel);
         if(this.hasRivalLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.rival_level$field);
         }
         if(this.hasRivalName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.rival_name$field);
         }
         if(this.hasGuildName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.guild_name$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaList[_loc2_]);
            _loc2_++;
         }
         if(this.hasChest)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.chest$field);
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
         if(this.hasSummonMonsterId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.summon_monster_id$field);
         }
         if(this.hasAwardStageState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_SINT32(param1,this.award_stage_state$field);
         }
         if(this.hasPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_SINT32(param1,this.power$field);
         }
         if(this.hasOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_SINT32(param1,this.open_level$field);
         }
         if(this.hasOpenStage)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_SINT32(param1,this.open_stage$field);
         }
         if(this.hasRaids)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_SINT32(param1,this.raids$field);
         }
         if(this.hasRivalId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,15);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rival_id$field);
         }
         if(this.hasGuildId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_UINT64(param1,this.guild_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 16, Size: 16)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
