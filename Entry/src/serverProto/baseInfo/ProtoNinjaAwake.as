package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaAwake extends Message
   {
      
      public static const HP_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.hp_profit","hpProfit",1 << 3 | WireType.VARINT);
      
      public static const BODY_ATTACK_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.body_attack_profit","bodyAttackProfit",2 << 3 | WireType.VARINT);
      
      public static const BODY_DEFENSE_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.body_defense_profit","bodyDefenseProfit",3 << 3 | WireType.VARINT);
      
      public static const NINJA_ATTACK_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.ninja_attack_profit","ninjaAttackProfit",4 << 3 | WireType.VARINT);
      
      public static const NINJA_DEFENSE_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.ninja_defense_profit","ninjaDefenseProfit",5 << 3 | WireType.VARINT);
      
      public static const GROWTH_HP_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.growth_hp_profit","growthHpProfit",6 << 3 | WireType.VARINT);
      
      public static const GROWTH_BODY_ATTACK_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.growth_body_attack_profit","growthBodyAttackProfit",7 << 3 | WireType.VARINT);
      
      public static const GROWTH_BODY_DEFENSE_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.growth_body_defense_profit","growthBodyDefenseProfit",8 << 3 | WireType.VARINT);
      
      public static const GROWTH_NINJA_ATTACK_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.growth_ninja_attack_profit","growthNinjaAttackProfit",9 << 3 | WireType.VARINT);
      
      public static const GROWTH_NINJA_DEFENSE_PROFIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaAwake.growth_ninja_defense_profit","growthNinjaDefenseProfit",10 << 3 | WireType.VARINT);
       
      private var hp_profit$field:int;
      
      private var hasField$0:uint = 0;
      
      private var body_attack_profit$field:int;
      
      private var body_defense_profit$field:int;
      
      private var ninja_attack_profit$field:int;
      
      private var ninja_defense_profit$field:int;
      
      private var growth_hp_profit$field:int;
      
      private var growth_body_attack_profit$field:int;
      
      private var growth_body_defense_profit$field:int;
      
      private var growth_ninja_attack_profit$field:int;
      
      private var growth_ninja_defense_profit$field:int;
      
      public function ProtoNinjaAwake()
      {
         super();
      }
      
      public function clearHpProfit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.hp_profit$field = new int();
      }
      
      public function get hasHpProfit() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set hpProfit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.hp_profit$field = param1;
      }
      
      public function get hpProfit() : int
      {
         return this.hp_profit$field;
      }
      
      public function clearBodyAttackProfit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.body_attack_profit$field = new int();
      }
      
      public function get hasBodyAttackProfit() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set bodyAttackProfit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.body_attack_profit$field = param1;
      }
      
      public function get bodyAttackProfit() : int
      {
         return this.body_attack_profit$field;
      }
      
      public function clearBodyDefenseProfit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.body_defense_profit$field = new int();
      }
      
      public function get hasBodyDefenseProfit() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set bodyDefenseProfit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.body_defense_profit$field = param1;
      }
      
      public function get bodyDefenseProfit() : int
      {
         return this.body_defense_profit$field;
      }
      
      public function clearNinjaAttackProfit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.ninja_attack_profit$field = new int();
      }
      
      public function get hasNinjaAttackProfit() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set ninjaAttackProfit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.ninja_attack_profit$field = param1;
      }
      
      public function get ninjaAttackProfit() : int
      {
         return this.ninja_attack_profit$field;
      }
      
      public function clearNinjaDefenseProfit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.ninja_defense_profit$field = new int();
      }
      
      public function get hasNinjaDefenseProfit() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set ninjaDefenseProfit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.ninja_defense_profit$field = param1;
      }
      
      public function get ninjaDefenseProfit() : int
      {
         return this.ninja_defense_profit$field;
      }
      
      public function clearGrowthHpProfit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.growth_hp_profit$field = new int();
      }
      
      public function get hasGrowthHpProfit() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set growthHpProfit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.growth_hp_profit$field = param1;
      }
      
      public function get growthHpProfit() : int
      {
         return this.growth_hp_profit$field;
      }
      
      public function clearGrowthBodyAttackProfit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.growth_body_attack_profit$field = new int();
      }
      
      public function get hasGrowthBodyAttackProfit() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set growthBodyAttackProfit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.growth_body_attack_profit$field = param1;
      }
      
      public function get growthBodyAttackProfit() : int
      {
         return this.growth_body_attack_profit$field;
      }
      
      public function clearGrowthBodyDefenseProfit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.growth_body_defense_profit$field = new int();
      }
      
      public function get hasGrowthBodyDefenseProfit() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set growthBodyDefenseProfit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.growth_body_defense_profit$field = param1;
      }
      
      public function get growthBodyDefenseProfit() : int
      {
         return this.growth_body_defense_profit$field;
      }
      
      public function clearGrowthNinjaAttackProfit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.growth_ninja_attack_profit$field = new int();
      }
      
      public function get hasGrowthNinjaAttackProfit() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set growthNinjaAttackProfit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.growth_ninja_attack_profit$field = param1;
      }
      
      public function get growthNinjaAttackProfit() : int
      {
         return this.growth_ninja_attack_profit$field;
      }
      
      public function clearGrowthNinjaDefenseProfit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.growth_ninja_defense_profit$field = new int();
      }
      
      public function get hasGrowthNinjaDefenseProfit() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set growthNinjaDefenseProfit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.growth_ninja_defense_profit$field = param1;
      }
      
      public function get growthNinjaDefenseProfit() : int
      {
         return this.growth_ninja_defense_profit$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasHpProfit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.hp_profit$field);
         }
         if(this.hasBodyAttackProfit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.body_attack_profit$field);
         }
         if(this.hasBodyDefenseProfit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.body_defense_profit$field);
         }
         if(this.hasNinjaAttackProfit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_attack_profit$field);
         }
         if(this.hasNinjaDefenseProfit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_defense_profit$field);
         }
         if(this.hasGrowthHpProfit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.growth_hp_profit$field);
         }
         if(this.hasGrowthBodyAttackProfit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.growth_body_attack_profit$field);
         }
         if(this.hasGrowthBodyDefenseProfit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.growth_body_defense_profit$field);
         }
         if(this.hasGrowthNinjaAttackProfit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.growth_ninja_attack_profit$field);
         }
         if(this.hasGrowthNinjaDefenseProfit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_SINT32(param1,this.growth_ninja_defense_profit$field);
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
