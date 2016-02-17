package rumorPlot.plot.trigger
{
   import rumorPlot.model.info.TriggerInfo;
   
   public class Trigger
   {
       
      protected var triggerInfo:TriggerInfo;
      
      protected var triggerHandler:Function;
      
      protected var runtimeObj:Object;
      
      public var nextNode:int;
      
      public function Trigger()
      {
         super();
      }
      
      public function init(param1:TriggerInfo, param2:Function, param3:Object = null) : void
      {
         this.triggerInfo = param1;
         this.triggerHandler = param2;
         this.runtimeObj = param3;
      }
      
      public function activate() : void
      {
      }
      
      public function deactivate(param1:Boolean) : void
      {
         if(param1)
         {
            this.triggerInfo = null;
            this.triggerHandler = null;
            this.runtimeObj = null;
         }
      }
      
      protected function triggerOK(... rest) : void
      {
         this.triggerHandler && this.triggerHandler.apply(null,rest);
      }
   }
}
