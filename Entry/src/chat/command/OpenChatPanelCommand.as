package chat.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenChatPanelCommand extends NarutoCommand
   {
       
      public function OpenChatPanelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CHAT;
      }
   }
}
