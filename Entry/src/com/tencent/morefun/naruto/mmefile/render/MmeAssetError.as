package com.tencent.morefun.naruto.mmefile.render
{
   public class MmeAssetError extends Error
   {
       
      public function MmeAssetError(param1:* = "", param2:* = 0)
      {
         super(param1,param2);
      }
      
      public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
      }
   }
}
