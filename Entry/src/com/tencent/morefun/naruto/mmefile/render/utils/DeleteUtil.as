package com.tencent.morefun.naruto.mmefile.render.utils
{
   public class DeleteUtil
   {
       
      public function DeleteUtil()
      {
         super();
      }
      
      public static function deleteOjbect(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         for each(_loc3_ in _loc2_)
         {
            delete param1[_loc3_];
         }
         _loc2_.length = 0;
         _loc2_ = null;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
