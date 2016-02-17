package com.tencent.morefun.naruto.utils
{
   import flash.external.ExternalInterface;
   
   public class JSExternal
   {
       
      public function JSExternal()
      {
         super();
      }
      
      public static function registerCallback(param1:String, param2:Function) : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(param1,param2);
         }
      }
      
      public static function call(param1:String, ... rest) : *
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call.apply(null,[param1].concat(rest));
         }
      }
   }
}
