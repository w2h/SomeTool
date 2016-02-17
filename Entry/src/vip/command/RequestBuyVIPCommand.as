package vip.command
{
   import RSModel.command.RSModelCommand;
   
   public class RequestBuyVIPCommand extends RSModelCommand
   {
       
      public var level:uint;
      
      public function RequestBuyVIPCommand(param1:uint)
      {
         super();
         this.level = param1;
      }
   }
}
