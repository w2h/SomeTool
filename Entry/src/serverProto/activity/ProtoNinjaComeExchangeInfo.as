package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaComeExchangeInfo extends Message
   {
      
      public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaComeExchangeInfo.score","score",1 << 3 | WireType.VARINT);
      
      public static const AWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaComeExchangeInfo.award","award",2 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const LIMIT_EXCHANGE_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaComeExchangeInfo.limit_exchange_num","limitExchangeNum",3 << 3 | WireType.VARINT);
      
      public static const EXCHANGED_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaComeExchangeInfo.exchanged_num","exchangedNum",4 << 3 | WireType.VARINT);
       
      private var score$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var award$field:ProtoItemInfo;
      
      private var limit_exchange_num$field:uint;
      
      private var exchanged_num$field:uint;
      
      public function ProtoNinjaComeExchangeInfo()
      {
         super();
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.score$field = new uint();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set score(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.score$field = param1;
      }
      
      public function get score() : uint
      {
         return this.score$field;
      }
      
      public function clearAward() : void
      {
         this.award$field = null;
      }
      
      public function get hasAward() : Boolean
      {
         return this.award$field != null;
      }
      
      public function set award(param1:ProtoItemInfo) : void
      {
         this.award$field = param1;
      }
      
      public function get award() : ProtoItemInfo
      {
         return this.award$field;
      }
      
      public function clearLimitExchangeNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.limit_exchange_num$field = new uint();
      }
      
      public function get hasLimitExchangeNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set limitExchangeNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.limit_exchange_num$field = param1;
      }
      
      public function get limitExchangeNum() : uint
      {
         return this.limit_exchange_num$field;
      }
      
      public function clearExchangedNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.exchanged_num$field = new uint();
      }
      
      public function get hasExchangedNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set exchangedNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.exchanged_num$field = param1;
      }
      
      public function get exchangedNum() : uint
      {
         return this.exchanged_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.score$field);
         }
         if(this.hasAward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award$field);
         }
         if(this.hasLimitExchangeNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.limit_exchange_num$field);
         }
         if(this.hasExchangedNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.exchanged_num$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
