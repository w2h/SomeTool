package ui
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import flash.display.DisplayObject;
   
   public class LoadingManager extends EventDispatcher
   {
      
      private static var _isLoading:Boolean;
      
      private static var _hideLoadingCallBackMap:Dictionary = new Dictionary();
      
      private static var loadingView:DisplayObject;
      
      private static var isLockFullLoading:Boolean;
       
      public function LoadingManager()
      {
         super();
      }
      
      public static function isLoading() : Boolean
      {
         return _isLoading;
      }
      
      public static function hideLoadingCallBack(param1:Function, param2:Object) : void
      {
      }
      
      public static function setLoadingView(param1:DisplayObject) : void
      {
      }
      
      public static function showWaitLoading() : void
      {
      }
      
      public static function hideWaitLoading() : void
      {
      }
      
      public static function showCountDownText() : void
      {
      }
      
      public static function hideCountDownText() : void
      {
      }
      
      public static function setCountDownInfo(param1:String) : void
      {
      }
      
      public static function showWaitLoadingText() : void
      {
      }
      
      public static function hideWaitLoadingText() : void
      {
      }
      
      public static function setWaitLoadingInfo(param1:String) : void
      {
      }
      
      public static function showFullLoading() : void
      {
      }
      
      public static function showFirstLoading() : void
      {
      }
      
      public static function hideFirstLoading() : void
      {
      }
      
      public static function set lockFullLoading(param1:Boolean) : void
      {
      }
      
      public static function hideFullLoading() : void
      {
      }
      
      public static function hideTotalText() : void
      {
      }
      
      public static function showLoading(param1:Boolean = true) : void
      {
      }
      
      public static function hideLoading() : void
      {
      }
      
      public static function updateCurrentFile(param1:int) : void
      {
      }
      
      public static function updateFileProgress(param1:int, param2:int) : void
      {
      }
      
      public static function showBusy() : void
      {
      }
      
      public static function showBusyNoIcon() : void
      {
      }
      
      public static function hideBusy() : void
      {
      }
      
      public static function setLoingString(param1:String) : void
      {
      }
      
      public static function setErrorLoingString(param1:String) : void
      {
      }
      
      public static function setLoadingProgress(param1:int, param2:int) : void
      {
      }
      
      private static function callBackFunc() : void
      {
      }
   }
}
