package chat.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class ExitUniverseFuzionChatCommand extends NarutoCommand
   {
       
      public function ExitUniverseFuzionChatCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CHAT;
      }
   }
}
