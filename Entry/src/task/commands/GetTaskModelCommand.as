package task.commands
{
   import task.models.TaskModel;
   
   public class GetTaskModelCommand extends TaskBaseCommand
   {
       
      public var taskModel:TaskModel;
      
      public function GetTaskModelCommand()
      {
         super();
      }
   }
}
