package rumorPlot.model.info
{
   import rumorPlot.model.RumorModel;
   
   public class ScriptNodeInfo
   {
       
      public var nodeID:int;
      
      public var nodeX:int;
      
      public var nodeY:int;
      
      public var nodeName:String;
      
      public var delNodeIDArr:Array;
      
      public var scriptInfoVect:Vector.<rumorPlot.model.info.ScriptInfo>;
      
      public var conditionGroupVect:Vector.<rumorPlot.model.info.ConditionGroupInfo>;
      
      public function ScriptNodeInfo()
      {
         this.delNodeIDArr = [];
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc5_:rumorPlot.model.info.ScriptInfo = null;
         var _loc8_:rumorPlot.model.info.ConditionGroupInfo = null;
         this.nodeID = param1.@id;
         this.nodeX = param1.@nodeX;
         this.nodeY = param1.@nodeY;
         this.nodeName = param1.@name;
         var _loc2_:String = param1.@delNode;
         if(_loc2_ && _loc2_.length)
         {
            this.delNodeIDArr = _loc2_.split(",");
         }
         this.scriptInfoVect = new Vector.<ScriptInfo>();
         var _loc3_:XMLList = param1.ScriptInfo;
         var _loc4_:int = _loc3_.length();
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_ = new rumorPlot.model.info.ScriptInfo();
            _loc5_.decode(_loc3_[_loc6_]);
            RumorModel.instance.scriptInfosConfig.updateScriptInfo(_loc5_);
            this.scriptInfoVect.push(_loc5_);
            _loc6_++;
         }
         this.conditionGroupVect = new Vector.<ConditionGroupInfo>();
         var _loc7_:XMLList = param1.ConditionGroup;
         _loc4_ = _loc7_.length();
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc8_ = new rumorPlot.model.info.ConditionGroupInfo();
            _loc8_.decode(_loc7_[_loc6_]);
            this.conditionGroupVect.push(_loc8_);
            _loc6_++;
         }
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <ScriptNode/>;
         this.nodeID && (_loc1_.@id = this.nodeID);
         this.nodeName && (_loc1_.@name = this.nodeName);
         this.nodeX && (_loc1_.@nodeX = this.nodeX);
         this.nodeY && (_loc1_.@nodeY = this.nodeY);
         this.delNodeIDArr.length && (_loc1_.@delNode = this.delNodeIDArr.join(","));
         var _loc2_:int = this.scriptInfoVect?this.scriptInfoVect.length:0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.appendChild(this.scriptInfoVect[_loc3_].encode());
            _loc3_++;
         }
         _loc2_ = this.conditionGroupVect?this.conditionGroupVect.length:0;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.appendChild(this.conditionGroupVect[_loc3_].encode());
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function addConditionGroupInfo(param1:rumorPlot.model.info.ConditionGroupInfo) : void
      {
         if(!this.conditionGroupVect)
         {
            this.conditionGroupVect = new Vector.<ConditionGroupInfo>();
         }
         this.conditionGroupVect.push(param1);
      }
      
      public function removeConditionGroupInfo(param1:rumorPlot.model.info.ConditionGroupInfo) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(this.conditionGroupVect)
         {
            _loc2_ = this.conditionGroupVect.length;
            _loc3_ = _loc2_ - 1;
            while(_loc3_ >= 0)
            {
               if(param1 === this.conditionGroupVect[_loc3_])
               {
                  this.conditionGroupVect.splice(_loc3_,1);
                  break;
               }
               _loc3_--;
            }
         }
      }
      
      public function removeConditonGroupByNodeID(param1:int) : void
      {
         var _loc2_:int = this.conditionGroupVect?this.conditionGroupVect.length:0;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if(param1 === this.conditionGroupVect[_loc3_].nextNode)
            {
               this.conditionGroupVect.splice(_loc3_,1);
               break;
            }
            _loc3_--;
         }
      }
      
      public function addScriptInfo(param1:rumorPlot.model.info.ScriptInfo) : void
      {
         if(!this.scriptInfoVect)
         {
            this.scriptInfoVect = new Vector.<ScriptInfo>();
         }
         this.scriptInfoVect.push(param1);
      }
      
      public function removeScriptInfo(param1:rumorPlot.model.info.ScriptInfo) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(this.scriptInfoVect)
         {
            _loc2_ = this.scriptInfoVect.length;
            _loc3_ = _loc2_ - 1;
            while(_loc3_ >= 0)
            {
               if(param1 === this.scriptInfoVect[_loc3_])
               {
                  this.scriptInfoVect.splice(_loc3_,1);
                  break;
               }
               _loc3_--;
            }
         }
      }
      
      public function addDelNodeID(param1:int) : void
      {
         this.delNodeIDArr.push(param1);
      }
      
      public function removeDelNodeID(param1:int) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(this.delNodeIDArr)
         {
            _loc2_ = this.delNodeIDArr.length;
            _loc3_ = _loc2_ - 1;
            while(_loc3_ >= 0)
            {
               if(param1 === int(this.delNodeIDArr[_loc3_]))
               {
                  this.delNodeIDArr.splice(_loc3_,1);
                  break;
               }
               _loc3_--;
            }
         }
      }
      
      public function getScriptInfoByCmd(param1:String) : rumorPlot.model.info.ScriptInfo
      {
         var _loc2_:rumorPlot.model.info.ScriptInfo = null;
         var _loc3_:rumorPlot.model.info.ScriptInfo = null;
         for each(_loc3_ in this.scriptInfoVect)
         {
            if(_loc3_.cmd == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public function removeScriptInfoByCmd(param1:String) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(this.scriptInfoVect)
         {
            _loc2_ = this.scriptInfoVect.length;
            _loc3_ = _loc2_ - 1;
            while(_loc3_ >= 0)
            {
               if(param1 === this.scriptInfoVect[_loc3_].cmd)
               {
                  this.scriptInfoVect.splice(_loc3_,1);
                  break;
               }
               _loc3_--;
            }
         }
      }
      
      public function getNextNodeArr() : Array
      {
         var _loc2_:rumorPlot.model.info.ConditionGroupInfo = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.conditionGroupVect)
         {
            _loc2_.nextNode && _loc1_.push(_loc2_.nextNode);
         }
         return _loc1_;
      }
   }
}
