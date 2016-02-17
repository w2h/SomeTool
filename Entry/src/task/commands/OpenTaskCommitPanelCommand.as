package task.commands
{
   public class OpenTaskCommitPanelCommand extends TaskBaseCommand
   {
       
      public var taskId:int;
      
      public function OpenTaskCommitPanelCommand(param1:int)
      {
         super();
         this.taskId = param1;
      }
   }
}
