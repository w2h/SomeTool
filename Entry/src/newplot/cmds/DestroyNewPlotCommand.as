package newplot.cmds
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class DestroyNewPlotCommand extends NarutoCommand
   {
       
      public var id:int;
      
      public function DestroyNewPlotCommand(param1:int)
      {
         super();
         this.id = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NEWPLOT;
      }
   }
}
