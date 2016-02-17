package serverProto.chipRecycle
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChipRefineryInfo extends Message
   {
      
      public static const CURR_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryInfo.curr_exp","currExp",1 << 3 | WireType.VARINT);
      
      public static const FREE_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryInfo.free_count","freeCount",2 << 3 | WireType.VARINT);
      
      public static const MAX_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryInfo.max_count","maxCount",3 << 3 | WireType.VARINT);
      
      public static const CHIP_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.chipRecycle.ProtoChipRefineryInfo.chip_list","chipList",4 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const CARD_CHIP_EXCHANGE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryInfo.card_chip_exchange_exp","cardChipExchangeExp",5 << 3 | WireType.VARINT);
      
      public static const CHIP_REFINERY_CONF:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.chipRecycle.ProtoChipRefineryInfo.chip_refinery_conf","chipRefineryConf",6 << 3 | WireType.LENGTH_DELIMITED,ProtoChipRefineryConf);
       
      private var curr_exp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var free_count$field:int;
      
      private var max_count$field:int;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var chipList:Array;
      
      private var card_chip_exchange_exp$field:int;
      
      [ArrayElementType("serverProto.chipRecycle.ProtoChipRefineryConf")]
      public var chipRefineryConf:Array;
      
      public function ProtoChipRefineryInfo()
      {
         this.chipList = [];
         this.chipRefineryConf = [];
         super();
      }
      
      public function clearCurrExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.curr_exp$field = new int();
      }
      
      public function get hasCurrExp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.curr_exp$field = param1;
      }
      
      public function get currExp() : int
      {
         return this.curr_exp$field;
      }
      
      public function clearFreeCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.free_count$field = new int();
      }
      
      public function get hasFreeCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set freeCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.free_count$field = param1;
      }
      
      public function get freeCount() : int
      {
         return this.free_count$field;
      }
      
      public function clearMaxCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.max_count$field = new int();
      }
      
      public function get hasMaxCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set maxCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.max_count$field = param1;
      }
      
      public function get maxCount() : int
      {
         return this.max_count$field;
      }
      
      public function clearCardChipExchangeExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.card_chip_exchange_exp$field = new int();
      }
      
      public function get hasCardChipExchangeExp() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set cardChipExchangeExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.card_chip_exchange_exp$field = param1;
      }
      
      public function get cardChipExchangeExp() : int
      {
         return this.card_chip_exchange_exp$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasCurrExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.curr_exp$field);
         }
         if(this.hasFreeCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.free_count$field);
         }
         if(this.hasMaxCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.max_count$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.chipList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.chipList[_loc2_]);
            _loc2_++;
         }
         if(this.hasCardChipExchangeExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.card_chip_exchange_exp$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.chipRefineryConf.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.chipRefineryConf[_loc3_]);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
