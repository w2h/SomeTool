package serverProto.battleRoyale
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   
   public final class ProtoBattleRoyaleOverAward extends Message
   {
      
      public static const SCORE_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleOverAward.score_award","scoreAward",1 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const RANK_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleOverAward.rank_award","rankAward",2 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const WIN_CAMP_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleOverAward.win_camp_award","winCampAward",3 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var scoreAward:Array;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var rankAward:Array;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var winCampAward:Array;
      
      public function ProtoBattleRoyaleOverAward()
      {
         this.scoreAward = [];
         this.rankAward = [];
         this.winCampAward = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.scoreAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.scoreAward[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.rankAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rankAward[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.winCampAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.winCampAward[_loc4_]);
            _loc4_++;
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
