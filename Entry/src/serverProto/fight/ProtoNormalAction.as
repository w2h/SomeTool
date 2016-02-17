package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNormalAction extends Message
   {
      
      public static const IS_FOLLOW_ACTION:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoNormalAction.is_follow_action","isFollowAction",1 << 3 | WireType.VARINT);
      
      public static const ACTIVE_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.active_ninja","activeNinja",2 << 3 | WireType.LENGTH_DELIMITED,ProtoActiveNinjaInfo);
      
      public static const CAHOOT_NINJA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.cahoot_ninja","cahootNinja",3 << 3 | WireType.LENGTH_DELIMITED,ProtoActiveNinjaInfo);
      
      public static const PASSIVE_NINJA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.passive_ninja","passiveNinja",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPassiveNinjaInfo);
      
      public static const NINJA_ATTACK_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoNormalAction.ninja_attack_type","ninjaAttackType",5 << 3 | WireType.VARINT,CahootNinjaAttackType);
      
      public static const TEAM_KATHA_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.team_katha_change","teamKathaChange",6 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamKathaChange);
      
      public static const NINJA_HP_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.ninja_hp_change","ninjaHpChange",7 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaHpChange);
      
      public static const IS_REVERT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoNormalAction.is_revert","isRevert",8 << 3 | WireType.VARINT);
      
      public static const NINJA_HINT_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNormalAction.ninja_hint_info","ninjaHintInfo",9 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaHintInfo);
       
      public var isFollowAction:Boolean;
      
      public var activeNinja:serverProto.fight.ProtoActiveNinjaInfo;
      
      [ArrayElementType("serverProto.fight.ProtoActiveNinjaInfo")]
      public var cahootNinja:Array;
      
      [ArrayElementType("serverProto.fight.ProtoPassiveNinjaInfo")]
      public var passiveNinja:Array;
      
      private var ninja_attack_type$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.fight.ProtoTeamKathaChange")]
      public var teamKathaChange:Array;
      
      [ArrayElementType("serverProto.fight.ProtoNinjaHpChange")]
      public var ninjaHpChange:Array;
      
      private var is_revert$field:uint;
      
      [ArrayElementType("serverProto.fight.ProtoNinjaHintInfo")]
      public var ninjaHintInfo:Array;
      
      public function ProtoNormalAction()
      {
         this.cahootNinja = [];
         this.passiveNinja = [];
         this.teamKathaChange = [];
         this.ninjaHpChange = [];
         this.ninjaHintInfo = [];
         super();
      }
      
      public function clearNinjaAttackType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_attack_type$field = new int();
      }
      
      public function get hasNinjaAttackType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaAttackType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_attack_type$field = param1;
      }
      
      public function get ninjaAttackType() : int
      {
         return this.ninja_attack_type$field;
      }
      
      public function clearIsRevert() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.is_revert$field = new uint();
      }
      
      public function get hasIsRevert() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set isRevert(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.is_revert$field = param1;
      }
      
      public function get isRevert() : uint
      {
         return this.is_revert$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc7_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_BOOL(param1,this.isFollowAction);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
         WriteUtils.write$TYPE_MESSAGE(param1,this.activeNinja);
         var _loc2_:uint = 0;
         while(_loc2_ < this.cahootNinja.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.cahootNinja[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.passiveNinja.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.passiveNinja[_loc3_]);
            _loc3_++;
         }
         if(this.hasNinjaAttackType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_ENUM(param1,this.ninja_attack_type$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.teamKathaChange.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.teamKathaChange[_loc4_]);
            _loc4_++;
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.ninjaHpChange.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaHpChange[_loc5_]);
            _loc5_++;
         }
         if(this.hasIsRevert)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.is_revert$field);
         }
         var _loc6_:uint = 0;
         while(_loc6_ < this.ninjaHintInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaHintInfo[_loc6_]);
            _loc6_++;
         }
         for(_loc7_ in this)
         {
            super.writeUnknown(param1,_loc7_);
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
