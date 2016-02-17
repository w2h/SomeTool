package rumorPlot.model.cfg
{
   import flash.utils.Dictionary;
   import rumorPlot.model.info.ConditionInfo;
   
   public class ConditionInfosConfig
   {
       
      public var conditionInfoDict:Dictionary;
      
      public function ConditionInfosConfig()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc4_:ConditionInfo = null;
         this.conditionInfoDict = new Dictionary();
         var _loc2_:XMLList = param1.ConditionInfo;
         var _loc3_:int = _loc2_.length();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = new ConditionInfo();
            _loc4_.decode(_loc2_[_loc5_]);
            this.conditionInfoDict[_loc4_.id] = _loc4_;
            _loc5_++;
         }
      }
      
      public function getConditionByID(param1:int) : ConditionInfo
      {
         return this.conditionInfoDict[param1];
      }
      
      public function updateConditionInfo(param1:ConditionInfo) : void
      {
         var _loc2_:ConditionInfo = this.getConditionByID(param1.id);
         param1.update(_loc2_);
      }
      
      public function encode() : XML
      {
         return null;
      }
      
      public function dispose() : void
      {
         this.conditionInfoDict = null;
      }
   }
}
