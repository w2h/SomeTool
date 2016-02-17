package com.tencent.morefun.naruto.storage
{
   import flash.net.SharedObject;
   import flash.utils.getQualifiedClassName;
   import flash.net.registerClassAlias;
   import flash.utils.getDefinitionByName;
   
   public class Cookie
   {
      
      private static const _cookie:SharedObject = SharedObject.getLocal("naruto");
       
      public function Cookie()
      {
         super();
      }
      
      public static function register(param1:Object) : void
      {
         var _loc2_:String = getQualifiedClassName(param1);
         registerClassAlias("alias." + _loc2_,getDefinitionByName(_loc2_) as Class);
      }
      
      public static function getValue(param1:String) : *
      {
         var _loc2_:Object = _cookie.data[param1];
         return _loc2_?_loc2_.value:null;
      }
      
      public static function setValue(param1:String, param2:Object) : void
      {
         register(param2);
         _cookie.data[param1] = {
            "value":param2,
            "t":new Date().time / 1000 >> 0
         };
      }
      
      public static function clear(param1:String) : void
      {
         if(param1 in _cookie.data)
         {
            delete _cookie.data[param1];
         }
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
