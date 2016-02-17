package player.commands
{
   public class RequestGetPlayerViewListCommand extends BasePlayerCommand
   {
       
      public var isChangeScene:Boolean;
      
      public function RequestGetPlayerViewListCommand(param1:Boolean = false)
      {
         super();
         this.isChangeScene = param1;
      }
   }
}
