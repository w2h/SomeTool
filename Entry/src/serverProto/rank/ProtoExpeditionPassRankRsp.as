package serverProto.rank
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
   
   public final class ProtoExpeditionPassRankRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoExpeditionPassRankRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const MY_RANK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoExpeditionPassRankRsp.my_rank","myRank",2 << 3 | WireType.LENGTH_DELIMITED,ProtoExpeditionPassRank);
      
      public static const RANK_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoExpeditionPassRankRsp.rank_list","rankList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoExpeditionPassRank);
       
      private var ret$field:ProtoRetInfo;
      
      private var my_rank$field:serverProto.rank.ProtoExpeditionPassRank;
      
      [ArrayElementType("serverProto.rank.ProtoExpeditionPassRank")]
      public var rankList:Array;
      
      public function ProtoExpeditionPassRankRsp()
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
      
      public function set myRank(param1:serverProto.rank.ProtoExpeditionPassRank) : void
      {
         this.my_rank$field = param1;
      }
      
      public function get myRank() : serverProto.rank.ProtoExpeditionPassRank
      {
         return this.my_rank$field;
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
