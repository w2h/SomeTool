package serverProto.practice
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPracticeTimeInfo extends Message
   {
      
      public static const HOUR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeTimeInfo.hour","hour",1 << 3 | WireType.VARINT);
      
      public static const COST_MONEY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeTimeInfo.cost_money","costMoney",2 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeTimeInfo.exp","exp",3 << 3 | WireType.VARINT);
      
      public static const SPARRING_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeTimeInfo.sparring_exp","sparringExp",4 << 3 | WireType.VARINT);
      
      public static const PAY_EXP:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoPracticeTimeInfo.pay_exp","payExp",5 << 3 | WireType.LENGTH_DELIMITED,ProtoPracticePayInfo);
       
      private var hour$field:int;
      
      private var hasField$0:uint = 0;
      
      private var cost_money$field:int;
      
      private var exp$field:int;
      
      private var sparring_exp$field:int;
      
      [ArrayElementType("serverProto.practice.ProtoPracticePayInfo")]
      public var payExp:Array;
      
      public function ProtoPracticeTimeInfo()
      {
         this.payExp = [];
         super();
      }
      
      public function clearHour() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.hour$field = new int();
      }
      
      public function get hasHour() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set hour(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.hour$field = param1;
      }
      
      public function get hour() : int
      {
         return this.hour$field;
      }
      
      public function clearCostMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.cost_money$field = new int();
      }
      
      public function get hasCostMoney() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set costMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.cost_money$field = param1;
      }
      
      public function get costMoney() : int
      {
         return this.cost_money$field;
      }
      
      public function clearExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.exp$field = new int();
      }
      
      public function get hasExp() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set exp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.exp$field = param1;
      }
      
      public function get exp() : int
      {
         return this.exp$field;
      }
      
      public function clearSparringExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.sparring_exp$field = new int();
      }
      
      public function get hasSparringExp() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set sparringExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.sparring_exp$field = param1;
      }
      
      public function get sparringExp() : int
      {
         return this.sparring_exp$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasHour)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.hour$field);
         }
         if(this.hasCostMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.cost_money$field);
         }
         if(this.hasExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.exp$field);
         }
         if(this.hasSparringExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.sparring_exp$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.payExp.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.payExp[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
