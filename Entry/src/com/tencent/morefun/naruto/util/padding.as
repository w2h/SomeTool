package com.tencent.morefun.naruto.util
{
   public function padding(param1:*, param2:uint = 2, param3:String = "0", param4:Boolean = false) : String
   {
      var param3:String = param3 || "0";
      param3 = param3.charAt(0);
      var _loc5_:String = String(param1);
      var _loc6_:uint = 0;
      var _loc7_:int = 0;
      while(_loc7_ < _loc5_.length)
      {
         _loc6_ = _loc6_ + (_loc5_.charCodeAt(_loc7_) & ~255?2:1);
         _loc7_++;
      }
      if(param4)
      {
         while(_loc6_++ < param2)
         {
            _loc5_ = _loc5_ + param3;
         }
      }
      else
      {
         while(_loc6_++ < param2)
         {
            _loc5_ = param3 + _loc5_;
         }
      }
      return _loc5_;
   }
}
