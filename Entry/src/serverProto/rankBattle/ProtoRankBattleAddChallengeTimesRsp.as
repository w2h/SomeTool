package serverProto.rankBattle
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRankBattleAddChallengeTimesRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoRankBattleAddChallengeTimesRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const RANK_BATTLE_PLAYER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoRankBattleAddChallengeTimesRsp.rank_battle_player_info","rankBattlePlayerInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoRankBattlePlayerInfo);
       
      public var ret:ProtoRetInfo;
      
      private var rank_battle_player_info$field:serverProto.rankBattle.ProtoRankBattlePlayerInfo;
      
      public function ProtoRankBattleAddChallengeTimesRsp()
      {
         super();
      }
      
      public function clearRankBattlePlayerInfo() : void
      {
         this.rank_battle_player_info$field = null;
      }
      
      public function get hasRankBattlePlayerInfo() : Boolean
      {
         return this.rank_battle_player_info$field != null;
      }
      
      public function set rankBattlePlayerInfo(param1:serverProto.rankBattle.ProtoRankBattlePlayerInfo) : void
      {
         this.rank_battle_player_info$field = param1;
      }
      
      public function get rankBattlePlayerInfo() : serverProto.rankBattle.ProtoRankBattlePlayerInfo
      {
         return this.rank_battle_player_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasRankBattlePlayerInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rank_battle_player_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
