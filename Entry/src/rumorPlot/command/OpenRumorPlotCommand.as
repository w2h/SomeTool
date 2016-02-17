package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenRumorPlotCommand extends NarutoCommand
   {
       
      public var id:int;
      
      public function OpenRumorPlotCommand(param1:int = 1)
      {
         super();
         this.id = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
