package task.defs
{
   public class TaskConditionTypeDef
   {
      
      public static const CLEAR_DUNGEON:int = 2;
      
      private static var needShowCountTypes:Array;
       
      public function TaskConditionTypeDef()
      {
         super();
      }
      
      public static function needShowCount(param1:int) : Boolean
      {
         return needShowCountTypes.indexOf(param1) != -1;
      }
      
      public static function setNeedShowCountTypes(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:* = 0;
         var _loc4_:* = false;
         needShowCountTypes = [];
         for each(_loc2_ in param1.cfg)
         {
            _loc3_ = _loc2_.@type;
            _loc4_ = String(_loc2_.@needCount) == "1";
            if(_loc4_)
            {
               needShowCountTypes.push(_loc3_);
            }
         }
      }
   }
}
