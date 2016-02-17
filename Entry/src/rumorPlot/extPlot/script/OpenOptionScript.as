package rumorPlot.extPlot.script
{
   import rumorPlot.plot.script.Script;
   import rumorPlot.command.RumorPlotOptionCommand;
   
   public class OpenOptionScript extends Script
   {
       
      public function OpenOptionScript()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:String = scriptInfo.paramArg.paramArgVect[0].value;
         var _loc2_:String = scriptInfo.paramArg.paramArgVect[1].value;
         var _loc3_:Array = _loc1_.split("|");
         var _loc4_:Array = _loc2_.split("|");
         new RumorPlotOptionCommand(RumorPlotOptionCommand.OPEN,_loc3_,_loc4_).call();
         super.activate();
      }
      
      override public function deactivate(param1:Boolean = false) : void
      {
         super.deactivate(param1);
      }
   }
}
