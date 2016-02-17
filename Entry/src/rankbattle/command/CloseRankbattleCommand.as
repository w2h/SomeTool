package rankbattle.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class CloseRankbattleCommand extends NarutoCommand
   {
       
      public function CloseRankbattleCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RANKBATTLE;
      }
   }
}
