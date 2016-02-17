package serverProto.blackMarket
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.WritingBuffer;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   
   public final class ProtoBlackMarketOpenRequest extends Message
   {
       
      public function ProtoBlackMarketOpenRequest()
      {
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc3_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc3_ = ReadUtils.read$TYPE_UINT32(param1);
            if(false?0:0)
            {
            }
            super.readUnknown(param1,_loc3_);
         }
      }
   }
}
