package npc.commands
{
   public class CloseTaskNpcDialogCommand extends BaseNpcCommand
   {
       
      public var taskNpcId:uint;
      
      public function CloseTaskNpcDialogCommand(param1:uint = 0)
      {
         super();
         this.taskNpcId = param1;
      }
   }
}
