package rumorPlot.plot.base
{
   import rumorPlot.model.info.ConditionGroupInfo;
   import rumorPlot.plot.trigger.Trigger;
   import rumorPlot.plot.condition.Condition;
   import rumorPlot.model.info.TriggerInfo;
   import rumorPlot.model.info.ConditionInfo;
   import rumorPlot.plot.PlotManager;
   
   public class PlotNodeCondition
   {
       
      private var _conditonGroupInfo:ConditionGroupInfo;
      
      private var _plot:rumorPlot.plot.base.Plot;
      
      private var _triggerArr:Array;
      
      private var _conditionArr:Array;
      
      public function PlotNodeCondition(param1:ConditionGroupInfo, param2:rumorPlot.plot.base.Plot)
      {
         var _loc4_:TriggerInfo = null;
         var _loc5_:Trigger = null;
         var _loc7_:ConditionInfo = null;
         var _loc8_:Condition = null;
         super();
         this._conditonGroupInfo = param1;
         this._plot = param2;
         this._triggerArr = [];
         var _loc3_:int = this._conditonGroupInfo.triggerVect?this._conditonGroupInfo.triggerVect.length:0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc4_ = this._conditonGroupInfo.triggerVect[_loc6_];
            _loc5_ = PlotManager.instance.getClsByName(_loc4_.className) as Trigger;
            _loc5_.init(_loc4_,this.triggerHandler);
            _loc5_.nextNode = this._conditonGroupInfo.nextNode;
            this._triggerArr.push(_loc5_);
            _loc6_++;
         }
         this._conditionArr = [];
         _loc3_ = this._conditonGroupInfo.conditionVect?this._conditonGroupInfo.conditionVect.length:0;
         _loc6_ = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = this._conditonGroupInfo.conditionVect[_loc6_];
            _loc8_ = PlotManager.instance.getClsByName(_loc7_.className) as Condition;
            _loc8_.init(_loc7_);
            _loc8_.nextNode = this._conditonGroupInfo.nextNode;
            this._conditionArr.push(_loc8_);
            _loc6_++;
         }
      }
      
      public function activate() : void
      {
         var _loc1_:Trigger = null;
         for each(_loc1_ in this._triggerArr)
         {
            _loc1_.activate();
         }
         if(this._triggerArr == null || !this._triggerArr.length)
         {
            this.triggerHandler();
         }
      }
      
      public function deactivate(param1:Boolean = false) : void
      {
         var _loc2_:Trigger = null;
         var _loc3_:Condition = null;
         for each(_loc2_ in this._triggerArr)
         {
            _loc2_.deactivate(param1);
         }
         for each(_loc3_ in this._conditionArr)
         {
            _loc3_.dispose(param1);
         }
         if(param1)
         {
            this._triggerArr = null;
            this._conditionArr = null;
            this._plot = null;
            this._conditonGroupInfo = null;
         }
      }
      
      private function triggerHandler() : void
      {
         if(this.checkCondition())
         {
            this._conditonGroupInfo.nextNode && this._plot.activateNode(this._conditonGroupInfo.nextNode);
         }
      }
      
      private function checkCondition() : Boolean
      {
         var _loc2_:Condition = null;
         var _loc1_:Boolean = true;
         for each(_loc2_ in this._conditionArr)
         {
            if(!_loc2_.check())
            {
               _loc1_ = false;
               break;
            }
         }
         return _loc1_;
      }
   }
}
