package rumorPlot.extPlot.script
{
   import rumorPlot.plot.script.Script;
   import rumorPlot.command.ShockDialogCommand;
   
   public class ShockDialogScript extends Script
   {
       
      public function ShockDialogScript()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:int = int(scriptInfo.paramArg.paramArgVect[0].value);
         var _loc2_:int = int(scriptInfo.paramArg.paramArgVect[1].value);
         var _loc3_:int = int(scriptInfo.paramArg.paramArgVect[2].value);
         new ShockDialogCommand(_loc3_,_loc1_,_loc2_).call();
         super.activate();
      }
      
      override public function deactivate(param1:Boolean = false) : void
      {
         super.deactivate(param1);
      }
   }
}
