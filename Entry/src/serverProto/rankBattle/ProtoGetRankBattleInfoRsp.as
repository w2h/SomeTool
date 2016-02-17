package serverProto.rankBattle
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetRankBattleInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PLAYER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.player_info","playerInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoRankBattlePlayerInfo);
      
      public static const LOCAL_RIVAL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.local_rival_info","localRivalInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoMatchedRivalInfo);
      
      public static const GLOBAL_RIVAL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.global_rival_info","globalRivalInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoMatchedRivalInfo);
      
      public static const LOCAL_REPORT_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.local_report_list","localReportList",5 << 3 | WireType.LENGTH_DELIMITED,ProtoRankBattleReportInfo);
      
      public static const GLOBAL_REPORT_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoGetRankBattleInfoRsp.global_report_list","globalReportList",6 << 3 | WireType.LENGTH_DELIMITED,ProtoRankBattleReportInfo);
       
      public var ret:ProtoRetInfo;
      
      private var player_info$field:serverProto.rankBattle.ProtoRankBattlePlayerInfo;
      
      private var local_rival_info$field:serverProto.rankBattle.ProtoMatchedRivalInfo;
      
      private var global_rival_info$field:serverProto.rankBattle.ProtoMatchedRivalInfo;
      
      [ArrayElementType("serverProto.rankBattle.ProtoRankBattleReportInfo")]
      public var localReportList:Array;
      
      [ArrayElementType("serverProto.rankBattle.ProtoRankBattleReportInfo")]
      public var globalReportList:Array;
      
      public function ProtoGetRankBattleInfoRsp()
      {
         this.localReportList = [];
         this.globalReportList = [];
         super();
      }
      
      public function clearPlayerInfo() : void
      {
         this.player_info$field = null;
      }
      
      public function get hasPlayerInfo() : Boolean
      {
         return this.player_info$field != null;
      }
      
      public function set playerInfo(param1:serverProto.rankBattle.ProtoRankBattlePlayerInfo) : void
      {
         this.player_info$field = param1;
      }
      
      public function get playerInfo() : serverProto.rankBattle.ProtoRankBattlePlayerInfo
      {
         return this.player_info$field;
      }
      
      public function clearLocalRivalInfo() : void
      {
         this.local_rival_info$field = null;
      }
      
      public function get hasLocalRivalInfo() : Boolean
      {
         return this.local_rival_info$field != null;
      }
      
      public function set localRivalInfo(param1:serverProto.rankBattle.ProtoMatchedRivalInfo) : void
      {
         this.local_rival_info$field = param1;
      }
      
      public function get localRivalInfo() : serverProto.rankBattle.ProtoMatchedRivalInfo
      {
         return this.local_rival_info$field;
      }
      
      public function clearGlobalRivalInfo() : void
      {
         this.global_rival_info$field = null;
      }
      
      public function get hasGlobalRivalInfo() : Boolean
      {
         return this.global_rival_info$field != null;
      }
      
      public function set globalRivalInfo(param1:serverProto.rankBattle.ProtoMatchedRivalInfo) : void
      {
         this.global_rival_info$field = param1;
      }
      
      public function get globalRivalInfo() : serverProto.rankBattle.ProtoMatchedRivalInfo
      {
         return this.global_rival_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasPlayerInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_info$field);
         }
         if(this.hasLocalRivalInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.local_rival_info$field);
         }
         if(this.hasGlobalRivalInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.global_rival_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.localReportList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.localReportList[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.globalReportList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.globalReportList[_loc3_]);
            _loc3_++;
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
