package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class GuildSkillParam extends Message
   {
      
      public static const CAN_LEARN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.can_learn","canLearn",1 << 3 | WireType.VARINT);
      
      public static const NEXT_LVL_CD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.next_lvl_cd","nextLvlCd",2 << 3 | WireType.VARINT);
      
      public static const NEXT_LVL_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.next_lvl_cost","nextLvlCost",3 << 3 | WireType.VARINT);
      
      public static const NEXT_EFFECT_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.next_effect_value","nextEffectValue",4 << 3 | WireType.VARINT);
      
      public static const EFFECT_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.effect_value","effectValue",5 << 3 | WireType.VARINT);
      
      public static const CURRENT_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.GuildSkillParam.current_lvl","currentLvl",6 << 3 | WireType.VARINT);
       
      private var can_learn$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var next_lvl_cd$field:uint;
      
      private var next_lvl_cost$field:uint;
      
      private var next_effect_value$field:uint;
      
      private var effect_value$field:uint;
      
      private var current_lvl$field:uint;
      
      public function GuildSkillParam()
      {
         super();
      }
      
      public function clearCanLearn() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.can_learn$field = new uint();
      }
      
      public function get hasCanLearn() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set canLearn(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.can_learn$field = param1;
      }
      
      public function get canLearn() : uint
      {
         return this.can_learn$field;
      }
      
      public function clearNextLvlCd() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.next_lvl_cd$field = new uint();
      }
      
      public function get hasNextLvlCd() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set nextLvlCd(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.next_lvl_cd$field = param1;
      }
      
      public function get nextLvlCd() : uint
      {
         return this.next_lvl_cd$field;
      }
      
      public function clearNextLvlCost() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.next_lvl_cost$field = new uint();
      }
      
      public function get hasNextLvlCost() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set nextLvlCost(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.next_lvl_cost$field = param1;
      }
      
      public function get nextLvlCost() : uint
      {
         return this.next_lvl_cost$field;
      }
      
      public function clearNextEffectValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.next_effect_value$field = new uint();
      }
      
      public function get hasNextEffectValue() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set nextEffectValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.next_effect_value$field = param1;
      }
      
      public function get nextEffectValue() : uint
      {
         return this.next_effect_value$field;
      }
      
      public function clearEffectValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.effect_value$field = new uint();
      }
      
      public function get hasEffectValue() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set effectValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.effect_value$field = param1;
      }
      
      public function get effectValue() : uint
      {
         return this.effect_value$field;
      }
      
      public function clearCurrentLvl() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.current_lvl$field = new uint();
      }
      
      public function get hasCurrentLvl() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set currentLvl(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.current_lvl$field = param1;
      }
      
      public function get currentLvl() : uint
      {
         return this.current_lvl$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasCanLearn)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.can_learn$field);
         }
         if(this.hasNextLvlCd)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.next_lvl_cd$field);
         }
         if(this.hasNextLvlCost)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.next_lvl_cost$field);
         }
         if(this.hasNextEffectValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.next_effect_value$field);
         }
         if(this.hasEffectValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.effect_value$field);
         }
         if(this.hasCurrentLvl)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.current_lvl$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
