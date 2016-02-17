package serverProto.formationBase
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFormationInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoFormationInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoFormationInfo.level","level",2 << 3 | WireType.VARINT);
      
      public static const CURRENT_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.formationBase.ProtoFormationInfo.current_flag","currentFlag",3 << 3 | WireType.VARINT);
      
      public static const NINJA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.formationBase.ProtoFormationInfo.ninja","ninja",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaArrange);
      
      public static const NINJA_SHORT_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formationBase.ProtoFormationInfo.ninja_short_key","ninjaShortKey",5 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaShortKey);
      
      public static const LEADERSHIP_CONSUMED:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoFormationInfo.leadership_consumed","leadershipConsumed",6 << 3 | WireType.VARINT);
      
      public static const LEADERSHIP_ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoFormationInfo.leadership_ulimit","leadershipUlimit",7 << 3 | WireType.VARINT);
      
      public static const FORMATION_NINJA_ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formationBase.ProtoFormationInfo.formation_ninja_ulimit","formationNinjaUlimit",8 << 3 | WireType.VARINT);
      
      public static const COMBAT_POWER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoFormationInfo.combat_power","combatPower",9 << 3 | WireType.VARINT);
       
      public var id:uint;
      
      public var level:uint;
      
      private var current_flag$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.formationBase.ProtoNinjaArrange")]
      public var ninja:Array;
      
      private var ninja_short_key$field:serverProto.formationBase.ProtoNinjaShortKey;
      
      private var leadership_consumed$field:int;
      
      private var leadership_ulimit$field:int;
      
      private var formation_ninja_ulimit$field:int;
      
      private var combat_power$field:int;
      
      public function ProtoFormationInfo()
      {
         this.ninja = [];
         super();
      }
      
      public function clearCurrentFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.current_flag$field = new Boolean();
      }
      
      public function get hasCurrentFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currentFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.current_flag$field = param1;
      }
      
      public function get currentFlag() : Boolean
      {
         return this.current_flag$field;
      }
      
      public function clearNinjaShortKey() : void
      {
         this.ninja_short_key$field = null;
      }
      
      public function get hasNinjaShortKey() : Boolean
      {
         return this.ninja_short_key$field != null;
      }
      
      public function set ninjaShortKey(param1:serverProto.formationBase.ProtoNinjaShortKey) : void
      {
         this.ninja_short_key$field = param1;
      }
      
      public function get ninjaShortKey() : serverProto.formationBase.ProtoNinjaShortKey
      {
         return this.ninja_short_key$field;
      }
      
      public function clearLeadershipConsumed() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.leadership_consumed$field = new int();
      }
      
      public function get hasLeadershipConsumed() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set leadershipConsumed(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.leadership_consumed$field = param1;
      }
      
      public function get leadershipConsumed() : int
      {
         return this.leadership_consumed$field;
      }
      
      public function clearLeadershipUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.leadership_ulimit$field = new int();
      }
      
      public function get hasLeadershipUlimit() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set leadershipUlimit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.leadership_ulimit$field = param1;
      }
      
      public function get leadershipUlimit() : int
      {
         return this.leadership_ulimit$field;
      }
      
      public function clearFormationNinjaUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.formation_ninja_ulimit$field = new int();
      }
      
      public function get hasFormationNinjaUlimit() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set formationNinjaUlimit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.formation_ninja_ulimit$field = param1;
      }
      
      public function get formationNinjaUlimit() : int
      {
         return this.formation_ninja_ulimit$field;
      }
      
      public function clearCombatPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.combat_power$field = new int();
      }
      
      public function get hasCombatPower() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set combatPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.combat_power$field = param1;
      }
      
      public function get combatPower() : int
      {
         return this.combat_power$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.id);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.level);
         if(this.hasCurrentFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.current_flag$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninja.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja[_loc2_]);
            _loc2_++;
         }
         if(this.hasNinjaShortKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_short_key$field);
         }
         if(this.hasLeadershipConsumed)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.leadership_consumed$field);
         }
         if(this.hasLeadershipUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.leadership_ulimit$field);
         }
         if(this.hasFormationNinjaUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.formation_ninja_ulimit$field);
         }
         if(this.hasCombatPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.combat_power$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
