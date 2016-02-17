package rumorPlot.extPlot.script
{
   import rumorPlot.plot.script.Script;
   import rumorPlot.command.RumorPlotPlayMovieCommand;
   
   public class PlayMovieScript extends Script
   {
       
      public function PlayMovieScript()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:String = scriptInfo.paramArg.paramArgVect[0].value;
         new RumorPlotPlayMovieCommand(_loc1_).call();
         super.activate();
      }
      
      override public function deactivate(param1:Boolean = false) : void
      {
         super.deactivate(param1);
      }
   }
}
