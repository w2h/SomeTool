package serverProto.blackMarket
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBlackMarketInfo extends Message
   {
      
      public static const FREE_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.blackMarket.ProtoBlackMarketInfo.free_times","freeTimes",1 << 3 | WireType.VARINT);
      
      public static const JADE_CHIP_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.blackMarket.ProtoBlackMarketInfo.jade_chip_num","jadeChipNum",2 << 3 | WireType.VARINT);
      
      public static const JADE_NEED_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.blackMarket.ProtoBlackMarketInfo.jade_need_num","jadeNeedNum",3 << 3 | WireType.VARINT);
      
      public static const CAN_OPEN_BOX_LIST:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.blackMarket.ProtoBlackMarketInfo.can_open_box_list","canOpenBoxList",4 << 3 | WireType.VARINT);
       
      private var free_times$field:int;
      
      private var hasField$0:uint = 0;
      
      private var jade_chip_num$field:int;
      
      private var jade_need_num$field:int;
      
      [ArrayElementType("int")]
      public var canOpenBoxList:Array;
      
      public function ProtoBlackMarketInfo()
      {
         this.canOpenBoxList = [];
         super();
      }
      
      public function clearFreeTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.free_times$field = new int();
      }
      
      public function get hasFreeTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set freeTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.free_times$field = param1;
      }
      
      public function get freeTimes() : int
      {
         return this.free_times$field;
      }
      
      public function clearJadeChipNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.jade_chip_num$field = new int();
      }
      
      public function get hasJadeChipNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set jadeChipNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.jade_chip_num$field = param1;
      }
      
      public function get jadeChipNum() : int
      {
         return this.jade_chip_num$field;
      }
      
      public function clearJadeNeedNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.jade_need_num$field = new int();
      }
      
      public function get hasJadeNeedNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set jadeNeedNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.jade_need_num$field = param1;
      }
      
      public function get jadeNeedNum() : int
      {
         return this.jade_need_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasFreeTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.free_times$field);
         }
         if(this.hasJadeChipNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.jade_chip_num$field);
         }
         if(this.hasJadeNeedNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.jade_need_num$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.canOpenBoxList.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.canOpenBoxList[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
