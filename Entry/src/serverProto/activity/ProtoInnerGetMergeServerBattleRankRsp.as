package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoInnerGetMergeServerBattleRankRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInnerGetMergeServerBattleRankRsp.ret","ret",1 << 3 | WireType.VARINT);
      
      public static const MY_RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoInnerGetMergeServerBattleRankRsp.my_rank","myRank",2 << 3 | WireType.VARINT);
      
      public static const RANKS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoInnerGetMergeServerBattleRankRsp.ranks","ranks",3 << 3 | WireType.LENGTH_DELIMITED,ProtoMergeServerBattleRank);
       
      private var ret$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var my_rank$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoMergeServerBattleRank")]
      public var ranks:Array;
      
      public function ProtoInnerGetMergeServerBattleRankRsp()
      {
         this.ranks = [];
         super();
      }
      
      public function clearRet() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ret$field = new uint();
      }
      
      public function get hasRet() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ret(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ret$field = param1;
      }
      
      public function get ret() : uint
      {
         return this.ret$field;
      }
      
      public function clearMyRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.my_rank$field = new uint();
      }
      
      public function get hasMyRank() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set myRank(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.my_rank$field = param1;
      }
      
      public function get myRank() : uint
      {
         return this.my_rank$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.ret$field);
         }
         if(this.hasMyRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.my_rank$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ranks.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ranks[_loc2_]);
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
