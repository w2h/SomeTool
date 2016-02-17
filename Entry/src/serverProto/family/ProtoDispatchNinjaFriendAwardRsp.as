package serverProto.family
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
   
   public final class ProtoDispatchNinjaFriendAwardRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchNinjaFriendAwardRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const REMAIN_AWARD_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchNinjaFriendAwardRsp.remain_award_count","remainAwardCount",2 << 3 | WireType.VARINT);
      
      public static const DISPATCH_RECORD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchNinjaFriendAwardRsp.dispatch_record","dispatchRecord",3 << 3 | WireType.LENGTH_DELIMITED,ProtoDispatchRecord);
      
      public static const AWARD_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchNinjaFriendAwardRsp.award_coin","awardCoin",4 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var remain_award_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.family.ProtoDispatchRecord")]
      public var dispatchRecord:Array;
      
      private var award_coin$field:uint;
      
      public function ProtoDispatchNinjaFriendAwardRsp()
      {
         this.dispatchRecord = [];
         super();
      }
      
      public function clearRemainAwardCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.remain_award_count$field = new uint();
      }
      
      public function get hasRemainAwardCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set remainAwardCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.remain_award_count$field = param1;
      }
      
      public function get remainAwardCount() : uint
      {
         return this.remain_award_count$field;
      }
      
      public function clearAwardCoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.award_coin$field = new uint();
      }
      
      public function get hasAwardCoin() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set awardCoin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.award_coin$field = param1;
      }
      
      public function get awardCoin() : uint
      {
         return this.award_coin$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasRemainAwardCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_award_count$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.dispatchRecord.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.dispatchRecord[_loc2_]);
            _loc2_++;
         }
         if(this.hasAwardCoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.award_coin$field);
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
