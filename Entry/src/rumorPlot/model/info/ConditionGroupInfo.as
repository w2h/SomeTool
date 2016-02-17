package rumorPlot.model.info
{
   import rumorPlot.model.RumorModel;
   
   public class ConditionGroupInfo
   {
       
      public var nextNode:int;
      
      public var triggerVect:Vector.<rumorPlot.model.info.TriggerInfo>;
      
      public var conditionVect:Vector.<rumorPlot.model.info.ConditionInfo>;
      
      public function ConditionGroupInfo()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc4_:rumorPlot.model.info.TriggerInfo = null;
         var _loc6_:rumorPlot.model.info.ConditionInfo = null;
         this.nextNode = param1.@nextNode;
         var _loc2_:XMLList = param1.TriggerInfo;
         var _loc3_:int = _loc2_.length();
         this.triggerVect = new Vector.<TriggerInfo>();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = new rumorPlot.model.info.TriggerInfo();
            _loc4_.decode(_loc2_[_loc5_]);
            RumorModel.instance.triggerInfosConfig.updateTriggerInfo(_loc4_);
            this.triggerVect.push(_loc4_);
            _loc5_++;
         }
         _loc2_ = param1.ConditionInfo;
         _loc3_ = _loc2_.length();
         this.conditionVect = new Vector.<ConditionInfo>();
         _loc5_ = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = new rumorPlot.model.info.ConditionInfo();
            _loc6_.decode(_loc2_[_loc5_]);
            RumorModel.instance.conditionInfosConfig.updateConditionInfo(_loc6_);
            this.conditionVect.push(_loc6_);
            _loc5_++;
         }
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <ConditionGroup nextNode=""/>;
         _loc1_.@nextNode = this.nextNode;
         var _loc2_:int = this.triggerVect?this.triggerVect.length:0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.appendChild(this.triggerVect[_loc3_].encode());
            _loc3_++;
         }
         _loc2_ = this.conditionVect?this.conditionVect.length:0;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.appendChild(this.conditionVect[_loc3_].encode());
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function addConditionInfo(param1:rumorPlot.model.info.ConditionInfo) : void
      {
         if(!this.conditionVect)
         {
            this.conditionVect = new Vector.<ConditionInfo>();
         }
         this.conditionVect.push(param1);
      }
      
      public function addTriggerInfo(param1:rumorPlot.model.info.TriggerInfo) : void
      {
         if(!this.triggerVect)
         {
            this.triggerVect = new Vector.<TriggerInfo>();
         }
         this.triggerVect.push(param1);
      }
      
      public function getConditionInfoByCmd(param1:int) : rumorPlot.model.info.ConditionInfo
      {
         var _loc2_:rumorPlot.model.info.ConditionInfo = null;
         var _loc3_:rumorPlot.model.info.ConditionInfo = null;
         for each(_loc3_ in this.conditionVect)
         {
            if(_loc3_.id == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public function getTriggerInfoByCmd(param1:String) : rumorPlot.model.info.TriggerInfo
      {
         var _loc2_:rumorPlot.model.info.TriggerInfo = null;
         var _loc3_:rumorPlot.model.info.TriggerInfo = null;
         for each(_loc3_ in this.triggerVect)
         {
            if(_loc3_.cmd == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public function removeConditionInfoByCmd(param1:int) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(this.conditionVect)
         {
            _loc2_ = this.conditionVect.length;
            _loc3_ = _loc2_ - 1;
            while(_loc3_ >= 0)
            {
               if(param1 === this.conditionVect[_loc3_].id)
               {
                  this.conditionVect.splice(_loc3_,1);
                  break;
               }
               _loc3_--;
            }
         }
      }
      
      public function removeTriggerInfoByCmd(param1:String) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(this.triggerVect)
         {
            _loc2_ = this.triggerVect.length;
            _loc3_ = _loc2_ - 1;
            while(_loc3_ >= 0)
            {
               if(param1 === this.triggerVect[_loc3_].cmd)
               {
                  this.triggerVect.splice(_loc3_,1);
                  break;
               }
               _loc3_--;
            }
         }
      }
   }
}
