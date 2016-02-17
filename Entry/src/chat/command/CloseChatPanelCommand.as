package chat.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class CloseChatPanelCommand extends NarutoCommand
   {
       
      public function CloseChatPanelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CHAT;
      }
   }
}
