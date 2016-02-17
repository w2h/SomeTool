package base
{
   import server.SocketProtocol;
   
   public class SetupPluginByServerCommand extends NarutoCommand
   {
       
      public var protocol:SocketProtocol;
      
      public function SetupPluginByServerCommand(param1:SocketProtocol)
      {
         super();
      }
   }
}
