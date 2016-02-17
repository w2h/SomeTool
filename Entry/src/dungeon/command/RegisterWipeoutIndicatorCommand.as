package dungeon.command
{
   import RSModel.command.RSModelCommand;
   import dungeon.proxy.IWipeoutIndicatorClient;
   
   public class RegisterWipeoutIndicatorCommand extends RSModelCommand
   {
       
      public var client:IWipeoutIndicatorClient;
      
      public function RegisterWipeoutIndicatorCommand(param1:IWipeoutIndicatorClient)
      {
         super();
         this.client = param1;
      }
   }
}
