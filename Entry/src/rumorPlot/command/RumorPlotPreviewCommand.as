package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class RumorPlotPreviewCommand extends NarutoCommand
   {
       
      public function RumorPlotPreviewCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
