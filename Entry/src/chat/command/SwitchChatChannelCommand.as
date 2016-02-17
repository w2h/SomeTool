package chat.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class SwitchChatChannelCommand extends NarutoCommand
   {
       
      public var channel:int;
      
      public var data:Object;
      
      public function SwitchChatChannelCommand(param1:int = 1, param2:Object = null)
      {
         super();
         this.channel = param1;
         this.data = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CHAT;
      }
   }
}
