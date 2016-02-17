package worldBoss.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class RevivalReqCommand extends NarutoCommand
   {
       
      public function RevivalReqCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD_BOSS;
      }
   }
}
