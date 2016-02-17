package task.commands
{
   public class OpenKakashiTaskPanelCommand extends TaskBaseCommand
   {
       
      public var tab:int;
      
      public function OpenKakashiTaskPanelCommand(param1:int)
      {
         super();
         this.tab = param1;
      }
   }
}
