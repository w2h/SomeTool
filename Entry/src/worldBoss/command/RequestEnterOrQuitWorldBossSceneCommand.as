package worldBoss.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class RequestEnterOrQuitWorldBossSceneCommand extends NarutoCommand
   {
       
      public var type:int;
      
      public function RequestEnterOrQuitWorldBossSceneCommand(param1:int)
      {
         super();
         this.type = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD_BOSS;
      }
   }
}
