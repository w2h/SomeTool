package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBringinMoneyQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoBringinMoneyQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BRINGIN_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoBringinMoneyQueryRsp.bringin_times","bringinTimes",2 << 3 | WireType.VARINT);
      
      public static const LEFT_BRINGIN_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoBringinMoneyQueryRsp.left_bringin_times","leftBringinTimes",3 << 3 | WireType.VARINT);
      
      public static const GOLDINGOT_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoBringinMoneyQueryRsp.goldingot_num","goldingotNum",4 << 3 | WireType.VARINT);
      
      public static const MONEY_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoBringinMoneyQueryRsp.money_num","moneyNum",5 << 3 | WireType.VARINT);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoBringinMoneyQueryRsp.package_boxes","packageBoxes",6 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
       
      private var ret$field:ProtoRetInfo;
      
      private var bringin_times$field:int;
      
      private var hasField$0:uint = 0;
      
      private var left_bringin_times$field:int;
      
      private var goldingot_num$field:int;
      
      private var money_num$field:int;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      public function ProtoBringinMoneyQueryRsp()
      {
         this.packageBoxes = [];
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
      
      public function clearBringinTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.bringin_times$field = new int();
      }
      
      public function get hasBringinTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set bringinTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.bringin_times$field = param1;
      }
      
      public function get bringinTimes() : int
      {
         return this.bringin_times$field;
      }
      
      public function clearLeftBringinTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.left_bringin_times$field = new int();
      }
      
      public function get hasLeftBringinTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set leftBringinTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.left_bringin_times$field = param1;
      }
      
      public function get leftBringinTimes() : int
      {
         return this.left_bringin_times$field;
      }
      
      public function clearGoldingotNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.goldingot_num$field = new int();
      }
      
      public function get hasGoldingotNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set goldingotNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.goldingot_num$field = param1;
      }
      
      public function get goldingotNum() : int
      {
         return this.goldingot_num$field;
      }
      
      public function clearMoneyNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.money_num$field = new int();
      }
      
      public function get hasMoneyNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set moneyNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.money_num$field = param1;
      }
      
      public function get moneyNum() : int
      {
         return this.money_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasBringinTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.bringin_times$field);
         }
         if(this.hasLeftBringinTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.left_bringin_times$field);
         }
         if(this.hasGoldingotNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.goldingot_num$field);
         }
         if(this.hasMoneyNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.money_num$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBoxes[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
