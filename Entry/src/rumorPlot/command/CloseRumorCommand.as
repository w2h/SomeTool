package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class CloseRumorCommand extends NarutoCommand
   {
      
      public static const TYPE_CLOSE_UI:int = 0;
      
      public static const TYPE_BATTLE_FAILURE:int = 1;
      
      public static const TYPE_PLOT_END:int = 3;
      
      public static const TYPE_CHANGE_SCENE:int = 4;
       
      public var type:int;
      
      public function CloseRumorCommand(param1:int)
      {
         super();
         this.type = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
