package team.cmd
{
   public class RequestMemberStateChangeCommand extends TeamBaseCommand
   {
       
      public var newState:int;
      
      public function RequestMemberStateChangeCommand(param1:int)
      {
         super();
         this.newState = param1;
      }
   }
}
