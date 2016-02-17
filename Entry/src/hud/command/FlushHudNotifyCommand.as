package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import server.SocketProtocol;
   import def.PluginDef;
   
   public class FlushHudNotifyCommand extends Command
   {
       
      public var flash:Vector.<SocketProtocol>;
      
      public var popup:Vector.<SocketProtocol>;
      
      public var system:Vector.<SocketProtocol>;
      
      public var open:Vector.<SocketProtocol>;
      
      public function FlushHudNotifyCommand(param1:Vector.<SocketProtocol>, param2:Vector.<SocketProtocol>, param3:Vector.<SocketProtocol>, param4:Vector.<SocketProtocol>)
      {
         super();
         this.system = param1;
         this.popup = param2;
         this.flash = param3;
         this.open = param4;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
