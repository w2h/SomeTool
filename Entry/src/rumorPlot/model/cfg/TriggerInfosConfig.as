package rumorPlot.model.cfg
{
   import flash.utils.Dictionary;
   import rumorPlot.model.info.TriggerInfo;
   
   public class TriggerInfosConfig
   {
       
      public var triggerInfoDict:Dictionary;
      
      public function TriggerInfosConfig()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc4_:TriggerInfo = null;
         this.triggerInfoDict = new Dictionary();
         var _loc2_:XMLList = param1.TriggerInfo;
         var _loc3_:int = _loc2_.length();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = new TriggerInfo();
            _loc4_.decode(_loc2_[_loc5_]);
            this.triggerInfoDict[_loc4_.cmd] = _loc4_;
            _loc5_++;
         }
      }
      
      public function getTriggerByCmd(param1:String) : TriggerInfo
      {
         return this.triggerInfoDict[param1];
      }
      
      public function updateTriggerInfo(param1:TriggerInfo) : void
      {
         var _loc2_:TriggerInfo = this.getTriggerByCmd(param1.cmd);
         param1.update(_loc2_);
      }
      
      public function encode() : XML
      {
         return null;
      }
      
      public function dispose() : void
      {
         this.triggerInfoDict = null;
      }
   }
}
