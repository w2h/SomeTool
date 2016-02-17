package com.tencent.morefun.naruto.util
{
   import flash.utils.ByteArray;
   
   public class ByteArrayReader
   {
       
      public function ByteArrayReader()
      {
         super();
      }
      
      public static function read2Binary(param1:ByteArray) : void
      {
         var _loc4_:* = 0;
         var _loc2_:String = "";
         var _loc3_:String = "";
         param1.position = 0;
         while(param1.bytesAvailable)
         {
            _loc4_ = param1.readByte();
            _loc2_ = _loc2_ + ((_loc4_ & 128) == 0?"0":"1");
            _loc2_ = _loc2_ + ((_loc4_ & 64) == 0?"0":"1");
            _loc2_ = _loc2_ + ((_loc4_ & 32) == 0?"0":"1");
            _loc2_ = _loc2_ + ((_loc4_ & 16) == 0?"0":"1");
            _loc2_ = _loc2_ + ((_loc4_ & 8) == 0?"0":"1");
            _loc2_ = _loc2_ + ((_loc4_ & 4) == 0?"0":"1");
            _loc2_ = _loc2_ + ((_loc4_ & 2) == 0?"0":"1");
            _loc2_ = _loc2_ + ((_loc4_ & 1) == 0?"0":"1");
            _loc2_ = _loc2_ + "  ";
         }
         param1.position = 0;
      }
      
      public static function read16Binary(param1:ByteArray, param2:Array = null) : void
      {
         var _loc3_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:String = "";
         var _loc5_:String = "";
         param1.position = 0;
         while(param1.bytesAvailable)
         {
            _loc6_ = param1.readUnsignedByte();
            _loc5_ = _loc6_.toString(16).toLocaleUpperCase();
            if(_loc5_.length == 1)
            {
               _loc5_ = "0" + _loc5_;
            }
            if(param2 && param2.indexOf(param1.position) != -1)
            {
               _loc5_ = _loc5_ + "|";
            }
            _loc4_ = _loc4_ + (_loc5_ + " ");
            _loc3_ = _loc3_ + 1;
            if(_loc3_ == 16)
            {
               _loc3_ = 0;
               _loc4_ = _loc4_ + "  ";
            }
         }
         param1.position = 0;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
