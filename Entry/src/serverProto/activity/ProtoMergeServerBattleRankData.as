package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMergeServerBattleRankData extends Message
   {
      
      public static const RANKS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerBattleRankData.ranks","ranks",1 << 3 | WireType.LENGTH_DELIMITED,ProtoMergeServerBattleRank);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerBattleRankData.package_boxes","packageBoxes",2 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const FIRST_TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerBattleRankData.first_title_id","firstTitleId",3 << 3 | WireType.VARINT);
      
      public static const FINAL_TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerBattleRankData.final_title_id","finalTitleId",4 << 3 | WireType.VARINT);
      
      public static const FINAL_AWARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerBattleRankData.final_award_status","finalAwardStatus",5 << 3 | WireType.VARINT);
      
      public static const MY_RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerBattleRankData.my_rank","myRank",6 << 3 | WireType.VARINT);
       
      [ArrayElementType("serverProto.activity.ProtoMergeServerBattleRank")]
      public var ranks:Array;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      private var first_title_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var final_title_id$field:uint;
      
      private var final_award_status$field:uint;
      
      private var my_rank$field:uint;
      
      public function ProtoMergeServerBattleRankData()
      {
         this.ranks = [];
         this.packageBoxes = [];
         super();
      }
      
      public function clearFirstTitleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.first_title_id$field = new uint();
      }
      
      public function get hasFirstTitleId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set firstTitleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.first_title_id$field = param1;
      }
      
      public function get firstTitleId() : uint
      {
         return this.first_title_id$field;
      }
      
      public function clearFinalTitleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.final_title_id$field = new uint();
      }
      
      public function get hasFinalTitleId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set finalTitleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.final_title_id$field = param1;
      }
      
      public function get finalTitleId() : uint
      {
         return this.final_title_id$field;
      }
      
      public function clearFinalAwardStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.final_award_status$field = new uint();
      }
      
      public function get hasFinalAwardStatus() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set finalAwardStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.final_award_status$field = param1;
      }
      
      public function get finalAwardStatus() : uint
      {
         return this.final_award_status$field;
      }
      
      public function clearMyRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.my_rank$field = new uint();
      }
      
      public function get hasMyRank() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set myRank(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.my_rank$field = param1;
      }
      
      public function get myRank() : uint
      {
         return this.my_rank$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.ranks.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ranks[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBoxes[_loc3_]);
            _loc3_++;
         }
         if(this.hasFirstTitleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.first_title_id$field);
         }
         if(this.hasFinalTitleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.final_title_id$field);
         }
         if(this.hasFinalAwardStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.final_award_status$field);
         }
         if(this.hasMyRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.my_rank$field);
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
