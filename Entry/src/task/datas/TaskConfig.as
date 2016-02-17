package task.datas
{
   import flash.utils.Dictionary;
   import flash.utils.ByteArray;
   import cfgData.CFGDataLibs;
   import cfgData.CFGDataEnum;
   
   public class TaskConfig
   {
      
      private static var _instance:task.datas.TaskConfig;
       
      private var dict:Dictionary;
      
      public function TaskConfig()
      {
         this.dict = new Dictionary();
         super();
      }
      
      public static function get instance() : task.datas.TaskConfig
      {
         if(_instance == null)
         {
            _instance = new task.datas.TaskConfig();
         }
         return _instance;
      }
      
      public function setData(param1:ByteArray) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:TaskCfg = null;
         var _loc2_:Dictionary = CFGDataLibs.parseData(param1,CFGDataEnum.ENUM_TaskTransferCFG);
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = new TaskCfg();
            _loc4_.setData(_loc3_);
            this.dict[_loc3_.id] = _loc4_;
         }
      }
      
      public function getTaskCfg(param1:uint) : TaskCfg
      {
         return this.dict[param1];
      }
   }
}
