package worldBoss.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class GetWorldBossStatusCommand extends NarutoCommand
   {
       
      public function GetWorldBossStatusCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD_BOSS;
      }
   }
}
