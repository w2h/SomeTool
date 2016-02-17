package worldBoss.command
{
   import base.NarutoCommand;
   import worldBoss.model.data.WorldBossRewardInfo;
   import def.PluginDef;
   
   public class ShowBossRewardCommand extends NarutoCommand
   {
       
      public var data:WorldBossRewardInfo;
      
      public function ShowBossRewardCommand(param1:WorldBossRewardInfo)
      {
         super();
         this.data = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD_BOSS;
      }
   }
}
