package com.tencent.morefun.naruto.util
{
   public class PathUtil
   {
      
      private static var _root:String = "";
       
      public function PathUtil()
      {
         super();
      }
      
      public static function get root() : String
      {
         return _root;
      }
      
      public static function set root(param1:String) : void
      {
         _root = param1;
      }
      
      public static function set loaderUrl(param1:String) : void
      {
         _root = param1;
         var _loc2_:String = _root.indexOf("/") != -1?"/":"\\";
         while(_root.lastIndexOf(_loc2_) != _root.length - 1)
         {
            _root = _root.substr(0,-1);
         }
      }
      
      public static function isAbsolutePath(param1:String) : Boolean
      {
         var param1:String = param1 || "";
         if(param1.toLowerCase().substr(0,7) == "http://" || param1.toLowerCase().substr(0,8) == "file:///")
         {
            return true;
         }
         return false;
      }
      
      public static function getAbsolutePath(param1:String) : String
      {
         var param1:String = param1 || "";
         if(isAbsolutePath(param1))
         {
            return param1;
         }
         return _root + param1;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
