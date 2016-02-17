package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoStageAction extends Message
   {
      
      public static const PLAYER_TEAM_POS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoStageAction.player_team_pos","playerTeamPos",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerTeamPos);
      
      public static const BATTLE_START_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoStageAction.battle_start_flag","battleStartFlag",2 << 3 | WireType.VARINT);
      
      public static const NINJA_HP_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoStageAction.ninja_hp_change","ninjaHpChange",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaHpChange);
      
      public static const TEAM_KATHA_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoStageAction.team_katha_change","teamKathaChange",4 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamKathaChange);
      
      public static const BATTLE_END_DELAY_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoStageAction.battle_end_delay_time","battleEndDelayTime",5 << 3 | WireType.VARINT);
       
      [ArrayElementType("serverProto.fight.ProtoPlayerTeamPos")]
      public var playerTeamPos:Array;
      
      private var battle_start_flag$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.fight.ProtoNinjaHpChange")]
      public var ninjaHpChange:Array;
      
      [ArrayElementType("serverProto.fight.ProtoTeamKathaChange")]
      public var teamKathaChange:Array;
      
      private var battle_end_delay_time$field:int;
      
      public function ProtoStageAction()
      {
         this.playerTeamPos = [];
         this.ninjaHpChange = [];
         this.teamKathaChange = [];
         super();
      }
      
      public function clearBattleStartFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.battle_start_flag$field = new int();
      }
      
      public function get hasBattleStartFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set battleStartFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.battle_start_flag$field = param1;
      }
      
      public function get battleStartFlag() : int
      {
         return this.battle_start_flag$field;
      }
      
      public function clearBattleEndDelayTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.battle_end_delay_time$field = new int();
      }
      
      public function get hasBattleEndDelayTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set battleEndDelayTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.battle_end_delay_time$field = param1;
      }
      
      public function get battleEndDelayTime() : int
      {
         return this.battle_end_delay_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.playerTeamPos.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.playerTeamPos[_loc2_]);
            _loc2_++;
         }
         if(this.hasBattleStartFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.battle_start_flag$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.ninjaHpChange.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaHpChange[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.teamKathaChange.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.teamKathaChange[_loc4_]);
            _loc4_++;
         }
         if(this.hasBattleEndDelayTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.battle_end_delay_time$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
