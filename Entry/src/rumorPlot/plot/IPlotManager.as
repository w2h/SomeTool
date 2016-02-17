package rumorPlot.plot
{
   public interface IPlotManager
   {
       
      function activePlot(param1:int, param2:XML = null) : void;
      
      function deactivePlot(param1:int) : void;
      
      function isActivePlot(param1:int) : Boolean;
   }
}
