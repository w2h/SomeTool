package rumorPlot.extPlot.script
{
   import rumorPlot.plot.script.Script;
   import rumorPlot.command.RumorStartBattleCommand;
   
   public class StartBattleScript extends Script
   {
       
      public function StartBattleScript()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:int = int(scriptInfo.paramArg.paramArgVect[0].value);
         new RumorStartBattleCommand(_loc1_).call();
         super.activate();
      }
      
      override public function deactivate(param1:Boolean = false) : void
      {
         super.deactivate(param1);
      }
   }
}
