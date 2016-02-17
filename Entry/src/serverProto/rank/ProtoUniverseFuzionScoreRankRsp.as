package serverProto.rank
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniverseFuzionScoreRankRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoUniverseFuzionScoreRankRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const MY_RANK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoUniverseFuzionScoreRankRsp.my_rank","myRank",2 << 3 | WireType.LENGTH_DELIMITED,ProtoUniverseFuzionScoreRank);
      
      public static const RANK_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoUniverseFuzionScoreRankRsp.rank_list","rankList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoUniverseFuzionScoreRank);
      
      public static const BEGIN_SVR_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoUniverseFuzionScoreRankRsp.begin_svr_id","beginSvrId",4 << 3 | WireType.VARINT);
      
      public static const END_SVR_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoUniverseFuzionScoreRankRsp.end_svr_id","endSvrId",5 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var my_rank$field:serverProto.rank.ProtoUniverseFuzionScoreRank;
      
      [ArrayElementType("serverProto.rank.ProtoUniverseFuzionScoreRank")]
      public var rankList:Array;
      
      private var begin_svr_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var end_svr_id$field:uint;
      
      public function ProtoUniverseFuzionScoreRankRsp()
      {
         this.rankList = [];
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearMyRank() : void
      {
         this.my_rank$field = null;
      }
      
      public function get hasMyRank() : Boolean
      {
         return this.my_rank$field != null;
      }
      
      public function set myRank(param1:serverProto.rank.ProtoUniverseFuzionScoreRank) : void
      {
         this.my_rank$field = param1;
      }
      
      public function get myRank() : serverProto.rank.ProtoUniverseFuzionScoreRank
      {
         return this.my_rank$field;
      }
      
      public function clearBeginSvrId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.begin_svr_id$field = new uint();
      }
      
      public function get hasBeginSvrId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set beginSvrId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.begin_svr_id$field = param1;
      }
      
      public function get beginSvrId() : uint
      {
         return this.begin_svr_id$field;
      }
      
      public function clearEndSvrId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.end_svr_id$field = new uint();
      }
      
      public function get hasEndSvrId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set endSvrId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.end_svr_id$field = param1;
      }
      
      public function get endSvrId() : uint
      {
         return this.end_svr_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasMyRank)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.my_rank$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.rankList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rankList[_loc2_]);
            _loc2_++;
         }
         if(this.hasBeginSvrId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.begin_svr_id$field);
         }
         if(this.hasEndSvrId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.end_svr_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
