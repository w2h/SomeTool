package serverProto.blackMarket
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBlackMarketBuyResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.blackMarket.ProtoBlackMarketBuyResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BLACK_MARKET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.blackMarket.ProtoBlackMarketBuyResponse.black_market_info","blackMarketInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoBlackMarketInfo);
      
      public static const REWARD_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.blackMarket.ProtoBlackMarketBuyResponse.reward_info","rewardInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      public var ret:ProtoRetInfo;
      
      private var black_market_info$field:serverProto.blackMarket.ProtoBlackMarketInfo;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var rewardInfo:Array;
      
      public function ProtoBlackMarketBuyResponse()
      {
         this.rewardInfo = [];
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
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasBlackMarketInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.black_market_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.rewardInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rewardInfo[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
