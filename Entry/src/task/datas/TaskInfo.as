package task.datas
{
   import task.defs.TaskTypeDef;
   import com.tencent.morefun.naruto.util.Assert;
   
   public class TaskInfo
   {
       
      public var cfg:task.datas.TaskCfg;
      
      public var id:int;
      
      public var type:int;
      
      public var state:int;
      
      public var isNew:Boolean;
      
      public var conditions:Array;
      
      public var receiveTime:uint;
      
      public var condState:int;
      
      public function TaskInfo(param1:int)
      {
         super();
         this.id = param1;
         this.cfg = TaskConfig.instance.getTaskCfg(param1);
         this.conditions = [];
         Assert(this.cfg != null,"任务配置中未找到id为" + param1 + "的配置");
      }
      
      public function get sortField() : int
      {
         if(this.type == TaskTypeDef.MAIN)
         {
            return 100;
         }
         return (10 - this.type) * 100;
      }
   }
}
