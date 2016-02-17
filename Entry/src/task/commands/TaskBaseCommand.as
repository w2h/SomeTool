package task.commands
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class TaskBaseCommand extends NarutoCommand
   {
       
      public function TaskBaseCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.TASK;
      }
   }
}
