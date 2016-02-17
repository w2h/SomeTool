package com.tencent.morefun.framework.alert
{
   public class Alert
   {
      
      private static var _isDebug:Boolean;
      
      private static var alertFun:Function;
       
      public function Alert()
      {
         super();
      }
      
      public static function setAlertFun(param1:Function) : void
      {
         alertFun = param1;
      }
      
      public static function set isDebug(param1:Boolean) : void
      {
         _isDebug = param1;
      }
      
      public static function alert(param1:String) : void
      {
         if(!_isDebug)
         {
            alertFun(param1);
         }
      }
   }
}
