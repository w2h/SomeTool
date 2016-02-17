package util
{
   import flash.utils.ByteArray;
   
   public function decryptSWF(param1:ByteArray) : ByteArray
   {
      var _loc5_:* = 0;
      var _loc7_:uint = 0;
      if(param1)
      {
         param1.position = 0;
      }
      if(!param1 || param1.bytesAvailable <= 8)
      {
         return param1;
      }
      var _loc2_:ByteArray = new ByteArray();
      var _loc3_:ByteArray = new ByteArray();
      var _loc4_:ByteArray = new ByteArray();
      param1.position = 0;
      if(param1.readMultiByte(3,"utf-8") != "ZWS")
      {
         return param1;
      }
      if(param1.readUnsignedByte())
      {
         return param1;
      }
      if(~param1.readUnsignedInt())
      {
         return param1;
      }
      var _loc6_:uint = 1;
      _loc5_ = 0;
      while(_loc5_ < 11)
      {
         if(_loc6_)
         {
            _loc3_.writeByte(param1.readUnsignedByte());
         }
         else
         {
            _loc4_.writeByte(param1.readUnsignedByte());
         }
         _loc6_ = _loc6_ ^ 1;
         _loc5_++;
      }
      _loc3_.position = 0;
      while(_loc3_.bytesAvailable)
      {
         _loc7_ = _loc3_.readUnsignedByte() & 15 | (_loc3_.readUnsignedByte() & 15) << 4;
         _loc2_.writeByte(_loc7_);
      }
      _loc2_.writeBytes(_loc4_);
      var _loc8_:uint = Math.min(128,param1.bytesAvailable);
      _loc5_ = 0;
      while(_loc5_ < _loc8_)
      {
         if(_loc5_ & 1)
         {
            _loc2_.writeByte(~param1.readUnsignedByte());
         }
         else
         {
            _loc2_.writeByte(param1.readUnsignedByte());
         }
         _loc5_++;
      }
      _loc2_.writeBytes(param1,param1.position);
      return _loc2_;
   }
}
