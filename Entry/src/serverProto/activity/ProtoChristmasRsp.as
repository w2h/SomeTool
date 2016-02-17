package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChristmasRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoChristmasRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasRsp.begin_time","beginTime",2 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasRsp.end_time","endTime",3 << 3 | WireType.VARINT);
      
      public static const EXCHANGE_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoChristmasRsp.exchange_info","exchangeInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoBoxExchangeInfo);
      
      public static const TOTAL_PAY_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasRsp.total_pay_money","totalPayMoney",6 << 3 | WireType.VARINT);
      
      public static const TASK_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoChristmasRsp.task_info","taskInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoChristmasTaskInfo);
      
      public static const CHRISTMAS_TREE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoChristmasRsp.christmas_tree","christmasTree",8 << 3 | WireType.LENGTH_DELIMITED,ProtoChristmasTreeInfo);
      
      public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasRsp.score","score",9 << 3 | WireType.VARINT);
      
      public static const TASK_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasRsp.task_count","taskCount",10 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var end_time$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoBoxExchangeInfo")]
      public var exchangeInfo:Array;
      
      private var total_pay_money$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoChristmasTaskInfo")]
      public var taskInfo:Array;
      
      private var christmas_tree$field:serverProto.activity.ProtoChristmasTreeInfo;
      
      private var score$field:uint;
      
      private var task_count$field:uint;
      
      public function ProtoChristmasRsp()
      {
         this.exchangeInfo = [];
         this.taskInfo = [];
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
      
      public function clearTotalPayMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.total_pay_money$field = new uint();
      }
      
      public function get hasTotalPayMoney() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set totalPayMoney(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.total_pay_money$field = param1;
      }
      
      public function get totalPayMoney() : uint
      {
         return this.total_pay_money$field;
      }
      
      public function clearChristmasTree() : void
      {
         this.christmas_tree$field = null;
      }
      
      public function get hasChristmasTree() : Boolean
      {
         return this.christmas_tree$field != null;
      }
      
      public function set christmasTree(param1:serverProto.activity.ProtoChristmasTreeInfo) : void
      {
         this.christmas_tree$field = param1;
      }
      
      public function get christmasTree() : serverProto.activity.ProtoChristmasTreeInfo
      {
         return this.christmas_tree$field;
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.score$field = new uint();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set score(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.score$field = param1;
      }
      
      public function get score() : uint
      {
         return this.score$field;
      }
      
      public function clearTaskCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.task_count$field = new uint();
      }
      
      public function get hasTaskCount() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set taskCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.task_count$field = param1;
      }
      
      public function get taskCount() : uint
      {
         return this.task_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
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
         while(_loc2_ < this.exchangeInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.exchangeInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasTotalPayMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.total_pay_money$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.taskInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.taskInfo[_loc3_]);
            _loc3_++;
         }
         if(this.hasChristmasTree)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.christmas_tree$field);
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.score$field);
         }
         if(this.hasTaskCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.task_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
