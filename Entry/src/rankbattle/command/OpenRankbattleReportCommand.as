package rankbattle.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenRankbattleReportCommand extends NarutoCommand
   {
       
      public function OpenRankbattleReportCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RANKBATTLE;
      }
   }
}
