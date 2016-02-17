package chat.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class SetCrossChannelCommand extends NarutoCommand
   {
       
      public var crossServerSocketChannel:Array;
      
      public function SetCrossChannelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CHAT;
      }
   }
}
