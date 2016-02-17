package serverProto.universeFuzionPre
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
   
   public final class ProtoUniverseGetRankBattleInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoUniverseGetRankBattleInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PLAYER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoUniverseGetRankBattleInfoRsp.player_info","playerInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoUniverseRankBattlePlayerInfo);
      
      public static const RIVAL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoUniverseGetRankBattleInfoRsp.rival_info","rivalInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoUniverseMatchedRivalInfo);
      
      public static const REPORT_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoUniverseGetRankBattleInfoRsp.report_list","reportList",4 << 3 | WireType.LENGTH_DELIMITED,ProtoUniverseRankBattleReportInfo);
       
      public var ret:ProtoRetInfo;
      
      private var player_info$field:serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo;
      
      private var rival_info$field:serverProto.universeFuzionPre.ProtoUniverseMatchedRivalInfo;
      
      [ArrayElementType("serverProto.universeFuzionPre.ProtoUniverseRankBattleReportInfo")]
      public var reportList:Array;
      
      public function ProtoUniverseGetRankBattleInfoRsp()
      {
         this.reportList = [];
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
      
      public function set playerInfo(param1:serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo) : void
      {
         this.player_info$field = param1;
      }
      
      public function get playerInfo() : serverProto.universeFuzionPre.ProtoUniverseRankBattlePlayerInfo
      {
         return this.player_info$field;
      }
      
      public function clearRivalInfo() : void
      {
         this.rival_info$field = null;
      }
      
      public function get hasRivalInfo() : Boolean
      {
         return this.rival_info$field != null;
      }
      
      public function set rivalInfo(param1:serverProto.universeFuzionPre.ProtoUniverseMatchedRivalInfo) : void
      {
         this.rival_info$field = param1;
      }
      
      public function get rivalInfo() : serverProto.universeFuzionPre.ProtoUniverseMatchedRivalInfo
      {
         return this.rival_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasPlayerInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_info$field);
         }
         if(this.hasRivalInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rival_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.reportList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.reportList[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
