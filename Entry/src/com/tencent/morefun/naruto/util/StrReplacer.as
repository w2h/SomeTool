package com.tencent.morefun.naruto.util
{
   public class StrReplacer
   {
      
      public static const MAGIC_CHAR:String = "%";
      
      public static const FIRST_MAGIC_CHAR_INDEX:uint = 1;
       
      public function StrReplacer()
      {
         super();
         throw new Error(StrReplacer + " can not be instantiated.");
      }
      
      public static function replace(param1:String, param2:Object) : String
      {
         var _loc3_:uint = 0;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(param1 == null || param2 == null)
         {
            return null;
         }
         if(param2 is Array)
         {
            _loc3_ = FIRST_MAGIC_CHAR_INDEX;
            _loc4_ = param1;
            _loc5_ = param2.length;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc4_ = _loc4_.replace(MAGIC_CHAR + _loc3_,param2[_loc6_]);
               _loc3_++;
               _loc6_++;
            }
            return _loc4_;
         }
         return param1.replace(MAGIC_CHAR + FIRST_MAGIC_CHAR_INDEX,String(param2));
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
