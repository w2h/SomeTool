package chat.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class EnterUniverseFuzionChatCommand extends NarutoCommand
   {
       
      public function EnterUniverseFuzionChatCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CHAT;
      }
   }
}
