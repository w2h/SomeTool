package com.tencent.morefun.naruto.util
{
   import flash.utils.Dictionary;
   
   public class CollectionClearUtil
   {
       
      public function CollectionClearUtil()
      {
         super();
      }
      
      public static function clearDictionary(param1:Dictionary, param2:String = null) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Array = [];
         for(_loc3_ in param1)
         {
            _loc4_.push(_loc3_);
         }
         for each(_loc3_ in _loc4_)
         {
            if(param2 != null && param1[_loc3_]["hasOwnProperty"]("disposeFunc"))
            {
               param1[_loc3_][param2]();
            }
            delete param1[_loc3_];
         }
      }
      
      public static function clearList(param1:Array, param2:String = null) : void
      {
         var _loc3_:* = undefined;
         if(param2 != null)
         {
            for each(_loc3_ in param1)
            {
               _loc3_[param2]();
            }
         }
         param1.splice(0,param1.length);
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
