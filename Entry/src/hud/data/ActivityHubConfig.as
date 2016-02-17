package hud.data
{
   import flash.utils.Dictionary;
   import cfgData.dataStruct.ActivityHubCFG;
   import cfgData.dataStruct.ActivityHubLiteCFG;
   
   public class ActivityHubConfig
   {
      
      private static var _instance:hud.data.ActivityHubConfig;
       
      private var dict:Dictionary;
      
      private var liteDict:Dictionary;
      
      public function ActivityHubConfig()
      {
         super();
      }
      
      public static function get instance() : hud.data.ActivityHubConfig
      {
         if(_instance == null)
         {
            _instance = new hud.data.ActivityHubConfig();
         }
         return _instance;
      }
      
      public function initData(param1:Dictionary, param2:Dictionary) : void
      {
         this.dict = param1;
         this.liteDict = param2;
      }
      
      public function getCfg(param1:int) : ActivityHubCFG
      {
         return this.dict[param1];
      }
      
      public function getCfgByActivityId(param1:int) : Array
      {
         var _loc3_:ActivityHubCFG = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.dict)
         {
            if(_loc3_.aid == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function getLiteCfg(param1:int) : ActivityHubLiteCFG
      {
         var _loc2_:ActivityHubLiteCFG = null;
         for each(_loc2_ in this.liteDict)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getDailyBeginTime(param1:int) : String
      {
         var _loc2_:ActivityHubCFG = this.dict[param1];
         if(_loc2_ && _loc2_.dailyBeginTime)
         {
            return _loc2_.dailyBeginTime.replace(new RegExp("\\((\\d+),(\\d+)\\)"),"$1:$2");
         }
         return null;
      }
      
      public function getDailyBeginTimeByActivityId(param1:int) : String
      {
         var _loc2_:ActivityHubCFG = null;
         for each(_loc2_ in this.dict)
         {
            if(_loc2_.aid == param1)
            {
               return this.getDailyBeginTime(_loc2_.id);
            }
         }
         return null;
      }
      
      public function getDailyEndTime(param1:int) : String
      {
         var _loc2_:ActivityHubCFG = this.dict[param1];
         if(_loc2_ && _loc2_.dailyEndTime)
         {
            return _loc2_.dailyEndTime.replace(new RegExp("\\((\\d+),(\\d+)\\)"),"$1:$2");
         }
         return null;
      }
      
      public function getDailyEndTimeByActivityId(param1:int) : String
      {
         var _loc2_:ActivityHubCFG = null;
         for each(_loc2_ in this.dict)
         {
            if(_loc2_.aid == param1)
            {
               return this.getDailyEndTime(_loc2_.id);
            }
         }
         return null;
      }
   }
}
