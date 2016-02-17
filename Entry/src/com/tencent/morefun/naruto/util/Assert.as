package com.tencent.morefun.naruto.util
{
   public function Assert(param1:Boolean, param2:String) : Boolean
   {
      if(!param1)
      {
         throw new Error(param2);
      }
      return !param1;
   }
}
