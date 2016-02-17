package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMysticChestRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMysticChestRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.begin_time","beginTime",2 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.end_time","endTime",3 << 3 | WireType.VARINT);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMysticChestRsp.package_boxes","packageBoxes",4 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const FINISH_TASK_COUNT:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.finish_task_count","finishTaskCount",5 << 3 | WireType.VARINT);
      
      public static const KEY_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.key_num","keyNum",6 << 3 | WireType.VARINT);
      
      public static const BUY_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.buy_price","buyPrice",7 << 3 | WireType.VARINT);
      
      public static const CUR_ROUND_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.cur_round_count","curRoundCount",8 << 3 | WireType.VARINT);
      
      public static const ALL_ROUND_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.all_round_count","allRoundCount",9 << 3 | WireType.VARINT);
      
      public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMysticChestRsp.award","award",10 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      private var ret$field:ProtoRetInfo;
      
      private var begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var end_time$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      [ArrayElementType("uint")]
      public var finishTaskCount:Array;
      
      private var key_num$field:uint;
      
      private var buy_price$field:uint;
      
      private var cur_round_count$field:uint;
      
      private var all_round_count$field:uint;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var award:Array;
      
      public function ProtoMysticChestRsp()
      {
         this.packageBoxes = [];
         this.finishTaskCount = [];
         this.award = [];
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
      
      public function clearBeginTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.begin_time$field = new uint();
      }
      
      public function get hasBeginTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set beginTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.begin_time$field = param1;
      }
      
      public function get beginTime() : uint
      {
         return this.begin_time$field;
      }
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.end_time$field = new uint();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set endTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.end_time$field = param1;
      }
      
      public function get endTime() : uint
      {
         return this.end_time$field;
      }
      
      public function clearKeyNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.key_num$field = new uint();
      }
      
      public function get hasKeyNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set keyNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.key_num$field = param1;
      }
      
      public function get keyNum() : uint
      {
         return this.key_num$field;
      }
      
      public function clearBuyPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.buy_price$field = new uint();
      }
      
      public function get hasBuyPrice() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set buyPrice(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.buy_price$field = param1;
      }
      
      public function get buyPrice() : uint
      {
         return this.buy_price$field;
      }
      
      public function clearCurRoundCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.cur_round_count$field = new uint();
      }
      
      public function get hasCurRoundCount() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set curRoundCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.cur_round_count$field = param1;
      }
      
      public function get curRoundCount() : uint
      {
         return this.cur_round_count$field;
      }
      
      public function clearAllRoundCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.all_round_count$field = new uint();
      }
      
      public function get hasAllRoundCount() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set allRoundCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.all_round_count$field = param1;
      }
      
      public function get allRoundCount() : uint
      {
         return this.all_round_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.begin_time$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.end_time$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBoxes[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.finishTaskCount.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.finishTaskCount[_loc3_]);
            _loc3_++;
         }
         if(this.hasKeyNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.key_num$field);
         }
         if(this.hasBuyPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.buy_price$field);
         }
         if(this.hasCurRoundCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.cur_round_count$field);
         }
         if(this.hasAllRoundCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.all_round_count$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.award.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award[_loc4_]);
            _loc4_++;
         }
         for(_loc5_ in this)
         {
            super.writeUnknown(param1,_loc5_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
