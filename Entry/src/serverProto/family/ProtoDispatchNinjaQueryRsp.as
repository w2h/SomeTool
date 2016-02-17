package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDispatchNinjaQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchNinjaQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TASKS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchNinjaQueryRsp.tasks","tasks",2 << 3 | WireType.LENGTH_DELIMITED,ProtoDispatchTask);
      
      public static const REMAIN_AWARD_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchNinjaQueryRsp.remain_award_count","remainAwardCount",3 << 3 | WireType.VARINT);
      
      public static const DISPATCH_RECORD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchNinjaQueryRsp.dispatch_record","dispatchRecord",4 << 3 | WireType.LENGTH_DELIMITED,ProtoDispatchRecord);
       
      public var ret:ProtoRetInfo;
      
      [ArrayElementType("serverProto.family.ProtoDispatchTask")]
      public var tasks:Array;
      
      private var remain_award_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.family.ProtoDispatchRecord")]
      public var dispatchRecord:Array;
      
      public function ProtoDispatchNinjaQueryRsp()
      {
         this.tasks = [];
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
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         var _loc2_:uint = 0;
         while(_loc2_ < this.tasks.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.tasks[_loc2_]);
            _loc2_++;
         }
         if(this.hasRemainAwardCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_award_count$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.dispatchRecord.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.dispatchRecord[_loc3_]);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
