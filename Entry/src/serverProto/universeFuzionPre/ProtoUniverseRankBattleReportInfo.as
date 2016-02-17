package serverProto.universeFuzionPre
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniverseRankBattleReportInfo extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.universeFuzionPre.ProtoUniverseRankBattleReportInfo.type","type",1 << 3 | WireType.VARINT,ProtoUniverseReportType);
      
      public static const RIVAL_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoUniverseRankBattleReportInfo.rival_id","rivalId",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const RIVAL_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.universeFuzionPre.ProtoUniverseRankBattleReportInfo.rival_name","rivalName",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const NEW_RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattleReportInfo.new_rank","newRank",4 << 3 | WireType.VARINT);
      
      public static const OLD_RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionPre.ProtoUniverseRankBattleReportInfo.old_rank","oldRank",5 << 3 | WireType.VARINT);
       
      private var type$field:int;
      
      private var hasField$0:uint = 0;
      
      private var rival_id$field:ProtoPlayerKey;
      
      private var rival_name$field:String;
      
      private var new_rank$field:int;
      
      private var old_rank$field:int;
      
      public function ProtoUniverseRankBattleReportInfo()
      {
         super();
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.type$field = new int();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set type(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.type$field = param1;
      }
      
      public function get type() : int
      {
         return this.type$field;
      }
      
      public function clearRivalId() : void
      {
         this.rival_id$field = null;
      }
      
      public function get hasRivalId() : Boolean
      {
         return this.rival_id$field != null;
      }
      
      public function set rivalId(param1:ProtoPlayerKey) : void
      {
         this.rival_id$field = param1;
      }
      
      public function get rivalId() : ProtoPlayerKey
      {
         return this.rival_id$field;
      }
      
      public function clearRivalName() : void
      {
         this.rival_name$field = null;
      }
      
      public function get hasRivalName() : Boolean
      {
         return this.rival_name$field != null;
      }
      
      public function set rivalName(param1:String) : void
      {
         this.rival_name$field = param1;
      }
      
      public function get rivalName() : String
      {
         return this.rival_name$field;
      }
      
      public function clearNewRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.new_rank$field = new int();
      }
      
      public function get hasNewRank() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set newRank(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.new_rank$field = param1;
      }
      
      public function get newRank() : int
      {
         return this.new_rank$field;
      }
      
      public function clearOldRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.old_rank$field = new int();
      }
      
      public function get hasOldRank() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set oldRank(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.old_rank$field = param1;
      }
      
      public function get oldRank() : int
      {
         return this.old_rank$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.type$field);
         }
         if(this.hasRivalId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rival_id$field);
         }
         if(this.hasRivalName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.rival_name$field);
         }
         if(this.hasNewRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.new_rank$field);
         }
         if(this.hasOldRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.old_rank$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
