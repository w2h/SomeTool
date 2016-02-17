package rumorPlot.plot.script
{
   import rumorPlot.model.info.ScriptInfo;
   
   public class Script
   {
       
      protected var scriptInfo:ScriptInfo;
      
      protected var runtimeObj:Object;
      
      public var curNode:int;
      
      public function Script()
      {
         super();
      }
      
      public function init(param1:ScriptInfo, param2:Object = null) : void
      {
         this.scriptInfo = param1;
         this.runtimeObj = param2;
      }
      
      public function activate() : void
      {
      }
      
      public function deactivate(param1:Boolean = false) : void
      {
         if(param1)
         {
            this.scriptInfo = null;
            this.runtimeObj = null;
         }
      }
   }
}
