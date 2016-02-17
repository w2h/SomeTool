package worldBoss.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class GetOutWorldBossMapCommand extends NarutoCommand
   {
       
      public function GetOutWorldBossMapCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD_BOSS;
      }
   }
}
