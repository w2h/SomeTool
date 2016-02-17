package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoNaurtoAllPropertyInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildBeastInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const SUMMON_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoGuildBeastInfo.summon_flag","summonFlag",2 << 3 | WireType.VARINT);
      
      public static const COLOR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.color","color",3 << 3 | WireType.VARINT);
      
      public static const SUMMON_CHIP_NUM:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.summon_chip_num","summonChipNum",4 << 3 | WireType.VARINT);
      
      public static const MAX_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.max_level","maxLevel",5 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.level","level",6 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.exp","exp",7 << 3 | WireType.VARINT);
      
      public static const MAX_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.max_exp","maxExp",8 << 3 | WireType.VARINT);
      
      public static const CHAKRA:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.chakra","chakra",9 << 3 | WireType.VARINT);
      
      public static const CHUZHAN_PERCENT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildBeastInfo.chuzhan_percent","chuzhanPercent",10 << 3 | WireType.VARINT);
      
      public static const ADDITION_PERCHENT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildBeastInfo.addition_perchent","additionPerchent",11 << 3 | WireType.VARINT);
      
      public static const CUR_CHUZHAN_PROPERY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildBeastInfo.cur_chuzhan_propery","curChuzhanPropery",12 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const NEXT_CHUZHAN_PROPERY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildBeastInfo.next_chuzhan_propery","nextChuzhanPropery",13 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const CUR_ADDITION_PROPERY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildBeastInfo.cur_addition_propery","curAdditionPropery",14 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const NEXT_ADDITION_PROPERY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildBeastInfo.next_addition_propery","nextAdditionPropery",15 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const AWAKEN_SKILLS:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.awaken_skills","awakenSkills",16 << 3 | WireType.VARINT);
      
      public static const COMMON_SKILLS:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.common_skills","commonSkills",17 << 3 | WireType.VARINT);
      
      public static const PASSIVE_SKILLS:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.passive_skills","passiveSkills",18 << 3 | WireType.VARINT);
      
      public static const IS_OPEN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoGuildBeastInfo.is_open","isOpen",19 << 3 | WireType.VARINT);
      
      public static const SUMMON_BEAST_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoGuildBeastInfo.summon_beast_flag","summonBeastFlag",20 << 3 | WireType.VARINT);
      
      public static const MAX_LEVEL_GUILD_LIMIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.max_level_guild_limit","maxLevelGuildLimit",21 << 3 | WireType.VARINT);
      
      public static const QUALITY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastInfo.quality","quality",22 << 3 | WireType.VARINT);
       
      private var id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var summon_flag$field:Boolean;
      
      private var color$field:int;
      
      private var summon_chip_num$field:int;
      
      private var max_level$field:int;
      
      private var level$field:int;
      
      private var exp$field:int;
      
      private var max_exp$field:int;
      
      private var chakra$field:int;
      
      private var chuzhan_percent$field:uint;
      
      private var addition_perchent$field:uint;
      
      private var cur_chuzhan_propery$field:ProtoNaurtoAllPropertyInfo;
      
      private var next_chuzhan_propery$field:ProtoNaurtoAllPropertyInfo;
      
      private var cur_addition_propery$field:ProtoNaurtoAllPropertyInfo;
      
      private var next_addition_propery$field:ProtoNaurtoAllPropertyInfo;
      
      [ArrayElementType("int")]
      public var awakenSkills:Array;
      
      [ArrayElementType("int")]
      public var commonSkills:Array;
      
      [ArrayElementType("int")]
      public var passiveSkills:Array;
      
      private var is_open$field:Boolean;
      
      private var summon_beast_flag$field:Boolean;
      
      private var max_level_guild_limit$field:int;
      
      private var quality$field:int;
      
      public function ProtoGuildBeastInfo()
      {
         this.awakenSkills = [];
         this.commonSkills = [];
         this.passiveSkills = [];
         super();
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.id$field = new int();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set id(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.id$field = param1;
      }
      
      public function get id() : int
      {
         return this.id$field;
      }
      
      public function clearSummonFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.summon_flag$field = new Boolean();
      }
      
      public function get hasSummonFlag() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set summonFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.summon_flag$field = param1;
      }
      
      public function get summonFlag() : Boolean
      {
         return this.summon_flag$field;
      }
      
      public function clearColor() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.color$field = new int();
      }
      
      public function get hasColor() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set color(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.color$field = param1;
      }
      
      public function get color() : int
      {
         return this.color$field;
      }
      
      public function clearSummonChipNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.summon_chip_num$field = new int();
      }
      
      public function get hasSummonChipNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set summonChipNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.summon_chip_num$field = param1;
      }
      
      public function get summonChipNum() : int
      {
         return this.summon_chip_num$field;
      }
      
      public function clearMaxLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.max_level$field = new int();
      }
      
      public function get hasMaxLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set maxLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.max_level$field = param1;
      }
      
      public function get maxLevel() : int
      {
         return this.max_level$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      public function clearExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.exp$field = new int();
      }
      
      public function get hasExp() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set exp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.exp$field = param1;
      }
      
      public function get exp() : int
      {
         return this.exp$field;
      }
      
      public function clearMaxExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.max_exp$field = new int();
      }
      
      public function get hasMaxExp() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set maxExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.max_exp$field = param1;
      }
      
      public function get maxExp() : int
      {
         return this.max_exp$field;
      }
      
      public function clearChakra() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.chakra$field = new int();
      }
      
      public function get hasChakra() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set chakra(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.chakra$field = param1;
      }
      
      public function get chakra() : int
      {
         return this.chakra$field;
      }
      
      public function clearChuzhanPercent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.chuzhan_percent$field = new uint();
      }
      
      public function get hasChuzhanPercent() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set chuzhanPercent(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.chuzhan_percent$field = param1;
      }
      
      public function get chuzhanPercent() : uint
      {
         return this.chuzhan_percent$field;
      }
      
      public function clearAdditionPerchent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.addition_perchent$field = new uint();
      }
      
      public function get hasAdditionPerchent() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set additionPerchent(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.addition_perchent$field = param1;
      }
      
      public function get additionPerchent() : uint
      {
         return this.addition_perchent$field;
      }
      
      public function clearCurChuzhanPropery() : void
      {
         this.cur_chuzhan_propery$field = null;
      }
      
      public function get hasCurChuzhanPropery() : Boolean
      {
         return this.cur_chuzhan_propery$field != null;
      }
      
      public function set curChuzhanPropery(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.cur_chuzhan_propery$field = param1;
      }
      
      public function get curChuzhanPropery() : ProtoNaurtoAllPropertyInfo
      {
         return this.cur_chuzhan_propery$field;
      }
      
      public function clearNextChuzhanPropery() : void
      {
         this.next_chuzhan_propery$field = null;
      }
      
      public function get hasNextChuzhanPropery() : Boolean
      {
         return this.next_chuzhan_propery$field != null;
      }
      
      public function set nextChuzhanPropery(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.next_chuzhan_propery$field = param1;
      }
      
      public function get nextChuzhanPropery() : ProtoNaurtoAllPropertyInfo
      {
         return this.next_chuzhan_propery$field;
      }
      
      public function clearCurAdditionPropery() : void
      {
         this.cur_addition_propery$field = null;
      }
      
      public function get hasCurAdditionPropery() : Boolean
      {
         return this.cur_addition_propery$field != null;
      }
      
      public function set curAdditionPropery(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.cur_addition_propery$field = param1;
      }
      
      public function get curAdditionPropery() : ProtoNaurtoAllPropertyInfo
      {
         return this.cur_addition_propery$field;
      }
      
      public function clearNextAdditionPropery() : void
      {
         this.next_addition_propery$field = null;
      }
      
      public function get hasNextAdditionPropery() : Boolean
      {
         return this.next_addition_propery$field != null;
      }
      
      public function set nextAdditionPropery(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.next_addition_propery$field = param1;
      }
      
      public function get nextAdditionPropery() : ProtoNaurtoAllPropertyInfo
      {
         return this.next_addition_propery$field;
      }
      
      public function clearIsOpen() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.is_open$field = new Boolean();
      }
      
      public function get hasIsOpen() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set isOpen(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.is_open$field = param1;
      }
      
      public function get isOpen() : Boolean
      {
         return this.is_open$field;
      }
      
      public function clearSummonBeastFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.summon_beast_flag$field = new Boolean();
      }
      
      public function get hasSummonBeastFlag() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set summonBeastFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.summon_beast_flag$field = param1;
      }
      
      public function get summonBeastFlag() : Boolean
      {
         return this.summon_beast_flag$field;
      }
      
      public function clearMaxLevelGuildLimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.max_level_guild_limit$field = new int();
      }
      
      public function get hasMaxLevelGuildLimit() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set maxLevelGuildLimit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.max_level_guild_limit$field = param1;
      }
      
      public function get maxLevelGuildLimit() : int
      {
         return this.max_level_guild_limit$field;
      }
      
      public function clearQuality() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294950911E9;
         this.quality$field = new int();
      }
      
      public function get hasQuality() : Boolean
      {
         return (this.hasField$0 & 16384) != 0;
      }
      
      public function set quality(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16384;
         this.quality$field = param1;
      }
      
      public function get quality() : int
      {
         return this.quality$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.id$field);
         }
         if(this.hasSummonFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.summon_flag$field);
         }
         if(this.hasColor)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.color$field);
         }
         if(this.hasSummonChipNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.summon_chip_num$field);
         }
         if(this.hasMaxLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.max_level$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.level$field);
         }
         if(this.hasExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.exp$field);
         }
         if(this.hasMaxExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.max_exp$field);
         }
         if(this.hasChakra)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.chakra$field);
         }
         if(this.hasChuzhanPercent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.chuzhan_percent$field);
         }
         if(this.hasAdditionPerchent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.addition_perchent$field);
         }
         if(this.hasCurChuzhanPropery)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,12);
            WriteUtils.write$TYPE_MESSAGE(param1,this.cur_chuzhan_propery$field);
         }
         if(this.hasNextChuzhanPropery)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,13);
            WriteUtils.write$TYPE_MESSAGE(param1,this.next_chuzhan_propery$field);
         }
         if(this.hasCurAdditionPropery)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,14);
            WriteUtils.write$TYPE_MESSAGE(param1,this.cur_addition_propery$field);
         }
         if(this.hasNextAdditionPropery)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,15);
            WriteUtils.write$TYPE_MESSAGE(param1,this.next_addition_propery$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.awakenSkills.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_SINT32(param1,this.awakenSkills[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.commonSkills.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,17);
            WriteUtils.write$TYPE_SINT32(param1,this.commonSkills[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.passiveSkills.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,18);
            WriteUtils.write$TYPE_SINT32(param1,this.passiveSkills[_loc4_]);
            _loc4_++;
         }
         if(this.hasIsOpen)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,19);
            WriteUtils.write$TYPE_BOOL(param1,this.is_open$field);
         }
         if(this.hasSummonBeastFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,20);
            WriteUtils.write$TYPE_BOOL(param1,this.summon_beast_flag$field);
         }
         if(this.hasMaxLevelGuildLimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,21);
            WriteUtils.write$TYPE_SINT32(param1,this.max_level_guild_limit$field);
         }
         if(this.hasQuality)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,22);
            WriteUtils.write$TYPE_SINT32(param1,this.quality$field);
         }
         for(_loc5_ in this)
         {
            super.writeUnknown(param1,_loc5_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 22, Size: 22)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
