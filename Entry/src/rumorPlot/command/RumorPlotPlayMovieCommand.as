package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class RumorPlotPlayMovieCommand extends NarutoCommand
   {
       
      public var movieName:String;
      
      public function RumorPlotPlayMovieCommand(param1:String)
      {
         super();
         this.movieName = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
