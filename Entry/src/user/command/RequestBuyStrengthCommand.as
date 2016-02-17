package user.command
{
   public class RequestBuyStrengthCommand extends BaseUserCommand
   {
       
      public var type:int;
      
      public function RequestBuyStrengthCommand(param1:int)
      {
         super();
         this.type = param1;
      }
   }
}
