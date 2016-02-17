package serverProto.practice
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetSpeedUpDetailResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoGetSpeedUpDetailResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.practice.ProtoGetSpeedUpDetailResponse.remain_time","remainTime",2 << 3 | WireType.VARINT);
      
      public static const NEED_GOLD_INGOT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.practice.ProtoGetSpeedUpDetailResponse.need_gold_ingot","needGoldIngot",3 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var remain_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var need_gold_ingot$field:uint;
      
      public function ProtoGetSpeedUpDetailResponse()
      {
         super();
      }
      
      public function clearRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.remain_time$field = new uint();
      }
      
      public function get hasRemainTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set remainTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.remain_time$field = param1;
      }
      
      public function get remainTime() : uint
      {
         return this.remain_time$field;
      }
      
      public function clearNeedGoldIngot() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.need_gold_ingot$field = new uint();
      }
      
      public function get hasNeedGoldIngot() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set needGoldIngot(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.need_gold_ingot$field = param1;
      }
      
      public function get needGoldIngot() : uint
      {
         return this.need_gold_ingot$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_time$field);
         }
         if(this.hasNeedGoldIngot)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.need_gold_ingot$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
