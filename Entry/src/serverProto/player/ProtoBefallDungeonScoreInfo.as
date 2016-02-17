package serverProto.player
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBefallDungeonScoreInfo extends Message
   {
      
      public static const HP_SCORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoBefallDungeonScoreInfo.hp_score","hpScore",1 << 3 | WireType.VARINT);
      
      public static const ROUND_SCORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoBefallDungeonScoreInfo.round_score","roundScore",2 << 3 | WireType.VARINT);
      
      public static const NINJA_DEATH_SCORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoBefallDungeonScoreInfo.ninja_death_score","ninjaDeathScore",3 << 3 | WireType.VARINT);
      
      public static const DAMAGE_SCORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoBefallDungeonScoreInfo.damage_score","damageScore",4 << 3 | WireType.VARINT);
      
      public static const TOTAL_SCORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoBefallDungeonScoreInfo.total_score","totalScore",5 << 3 | WireType.VARINT);
       
      private var hp_score$field:int;
      
      private var hasField$0:uint = 0;
      
      private var round_score$field:int;
      
      private var ninja_death_score$field:int;
      
      private var damage_score$field:int;
      
      private var total_score$field:int;
      
      public function ProtoBefallDungeonScoreInfo()
      {
         super();
      }
      
      public function clearHpScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.hp_score$field = new int();
      }
      
      public function get hasHpScore() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set hpScore(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.hp_score$field = param1;
      }
      
      public function get hpScore() : int
      {
         return this.hp_score$field;
      }
      
      public function clearRoundScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.round_score$field = new int();
      }
      
      public function get hasRoundScore() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set roundScore(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.round_score$field = param1;
      }
      
      public function get roundScore() : int
      {
         return this.round_score$field;
      }
      
      public function clearNinjaDeathScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.ninja_death_score$field = new int();
      }
      
      public function get hasNinjaDeathScore() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set ninjaDeathScore(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.ninja_death_score$field = param1;
      }
      
      public function get ninjaDeathScore() : int
      {
         return this.ninja_death_score$field;
      }
      
      public function clearDamageScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.damage_score$field = new int();
      }
      
      public function get hasDamageScore() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set damageScore(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.damage_score$field = param1;
      }
      
      public function get damageScore() : int
      {
         return this.damage_score$field;
      }
      
      public function clearTotalScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.total_score$field = new int();
      }
      
      public function get hasTotalScore() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set totalScore(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.total_score$field = param1;
      }
      
      public function get totalScore() : int
      {
         return this.total_score$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasHpScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.hp_score$field);
         }
         if(this.hasRoundScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.round_score$field);
         }
         if(this.hasNinjaDeathScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_death_score$field);
         }
         if(this.hasDamageScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.damage_score$field);
         }
         if(this.hasTotalScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.total_score$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
