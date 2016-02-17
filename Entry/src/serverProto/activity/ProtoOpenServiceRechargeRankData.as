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
   
   public final class ProtoOpenServiceRechargeRankData extends Message
   {
      
      public static const TOTAL_GOLDINGOT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceRechargeRankData.total_goldingot","totalGoldingot",1 << 3 | WireType.VARINT);
      
      public static const RANKS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceRechargeRankData.ranks","ranks",2 << 3 | WireType.LENGTH_DELIMITED,ProtoOpenServiceRank);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceRechargeRankData.package_boxes","packageBoxes",3 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
       
      private var total_goldingot$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.activity.ProtoOpenServiceRank")]
      public var ranks:Array;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      public function ProtoOpenServiceRechargeRankData()
      {
         this.ranks = [];
         this.packageBoxes = [];
         super();
      }
      
      public function clearTotalGoldingot() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.total_goldingot$field = new uint();
      }
      
      public function get hasTotalGoldingot() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set totalGoldingot(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.total_goldingot$field = param1;
      }
      
      public function get totalGoldingot() : uint
      {
         return this.total_goldingot$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasTotalGoldingot)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.total_goldingot$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ranks.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ranks[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBoxes[_loc3_]);
            _loc3_++;
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
