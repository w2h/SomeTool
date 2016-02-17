package RSModel.command
{
   import com.tencent.morefun.framework.base.Command;
   import task.datas.TaskInfo;
   import def.PluginDef;
   
   public class RequestArenaTaskDownGradeCommand extends Command
   {
       
      public var taskId:int;
      
      public var newTaskInfo:TaskInfo;
      
      public function RequestArenaTaskDownGradeCommand(param1:int)
      {
         super();
         this.taskId = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
