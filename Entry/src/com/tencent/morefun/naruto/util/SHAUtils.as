package com.tencent.morefun.naruto.util
{
   import flash.utils.ByteArray;
   import com.adobe.crypto.SHA1;
   
   public class SHAUtils
   {
       
      public function SHAUtils()
      {
         super();
      }
      
      public static function hashBytes(param1:ByteArray) : String
      {
         return SHA1.hashBytes(param1);
      }
   }
}
