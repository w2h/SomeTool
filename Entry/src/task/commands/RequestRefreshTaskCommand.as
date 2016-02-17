package task.commands
{
   import RSModel.command.RSModelCommand;
   
   public class RequestRefreshTaskCommand extends RSModelCommand
   {
       
      public var taskType:int;
      
      public var payType:int;
      
      public var taskId:int;
      
      public function RequestRefreshTaskCommand(param1:int, param2:int = 0, param3:int = 0)
      {
         super();
         this.taskType = param1;
         this.payType = param2;
         this.taskId = param3;
      }
   }
}
