package com.tencent.morefun.naruto.util
{
   public class StringUtils
   {
       
      public function StringUtils()
      {
         super();
      }
      
      public static function getStringLength(param1:String) : int
      {
         var _loc4_:* = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1.charCodeAt(_loc3_).toString(2).length > 7?2:1;
            _loc2_ = _loc2_ + _loc4_;
            _loc3_++;
         }
         return _loc2_;
      }
   }
}
