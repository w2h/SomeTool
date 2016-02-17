package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class PlotActiviteCommand extends NarutoCommand
   {
      
      public static const START:int = 0;
      
      public static const END:int = 1;
       
      public var plotID:int;
      
      public var type:int;
      
      public function PlotActiviteCommand(param1:int, param2:int = 0)
      {
         super();
         this.plotID = param1;
         this.type = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
