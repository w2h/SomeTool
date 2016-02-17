package worldBoss.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class GetWorldBossListCommand extends NarutoCommand
   {
       
      public function GetWorldBossListCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD_BOSS;
      }
   }
}
