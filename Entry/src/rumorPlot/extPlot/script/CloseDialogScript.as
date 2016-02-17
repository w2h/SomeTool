package rumorPlot.extPlot.script
{
   import rumorPlot.plot.script.Script;
   import rumorPlot.command.RumorPlotDialogCommand;
   
   public class CloseDialogScript extends Script
   {
       
      public function CloseDialogScript()
      {
         super();
      }
      
      override public function activate() : void
      {
         new RumorPlotDialogCommand(RumorPlotDialogCommand.CLOSE).call();
         super.activate();
      }
      
      override public function deactivate(param1:Boolean = false) : void
      {
         super.deactivate(param1);
      }
   }
}
