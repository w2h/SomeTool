package task.commands
{
   public class OpenTaskReceivePanelCommand extends TaskBaseCommand
   {
       
      public var taskId:int;
      
      public function OpenTaskReceivePanelCommand(param1:int)
      {
         super();
         this.taskId = param1;
      }
   }
}
