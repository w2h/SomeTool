package serverProto.rankBattle
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRankBattlePlayerRankInfo extends Message
   {
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoRankBattlePlayerRankInfo.player_key","playerKey",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const LOCAL_RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerRankInfo.local_rank","localRank",2 << 3 | WireType.VARINT);
      
      public static const GLOBAL_RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rankBattle.ProtoRankBattlePlayerRankInfo.global_rank","globalRank",3 << 3 | WireType.VARINT);
       
      private var player_key$field:ProtoPlayerKey;
      
      private var local_rank$field:int;
      
      private var hasField$0:uint = 0;
      
      private var global_rank$field:int;
      
      public function ProtoRankBattlePlayerRankInfo()
      {
         super();
      }
      
      public function clearPlayerKey() : void
      {
         this.player_key$field = null;
      }
      
      public function get hasPlayerKey() : Boolean
      {
         return this.player_key$field != null;
      }
      
      public function set playerKey(param1:ProtoPlayerKey) : void
      {
         this.player_key$field = param1;
      }
      
      public function get playerKey() : ProtoPlayerKey
      {
         return this.player_key$field;
      }
      
      public function clearLocalRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.local_rank$field = new int();
      }
      
      public function get hasLocalRank() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set localRank(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.local_rank$field = param1;
      }
      
      public function get localRank() : int
      {
         return this.local_rank$field;
      }
      
      public function clearGlobalRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.global_rank$field = new int();
      }
      
      public function get hasGlobalRank() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set globalRank(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.global_rank$field = param1;
      }
      
      public function get globalRank() : int
      {
         return this.global_rank$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_key$field);
         }
         if(this.hasLocalRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.local_rank$field);
         }
         if(this.hasGlobalRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.global_rank$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
