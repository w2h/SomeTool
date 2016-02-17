package chat.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class SwitchChatUIModeCommand extends Command
   {
       
      public var mode:int;
      
      public function SwitchChatUIModeCommand(param1:int)
      {
         super();
         this.mode = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CHAT;
      }
   }
}
