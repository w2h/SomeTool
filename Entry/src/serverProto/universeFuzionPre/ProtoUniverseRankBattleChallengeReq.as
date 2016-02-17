package serverProto.universeFuzionPre
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniverseRankBattleChallengeReq extends Message
   {
      
      public static const RIVAL_RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattleChallengeReq.rival_rank","rivalRank",1 << 3 | WireType.VARINT);
       
      private var rival_rank$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoUniverseRankBattleChallengeReq()
      {
         super();
      }
      
      public function clearRivalRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rival_rank$field = new int();
      }
      
      public function get hasRivalRank() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set rivalRank(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rival_rank$field = param1;
      }
      
      public function get rivalRank() : int
      {
         return this.rival_rank$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRivalRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.rival_rank$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
