package ui
{
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class GlobelUIManager extends EventDispatcher
   {
      
      private static var busyHandler:Function;
      
      private static var systemLoadHanlder:Function;
      
      private static var systemAlterHandler:Function;
      
      private static var commondHanlder:Function;
       
      public function GlobelUIManager(param1:IEventDispatcher = null)
      {
         super(param1);
      }
      
      public static function setSystemLoadHandler(param1:Function) : void
      {
         systemLoadHanlder = param1;
      }
      
      public static function setCommondLoadingHandler(param1:Function) : void
      {
         commondHanlder = param1;
      }
      
      public static function setBusyHandler(param1:Function) : void
      {
         busyHandler = param1;
      }
      
      public static function setSystemAlter(param1:Function) : void
      {
         systemAlterHandler = param1;
      }
      
      public static function showSystemAlter(param1:String) : void
      {
         systemLoadHanlder(param1,true);
      }
      
      public static function hideSystemAlter() : void
      {
         systemLoadHanlder(false);
      }
      
      public static function showSystemLoading() : void
      {
         systemLoadHanlder(true);
      }
      
      public static function hideSystemLoading() : void
      {
         systemLoadHanlder(false);
      }
      
      public static function showBusy() : void
      {
         busyHandler(true);
      }
      
      public static function hideBusy() : void
      {
         busyHandler(false);
      }
   }
}
