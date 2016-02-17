package task.commands
{
   public class OpenTaskPanelCommand extends TaskBaseCommand
   {
       
      public var tab:int;
      
      public var taskId:int;
      
      public var taskName:String;
      
      public function OpenTaskPanelCommand(param1:int = 1, param2:int = 0, param3:String = null)
      {
         super();
         this.tab = param1;
         this.taskId = param2;
         this.taskName = param3;
      }
   }
}
