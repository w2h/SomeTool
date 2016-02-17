package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMergeServerRechargeData extends Message
   {
      
      public static const TOTAL_RECHARGE_GOLDINGOT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerRechargeData.total_recharge_goldingot","totalRechargeGoldingot",1 << 3 | WireType.VARINT);
      
      public static const REMAIN_FANILI_DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerRechargeData.remain_fanili_data","remainFaniliData",2 << 3 | WireType.VARINT);
      
      public static const TOTAL_FANLI_DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerRechargeData.total_fanli_data","totalFanliData",3 << 3 | WireType.VARINT);
       
      private var total_recharge_goldingot$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var remain_fanili_data$field:uint;
      
      private var total_fanli_data$field:uint;
      
      public function ProtoMergeServerRechargeData()
      {
         super();
      }
      
      public function clearTotalRechargeGoldingot() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.total_recharge_goldingot$field = new uint();
      }
      
      public function get hasTotalRechargeGoldingot() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set totalRechargeGoldingot(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.total_recharge_goldingot$field = param1;
      }
      
      public function get totalRechargeGoldingot() : uint
      {
         return this.total_recharge_goldingot$field;
      }
      
      public function clearRemainFaniliData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.remain_fanili_data$field = new uint();
      }
      
      public function get hasRemainFaniliData() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainFaniliData(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.remain_fanili_data$field = param1;
      }
      
      public function get remainFaniliData() : uint
      {
         return this.remain_fanili_data$field;
      }
      
      public function clearTotalFanliData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.total_fanli_data$field = new uint();
      }
      
      public function get hasTotalFanliData() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set totalFanliData(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.total_fanli_data$field = param1;
      }
      
      public function get totalFanliData() : uint
      {
         return this.total_fanli_data$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTotalRechargeGoldingot)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.total_recharge_goldingot$field);
         }
         if(this.hasRemainFaniliData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_fanili_data$field);
         }
         if(this.hasTotalFanliData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.total_fanli_data$field);
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
