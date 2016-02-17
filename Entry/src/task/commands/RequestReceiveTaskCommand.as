package task.commands
{
   import RSModel.command.RSModelCommand;
   
   public class RequestReceiveTaskCommand extends RSModelCommand
   {
       
      public var id:int;
      
      public function RequestReceiveTaskCommand(param1:int)
      {
         super();
         this.id = param1;
      }
   }
}
