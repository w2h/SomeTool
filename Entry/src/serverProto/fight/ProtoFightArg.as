package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFightArg extends Message
   {
      
      public static const BODY_ATTACK_PERCENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.body_attack_percent","bodyAttackPercent",1 << 3 | WireType.VARINT);
      
      public static const BODY_ATTACK_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.body_attack_constant","bodyAttackConstant",2 << 3 | WireType.VARINT);
      
      public static const BODY_ATTACK_RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.body_attack_rate","bodyAttackRate",3 << 3 | WireType.VARINT);
      
      public static const BODY_DEFENSE_PERCENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.body_defense_percent","bodyDefensePercent",4 << 3 | WireType.VARINT);
      
      public static const BODY_DEFENSE_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.body_defense_constant","bodyDefenseConstant",5 << 3 | WireType.VARINT);
      
      public static const BODY_DEFENSE_RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.body_defense_rate","bodyDefenseRate",6 << 3 | WireType.VARINT);
      
      public static const NINJA_ATTACK_PERCENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.ninja_attack_percent","ninjaAttackPercent",7 << 3 | WireType.VARINT);
      
      public static const NINJA_ATTACK_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.ninja_attack_constant","ninjaAttackConstant",8 << 3 | WireType.VARINT);
      
      public static const NINJA_ATTACK_RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.ninja_attack_rate","ninjaAttackRate",9 << 3 | WireType.VARINT);
      
      public static const NINJA_DEFENSE_PERCENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.ninja_defense_percent","ninjaDefensePercent",10 << 3 | WireType.VARINT);
      
      public static const NINJA_DEFENSE_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.ninja_defense_constant","ninjaDefenseConstant",11 << 3 | WireType.VARINT);
      
      public static const NINJA_DEFENSE_RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.ninja_defense_rate","ninjaDefenseRate",12 << 3 | WireType.VARINT);
      
      public static const SPEED_PERCENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.speed_percent","speedPercent",13 << 3 | WireType.VARINT);
      
      public static const SPEED_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.speed_constant","speedConstant",14 << 3 | WireType.VARINT);
      
      public static const CRIT_PERCENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.crit_percent","critPercent",15 << 3 | WireType.VARINT);
      
      public static const CRIT_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.crit_constant","critConstant",16 << 3 | WireType.VARINT);
      
      public static const CRIT_RATIO:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.crit_ratio","critRatio",17 << 3 | WireType.VARINT);
      
      public static const CRIT_PROBALITY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.crit_probality","critProbality",18 << 3 | WireType.VARINT);
      
      public static const FIRE_RESIST_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.fire_resist_constant","fireResistConstant",19 << 3 | WireType.VARINT);
      
      public static const WIND_RESIST_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.wind_resist_constant","windResistConstant",20 << 3 | WireType.VARINT);
      
      public static const THUNDER_RESIST_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.thunder_resist_constant","thunderResistConstant",21 << 3 | WireType.VARINT);
      
      public static const WATER_RESIST_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.water_resist_constant","waterResistConstant",22 << 3 | WireType.VARINT);
      
      public static const EARTH_RESIST_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.earth_resist_constant","earthResistConstant",23 << 3 | WireType.VARINT);
      
      public static const FIRE_RESIST_RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.fire_resist_rate","fireResistRate",24 << 3 | WireType.VARINT);
      
      public static const WIND_RESIST_RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.wind_resist_rate","windResistRate",25 << 3 | WireType.VARINT);
      
      public static const THUNDER_RESIST_RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.thunder_resist_rate","thunderResistRate",26 << 3 | WireType.VARINT);
      
      public static const WATER_RESIST_RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.water_resist_rate","waterResistRate",27 << 3 | WireType.VARINT);
      
      public static const EARTH_RESIST_RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.earth_resist_rate","earthResistRate",28 << 3 | WireType.VARINT);
      
      public static const COMBO_PROBABILITY_CONSTANT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.combo_probability_constant","comboProbabilityConstant",29 << 3 | WireType.VARINT);
      
      public static const HIT_RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightArg.hit_rate","hitRate",30 << 3 | WireType.VARINT);
       
      private var body_attack_percent$field:int;
      
      private var hasField$0:uint = 0;
      
      private var body_attack_constant$field:int;
      
      private var body_attack_rate$field:int;
      
      private var body_defense_percent$field:int;
      
      private var body_defense_constant$field:int;
      
      private var body_defense_rate$field:int;
      
      private var ninja_attack_percent$field:int;
      
      private var ninja_attack_constant$field:int;
      
      private var ninja_attack_rate$field:int;
      
      private var ninja_defense_percent$field:int;
      
      private var ninja_defense_constant$field:int;
      
      private var ninja_defense_rate$field:int;
      
      private var speed_percent$field:int;
      
      private var speed_constant$field:int;
      
      private var crit_percent$field:int;
      
      private var crit_constant$field:int;
      
      private var crit_ratio$field:int;
      
      private var crit_probality$field:int;
      
      private var fire_resist_constant$field:int;
      
      private var wind_resist_constant$field:int;
      
      private var thunder_resist_constant$field:int;
      
      private var water_resist_constant$field:int;
      
      private var earth_resist_constant$field:int;
      
      private var fire_resist_rate$field:int;
      
      private var wind_resist_rate$field:int;
      
      private var thunder_resist_rate$field:int;
      
      private var water_resist_rate$field:int;
      
      private var earth_resist_rate$field:int;
      
      private var combo_probability_constant$field:int;
      
      private var hit_rate$field:int;
      
      public function ProtoFightArg()
      {
         super();
      }
      
      public function clearBodyAttackPercent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.body_attack_percent$field = new int();
      }
      
      public function get hasBodyAttackPercent() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set bodyAttackPercent(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.body_attack_percent$field = param1;
      }
      
      public function get bodyAttackPercent() : int
      {
         return this.body_attack_percent$field;
      }
      
      public function clearBodyAttackConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.body_attack_constant$field = new int();
      }
      
      public function get hasBodyAttackConstant() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set bodyAttackConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.body_attack_constant$field = param1;
      }
      
      public function get bodyAttackConstant() : int
      {
         return this.body_attack_constant$field;
      }
      
      public function clearBodyAttackRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.body_attack_rate$field = new int();
      }
      
      public function get hasBodyAttackRate() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set bodyAttackRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.body_attack_rate$field = param1;
      }
      
      public function get bodyAttackRate() : int
      {
         return this.body_attack_rate$field;
      }
      
      public function clearBodyDefensePercent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.body_defense_percent$field = new int();
      }
      
      public function get hasBodyDefensePercent() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set bodyDefensePercent(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.body_defense_percent$field = param1;
      }
      
      public function get bodyDefensePercent() : int
      {
         return this.body_defense_percent$field;
      }
      
      public function clearBodyDefenseConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.body_defense_constant$field = new int();
      }
      
      public function get hasBodyDefenseConstant() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set bodyDefenseConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.body_defense_constant$field = param1;
      }
      
      public function get bodyDefenseConstant() : int
      {
         return this.body_defense_constant$field;
      }
      
      public function clearBodyDefenseRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.body_defense_rate$field = new int();
      }
      
      public function get hasBodyDefenseRate() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set bodyDefenseRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.body_defense_rate$field = param1;
      }
      
      public function get bodyDefenseRate() : int
      {
         return this.body_defense_rate$field;
      }
      
      public function clearNinjaAttackPercent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.ninja_attack_percent$field = new int();
      }
      
      public function get hasNinjaAttackPercent() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set ninjaAttackPercent(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.ninja_attack_percent$field = param1;
      }
      
      public function get ninjaAttackPercent() : int
      {
         return this.ninja_attack_percent$field;
      }
      
      public function clearNinjaAttackConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.ninja_attack_constant$field = new int();
      }
      
      public function get hasNinjaAttackConstant() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set ninjaAttackConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.ninja_attack_constant$field = param1;
      }
      
      public function get ninjaAttackConstant() : int
      {
         return this.ninja_attack_constant$field;
      }
      
      public function clearNinjaAttackRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.ninja_attack_rate$field = new int();
      }
      
      public function get hasNinjaAttackRate() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set ninjaAttackRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.ninja_attack_rate$field = param1;
      }
      
      public function get ninjaAttackRate() : int
      {
         return this.ninja_attack_rate$field;
      }
      
      public function clearNinjaDefensePercent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.ninja_defense_percent$field = new int();
      }
      
      public function get hasNinjaDefensePercent() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set ninjaDefensePercent(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.ninja_defense_percent$field = param1;
      }
      
      public function get ninjaDefensePercent() : int
      {
         return this.ninja_defense_percent$field;
      }
      
      public function clearNinjaDefenseConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.ninja_defense_constant$field = new int();
      }
      
      public function get hasNinjaDefenseConstant() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set ninjaDefenseConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.ninja_defense_constant$field = param1;
      }
      
      public function get ninjaDefenseConstant() : int
      {
         return this.ninja_defense_constant$field;
      }
      
      public function clearNinjaDefenseRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.ninja_defense_rate$field = new int();
      }
      
      public function get hasNinjaDefenseRate() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set ninjaDefenseRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.ninja_defense_rate$field = param1;
      }
      
      public function get ninjaDefenseRate() : int
      {
         return this.ninja_defense_rate$field;
      }
      
      public function clearSpeedPercent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.speed_percent$field = new int();
      }
      
      public function get hasSpeedPercent() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set speedPercent(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.speed_percent$field = param1;
      }
      
      public function get speedPercent() : int
      {
         return this.speed_percent$field;
      }
      
      public function clearSpeedConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.speed_constant$field = new int();
      }
      
      public function get hasSpeedConstant() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set speedConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.speed_constant$field = param1;
      }
      
      public function get speedConstant() : int
      {
         return this.speed_constant$field;
      }
      
      public function clearCritPercent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294950911E9;
         this.crit_percent$field = new int();
      }
      
      public function get hasCritPercent() : Boolean
      {
         return (this.hasField$0 & 16384) != 0;
      }
      
      public function set critPercent(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16384;
         this.crit_percent$field = param1;
      }
      
      public function get critPercent() : int
      {
         return this.crit_percent$field;
      }
      
      public function clearCritConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294934527E9;
         this.crit_constant$field = new int();
      }
      
      public function get hasCritConstant() : Boolean
      {
         return (this.hasField$0 & 32768) != 0;
      }
      
      public function set critConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32768;
         this.crit_constant$field = param1;
      }
      
      public function get critConstant() : int
      {
         return this.crit_constant$field;
      }
      
      public function clearCritRatio() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294901759E9;
         this.crit_ratio$field = new int();
      }
      
      public function get hasCritRatio() : Boolean
      {
         return (this.hasField$0 & 65536) != 0;
      }
      
      public function set critRatio(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 65536;
         this.crit_ratio$field = param1;
      }
      
      public function get critRatio() : int
      {
         return this.crit_ratio$field;
      }
      
      public function clearCritProbality() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294836223E9;
         this.crit_probality$field = new int();
      }
      
      public function get hasCritProbality() : Boolean
      {
         return (this.hasField$0 & 131072) != 0;
      }
      
      public function set critProbality(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 131072;
         this.crit_probality$field = param1;
      }
      
      public function get critProbality() : int
      {
         return this.crit_probality$field;
      }
      
      public function clearFireResistConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294705151E9;
         this.fire_resist_constant$field = new int();
      }
      
      public function get hasFireResistConstant() : Boolean
      {
         return (this.hasField$0 & 262144) != 0;
      }
      
      public function set fireResistConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 262144;
         this.fire_resist_constant$field = param1;
      }
      
      public function get fireResistConstant() : int
      {
         return this.fire_resist_constant$field;
      }
      
      public function clearWindResistConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294443007E9;
         this.wind_resist_constant$field = new int();
      }
      
      public function get hasWindResistConstant() : Boolean
      {
         return (this.hasField$0 & 524288) != 0;
      }
      
      public function set windResistConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 524288;
         this.wind_resist_constant$field = param1;
      }
      
      public function get windResistConstant() : int
      {
         return this.wind_resist_constant$field;
      }
      
      public function clearThunderResistConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.293918719E9;
         this.thunder_resist_constant$field = new int();
      }
      
      public function get hasThunderResistConstant() : Boolean
      {
         return (this.hasField$0 & 1048576) != 0;
      }
      
      public function set thunderResistConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1048576;
         this.thunder_resist_constant$field = param1;
      }
      
      public function get thunderResistConstant() : int
      {
         return this.thunder_resist_constant$field;
      }
      
      public function clearWaterResistConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.292870143E9;
         this.water_resist_constant$field = new int();
      }
      
      public function get hasWaterResistConstant() : Boolean
      {
         return (this.hasField$0 & 2097152) != 0;
      }
      
      public function set waterResistConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2097152;
         this.water_resist_constant$field = param1;
      }
      
      public function get waterResistConstant() : int
      {
         return this.water_resist_constant$field;
      }
      
      public function clearEarthResistConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.290772991E9;
         this.earth_resist_constant$field = new int();
      }
      
      public function get hasEarthResistConstant() : Boolean
      {
         return (this.hasField$0 & 4194304) != 0;
      }
      
      public function set earthResistConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4194304;
         this.earth_resist_constant$field = param1;
      }
      
      public function get earthResistConstant() : int
      {
         return this.earth_resist_constant$field;
      }
      
      public function clearFireResistRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.286578687E9;
         this.fire_resist_rate$field = new int();
      }
      
      public function get hasFireResistRate() : Boolean
      {
         return (this.hasField$0 & 8388608) != 0;
      }
      
      public function set fireResistRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8388608;
         this.fire_resist_rate$field = param1;
      }
      
      public function get fireResistRate() : int
      {
         return this.fire_resist_rate$field;
      }
      
      public function clearWindResistRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.278190079E9;
         this.wind_resist_rate$field = new int();
      }
      
      public function get hasWindResistRate() : Boolean
      {
         return (this.hasField$0 & 16777216) != 0;
      }
      
      public function set windResistRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16777216;
         this.wind_resist_rate$field = param1;
      }
      
      public function get windResistRate() : int
      {
         return this.wind_resist_rate$field;
      }
      
      public function clearThunderResistRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.261412863E9;
         this.thunder_resist_rate$field = new int();
      }
      
      public function get hasThunderResistRate() : Boolean
      {
         return (this.hasField$0 & 33554432) != 0;
      }
      
      public function set thunderResistRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 33554432;
         this.thunder_resist_rate$field = param1;
      }
      
      public function get thunderResistRate() : int
      {
         return this.thunder_resist_rate$field;
      }
      
      public function clearWaterResistRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.227858431E9;
         this.water_resist_rate$field = new int();
      }
      
      public function get hasWaterResistRate() : Boolean
      {
         return (this.hasField$0 & 67108864) != 0;
      }
      
      public function set waterResistRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 67108864;
         this.water_resist_rate$field = param1;
      }
      
      public function get waterResistRate() : int
      {
         return this.water_resist_rate$field;
      }
      
      public function clearEarthResistRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.160749567E9;
         this.earth_resist_rate$field = new int();
      }
      
      public function get hasEarthResistRate() : Boolean
      {
         return (this.hasField$0 & 134217728) != 0;
      }
      
      public function set earthResistRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 134217728;
         this.earth_resist_rate$field = param1;
      }
      
      public function get earthResistRate() : int
      {
         return this.earth_resist_rate$field;
      }
      
      public function clearComboProbabilityConstant() : void
      {
         this.hasField$0 = this.hasField$0 & 4.026531839E9;
         this.combo_probability_constant$field = new int();
      }
      
      public function get hasComboProbabilityConstant() : Boolean
      {
         return (this.hasField$0 & 268435456) != 0;
      }
      
      public function set comboProbabilityConstant(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 268435456;
         this.combo_probability_constant$field = param1;
      }
      
      public function get comboProbabilityConstant() : int
      {
         return this.combo_probability_constant$field;
      }
      
      public function clearHitRate() : void
      {
         this.hasField$0 = this.hasField$0 & 3.758096383E9;
         this.hit_rate$field = new int();
      }
      
      public function get hasHitRate() : Boolean
      {
         return (this.hasField$0 & 536870912) != 0;
      }
      
      public function set hitRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 536870912;
         this.hit_rate$field = param1;
      }
      
      public function get hitRate() : int
      {
         return this.hit_rate$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBodyAttackPercent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.body_attack_percent$field);
         }
         if(this.hasBodyAttackConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.body_attack_constant$field);
         }
         if(this.hasBodyAttackRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.body_attack_rate$field);
         }
         if(this.hasBodyDefensePercent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.body_defense_percent$field);
         }
         if(this.hasBodyDefenseConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.body_defense_constant$field);
         }
         if(this.hasBodyDefenseRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.body_defense_rate$field);
         }
         if(this.hasNinjaAttackPercent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_attack_percent$field);
         }
         if(this.hasNinjaAttackConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_attack_constant$field);
         }
         if(this.hasNinjaAttackRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_attack_rate$field);
         }
         if(this.hasNinjaDefensePercent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_defense_percent$field);
         }
         if(this.hasNinjaDefenseConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_defense_constant$field);
         }
         if(this.hasNinjaDefenseRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_defense_rate$field);
         }
         if(this.hasSpeedPercent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_INT32(param1,this.speed_percent$field);
         }
         if(this.hasSpeedConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_INT32(param1,this.speed_constant$field);
         }
         if(this.hasCritPercent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_INT32(param1,this.crit_percent$field);
         }
         if(this.hasCritConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_INT32(param1,this.crit_constant$field);
         }
         if(this.hasCritRatio)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,17);
            WriteUtils.write$TYPE_INT32(param1,this.crit_ratio$field);
         }
         if(this.hasCritProbality)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,18);
            WriteUtils.write$TYPE_INT32(param1,this.crit_probality$field);
         }
         if(this.hasFireResistConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,19);
            WriteUtils.write$TYPE_INT32(param1,this.fire_resist_constant$field);
         }
         if(this.hasWindResistConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,20);
            WriteUtils.write$TYPE_INT32(param1,this.wind_resist_constant$field);
         }
         if(this.hasThunderResistConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,21);
            WriteUtils.write$TYPE_INT32(param1,this.thunder_resist_constant$field);
         }
         if(this.hasWaterResistConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,22);
            WriteUtils.write$TYPE_INT32(param1,this.water_resist_constant$field);
         }
         if(this.hasEarthResistConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,23);
            WriteUtils.write$TYPE_INT32(param1,this.earth_resist_constant$field);
         }
         if(this.hasFireResistRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,24);
            WriteUtils.write$TYPE_INT32(param1,this.fire_resist_rate$field);
         }
         if(this.hasWindResistRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,25);
            WriteUtils.write$TYPE_INT32(param1,this.wind_resist_rate$field);
         }
         if(this.hasThunderResistRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,26);
            WriteUtils.write$TYPE_INT32(param1,this.thunder_resist_rate$field);
         }
         if(this.hasWaterResistRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,27);
            WriteUtils.write$TYPE_INT32(param1,this.water_resist_rate$field);
         }
         if(this.hasEarthResistRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,28);
            WriteUtils.write$TYPE_INT32(param1,this.earth_resist_rate$field);
         }
         if(this.hasComboProbabilityConstant)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,29);
            WriteUtils.write$TYPE_INT32(param1,this.combo_probability_constant$field);
         }
         if(this.hasHitRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,30);
            WriteUtils.write$TYPE_INT32(param1,this.hit_rate$field);
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
          * Error type: IndexOutOfBoundsException (Index: 30, Size: 30)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
