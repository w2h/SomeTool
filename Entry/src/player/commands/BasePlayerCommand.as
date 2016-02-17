package player.commands
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class BasePlayerCommand extends NarutoCommand
   {
       
      public function BasePlayerCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PLAYER;
      }
   }
}
