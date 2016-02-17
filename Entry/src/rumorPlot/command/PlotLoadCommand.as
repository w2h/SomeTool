package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class PlotLoadCommand extends NarutoCommand
   {
       
      public var plotID:int;
      
      public function PlotLoadCommand(param1:int)
      {
         super();
         this.plotID = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
