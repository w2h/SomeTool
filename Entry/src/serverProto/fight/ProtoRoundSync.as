package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRoundSync extends Message
   {
      
      public static const META_ACTION:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRoundSync.meta_action","metaAction",1 << 3 | WireType.LENGTH_DELIMITED,ProtoMetaAction);
      
      public static const TEAM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRoundSync.team_info","teamInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamInfo);
      
      public static const IS_FIGHT_OVER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoRoundSync.is_fight_over","isFightOver",3 << 3 | WireType.VARINT);
      
      public static const BIG_ROUND_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoRoundSync.big_round_index","bigRoundIndex",4 << 3 | WireType.VARINT);
      
      public static const CUSTOM_BATTLE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRoundSync.custom_battle_info","customBattleInfo",6 << 3 | WireType.LENGTH_DELIMITED,ProtoCustomBattleInfo);
      
      public static const BACKGROUND_RES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRoundSync.background_res","backgroundRes",7 << 3 | WireType.LENGTH_DELIMITED,FightBackgroundRes);
       
      [ArrayElementType("serverProto.fight.ProtoMetaAction")]
      public var metaAction:Array;
      
      [ArrayElementType("serverProto.fight.ProtoTeamInfo")]
      public var teamInfo:Array;
      
      private var is_fight_over$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var big_round_index$field:uint;
      
      private var custom_battle_info$field:serverProto.fight.ProtoCustomBattleInfo;
      
      private var background_res$field:serverProto.fight.FightBackgroundRes;
      
      public function ProtoRoundSync()
      {
         this.metaAction = [];
         this.teamInfo = [];
         super();
      }
      
      public function clearIsFightOver() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_fight_over$field = new Boolean();
      }
      
      public function get hasIsFightOver() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isFightOver(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_fight_over$field = param1;
      }
      
      public function get isFightOver() : Boolean
      {
         return this.is_fight_over$field;
      }
      
      public function clearBigRoundIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.big_round_index$field = new uint();
      }
      
      public function get hasBigRoundIndex() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set bigRoundIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.big_round_index$field = param1;
      }
      
      public function get bigRoundIndex() : uint
      {
         return this.big_round_index$field;
      }
      
      public function clearCustomBattleInfo() : void
      {
         this.custom_battle_info$field = null;
      }
      
      public function get hasCustomBattleInfo() : Boolean
      {
         return this.custom_battle_info$field != null;
      }
      
      public function set customBattleInfo(param1:serverProto.fight.ProtoCustomBattleInfo) : void
      {
         this.custom_battle_info$field = param1;
      }
      
      public function get customBattleInfo() : serverProto.fight.ProtoCustomBattleInfo
      {
         return this.custom_battle_info$field;
      }
      
      public function clearBackgroundRes() : void
      {
         this.background_res$field = null;
      }
      
      public function get hasBackgroundRes() : Boolean
      {
         return this.background_res$field != null;
      }
      
      public function set backgroundRes(param1:serverProto.fight.FightBackgroundRes) : void
      {
         this.background_res$field = param1;
      }
      
      public function get backgroundRes() : serverProto.fight.FightBackgroundRes
      {
         return this.background_res$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.metaAction.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.metaAction[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.teamInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.teamInfo[_loc3_]);
            _loc3_++;
         }
         if(this.hasIsFightOver)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.is_fight_over$field);
         }
         if(this.hasBigRoundIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.big_round_index$field);
         }
         if(this.hasCustomBattleInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.custom_battle_info$field);
         }
         if(this.hasBackgroundRes)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.background_res$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
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
