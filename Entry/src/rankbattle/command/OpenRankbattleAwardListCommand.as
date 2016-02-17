package rankbattle.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenRankbattleAwardListCommand extends NarutoCommand
   {
       
      public function OpenRankbattleAwardListCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RANKBATTLE;
      }
   }
}
