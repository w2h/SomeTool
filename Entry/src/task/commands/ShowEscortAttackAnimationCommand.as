package task.commands
{
   import server.SocketProtocol;
   import com.tencent.morefun.framework.base.Command;
   
   public class ShowEscortAttackAnimationCommand extends TaskBaseCommand
   {
       
      public var battleEndDoingHref:String;
      
      public var protocol:SocketProtocol;
      
      public var command:Command;
      
      public function ShowEscortAttackAnimationCommand()
      {
         super();
      }
   }
}
