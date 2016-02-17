package user.command
{
   import serverProto.user.ProtoTransfigurationInfo;
   
   public class RequestGetTransfigurationInfoCommand extends BaseUserCommand
   {
       
      public var info:ProtoTransfigurationInfo;
      
      public function RequestGetTransfigurationInfoCommand()
      {
         super();
      }
   }
}
