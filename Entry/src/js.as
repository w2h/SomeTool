package
{
   import flash.utils.getDefinitionByName;
   import flash.external.ExternalInterface;
   
   public class js
   {
      
      public static var object:Object;
       
      public function js()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc3_:Object = getDefinitionByName("com.tencent.morefun.naruto.utils.JSExternal");
         _loc3_.registerCallback(param1,param2);
      }
      
      public static function call(param1:String, ... rest) : *
      {
         return ExternalInterface.call.apply(null,new Array(param1).concat(rest));
      }
      
      public static function get available() : Boolean
      {
         return ExternalInterface.available;
      }
      
      public function autoSetNull() : void
      {
         object = null;
      }
   }
}
