package serverProto.blackMarket
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBlackMarketExchangeJadeResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.blackMarket.ProtoBlackMarketExchangeJadeResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BLACK_MARKET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.blackMarket.ProtoBlackMarketExchangeJadeResponse.black_market_info","blackMarketInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoBlackMarketInfo);
      
      public static const JADE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.blackMarket.ProtoBlackMarketExchangeJadeResponse.jade_id","jadeId",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var black_market_info$field:serverProto.blackMarket.ProtoBlackMarketInfo;
      
      private var jade_id$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoBlackMarketExchangeJadeResponse()
      {
         super();
      }
      
      public function clearBlackMarketInfo() : void
      {
         this.black_market_info$field = null;
      }
      
      public function get hasBlackMarketInfo() : Boolean
      {
         return this.black_market_info$field != null;
      }
      
      public function set blackMarketInfo(param1:serverProto.blackMarket.ProtoBlackMarketInfo) : void
      {
         this.black_market_info$field = param1;
      }
      
      public function get blackMarketInfo() : serverProto.blackMarket.ProtoBlackMarketInfo
      {
         return this.black_market_info$field;
      }
      
      public function clearJadeId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.jade_id$field = new int();
      }
      
      public function get hasJadeId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set jadeId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.jade_id$field = param1;
      }
      
      public function get jadeId() : int
      {
         return this.jade_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasBlackMarketInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.black_market_info$field);
         }
         if(this.hasJadeId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.jade_id$field);
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
