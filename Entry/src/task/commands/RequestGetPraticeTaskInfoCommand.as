package task.commands
{
   import RSModel.command.RSModelCommand;
   
   public class RequestGetPraticeTaskInfoCommand extends RSModelCommand
   {
       
      public var beginTime:uint;
      
      public var endTime:uint;
      
      public var status:int;
      
      public function RequestGetPraticeTaskInfoCommand()
      {
         super();
      }
   }
}
