package serverProto.immolation
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
   
   public final class QueryImmolationSelfInfoResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.immolation.QueryImmolationSelfInfoResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const IMMOLATION_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.immolation.QueryImmolationSelfInfoResp.immolation_count","immolationCount",2 << 3 | WireType.VARINT);
      
      public static const REST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.immolation.QueryImmolationSelfInfoResp.rest","rest",3 << 3 | WireType.VARINT);
      
      public static const ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.immolation.QueryImmolationSelfInfoResp.item_info","itemInfo",4 << 3 | WireType.LENGTH_DELIMITED,ChaKeLaItemInfo);
       
      public var ret:ProtoRetInfo;
      
      private var immolation_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var rest$field:uint;
      
      [ArrayElementType("serverProto.immolation.ChaKeLaItemInfo")]
      public var itemInfo:Array;
      
      public function QueryImmolationSelfInfoResp()
      {
         this.itemInfo = [];
         super();
      }
      
      public function clearImmolationCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.immolation_count$field = new uint();
      }
      
      public function get hasImmolationCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set immolationCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.immolation_count$field = param1;
      }
      
      public function get immolationCount() : uint
      {
         return this.immolation_count$field;
      }
      
      public function clearRest() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.rest$field = new uint();
      }
      
      public function get hasRest() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set rest(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.rest$field = param1;
      }
      
      public function get rest() : uint
      {
         return this.rest$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasImmolationCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.immolation_count$field);
         }
         if(this.hasRest)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.rest$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.itemInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.itemInfo[_loc2_]);
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
