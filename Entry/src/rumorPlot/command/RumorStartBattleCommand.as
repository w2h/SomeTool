package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class RumorStartBattleCommand extends NarutoCommand
   {
       
      public var battleID:int;
      
      public function RumorStartBattleCommand(param1:int)
      {
         super();
         this.battleID = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
