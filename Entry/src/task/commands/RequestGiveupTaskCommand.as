package task.commands
{
   import RSModel.command.RSModelCommand;
   
   public class RequestGiveupTaskCommand extends RSModelCommand
   {
       
      public var id:int;
      
      public function RequestGiveupTaskCommand(param1:int)
      {
         super();
         this.id = param1;
      }
   }
}
