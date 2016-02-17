package serverProto.ninjaexam
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaExamInfo extends Message
   {
      
      public static const MAX_STAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.max_stage","maxStage",1 << 3 | WireType.VARINT);
      
      public static const CURR_STAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.curr_stage","currStage",2 << 3 | WireType.VARINT);
      
      public static const TOTAL_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.total_exp","totalExp",3 << 3 | WireType.VARINT);
      
      public static const FREE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.free_count","freeCount",4 << 3 | WireType.VARINT);
      
      public static const RAIDS_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.raids_time","raidsTime",5 << 3 | WireType.VARINT);
      
      public static const MY_RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.my_rank","myRank",6 << 3 | WireType.VARINT);
      
      public static const TOTAL_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoNinjaExamInfo.total_money","totalMoney",7 << 3 | WireType.VARINT);
       
      public var maxStage:uint;
      
      public var currStage:uint;
      
      public var totalExp:uint;
      
      public var freeCount:uint;
      
      private var raids_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var my_rank$field:uint;
      
      private var total_money$field:uint;
      
      public function ProtoNinjaExamInfo()
      {
         super();
      }
      
      public function clearRaidsTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.raids_time$field = new uint();
      }
      
      public function get hasRaidsTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set raidsTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.raids_time$field = param1;
      }
      
      public function get raidsTime() : uint
      {
         return this.raids_time$field;
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
      
      public function clearTotalMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.total_money$field = new uint();
      }
      
      public function get hasTotalMoney() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set totalMoney(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.total_money$field = param1;
      }
      
      public function get totalMoney() : uint
      {
         return this.total_money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.maxStage);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.currStage);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.totalExp);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.freeCount);
         if(this.hasRaidsTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.raids_time$field);
         }
         if(this.hasMyRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.my_rank$field);
         }
         if(this.hasTotalMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.total_money$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
