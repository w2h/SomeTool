package task.utils
{
   import task.models.TaskModel;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import def.ModelDef;
   
   public class TaskUtils
   {
       
      public function TaskUtils()
      {
         super();
      }
      
      public static function get model() : TaskModel
      {
         return Facade.getInstance().pluginManager.retrieveModel(ModelDef.TASK) as TaskModel;
      }
   }
}
