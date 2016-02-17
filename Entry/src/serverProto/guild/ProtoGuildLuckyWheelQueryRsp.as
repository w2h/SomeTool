package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildLuckyWheelQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const FREE_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.free_flag","freeFlag",2 << 3 | WireType.VARINT);
      
      public static const REMAIN_ROLL_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.remain_roll_count","remainRollCount",3 << 3 | WireType.VARINT);
      
      public static const TOTAL_ROLL_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.total_roll_count","totalRollCount",4 << 3 | WireType.VARINT);
      
      public static const ROLL_COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.roll_cost","rollCost",5 << 3 | WireType.VARINT);
      
      public static const CURRENT_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.current_contri","currentContri",6 << 3 | WireType.VARINT);
      
      public static const AWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildLuckyWheelQueryRsp.award_list","awardList",7 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      private var ret$field:ProtoRetInfo;
      
      private var free_flag$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var remain_roll_count$field:uint;
      
      private var total_roll_count$field:uint;
      
      private var roll_cost$field:uint;
      
      private var current_contri$field:uint;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var awardList:Array;
      
      public function ProtoGuildLuckyWheelQueryRsp()
      {
         this.awardList = [];
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
      
      public function clearFreeFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.free_flag$field = new uint();
      }
      
      public function get hasFreeFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set freeFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.free_flag$field = param1;
      }
      
      public function get freeFlag() : uint
      {
         return this.free_flag$field;
      }
      
      public function clearRemainRollCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.remain_roll_count$field = new uint();
      }
      
      public function get hasRemainRollCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainRollCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.remain_roll_count$field = param1;
      }
      
      public function get remainRollCount() : uint
      {
         return this.remain_roll_count$field;
      }
      
      public function clearTotalRollCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.total_roll_count$field = new uint();
      }
      
      public function get hasTotalRollCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set totalRollCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.total_roll_count$field = param1;
      }
      
      public function get totalRollCount() : uint
      {
         return this.total_roll_count$field;
      }
      
      public function clearRollCost() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.roll_cost$field = new uint();
      }
      
      public function get hasRollCost() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set rollCost(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.roll_cost$field = param1;
      }
      
      public function get rollCost() : uint
      {
         return this.roll_cost$field;
      }
      
      public function clearCurrentContri() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.current_contri$field = new uint();
      }
      
      public function get hasCurrentContri() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set currentContri(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.current_contri$field = param1;
      }
      
      public function get currentContri() : uint
      {
         return this.current_contri$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasFreeFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.free_flag$field);
         }
         if(this.hasRemainRollCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_roll_count$field);
         }
         if(this.hasTotalRollCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.total_roll_count$field);
         }
         if(this.hasRollCost)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.roll_cost$field);
         }
         if(this.hasCurrentContri)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.current_contri$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.awardList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.awardList[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
