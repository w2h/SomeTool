package battle.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class PrewarReadyAckCommand extends NarutoCommand
   {
       
      public function PrewarReadyAckCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
