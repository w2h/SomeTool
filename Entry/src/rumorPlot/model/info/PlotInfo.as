package rumorPlot.model.info
{
   public class PlotInfo
   {
       
      public var plotID:uint;
      
      public var plotName:String;
      
      public var rootNodeArr:Array;
      
      public var scriptNodeVect:Vector.<rumorPlot.model.info.ScriptNodeInfo>;
      
      public function PlotInfo()
      {
         this.rootNodeArr = [];
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc5_:rumorPlot.model.info.ScriptNodeInfo = null;
         this.plotID = param1.@id;
         this.plotName = param1.@name;
         var _loc2_:String = param1.@rootNode;
         if(_loc2_ && _loc2_.length)
         {
            this.rootNodeArr = _loc2_.split(",");
         }
         var _loc3_:XMLList = param1.ScriptNode;
         var _loc4_:int = _loc3_.length();
         this.scriptNodeVect = new Vector.<ScriptNodeInfo>();
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_ = new rumorPlot.model.info.ScriptNodeInfo();
            _loc5_.decode(_loc3_[_loc6_]);
            this.scriptNodeVect.push(_loc5_);
            _loc6_++;
         }
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <PlotInfo/>;
         this.plotID && (_loc1_.@id = this.plotID);
         this.plotName && (_loc1_.@name = this.plotName);
         this.rootNodeArr.length && (_loc1_.@rootNode = this.rootNodeArr.join(","));
         var _loc2_:int = this.scriptNodeVect?this.scriptNodeVect.length:0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.appendChild(this.scriptNodeVect[_loc3_].encode());
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function updateRootNode() : void
      {
         var _loc3_:rumorPlot.model.info.ScriptNodeInfo = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         for each(_loc3_ in this.scriptNodeVect)
         {
            _loc1_.push(_loc3_.nodeID);
            _loc2_ = _loc2_.concat(_loc3_.getNextNodeArr());
         }
         _loc4_ = _loc1_.length;
         _loc5_ = _loc4_ - 1;
         while(_loc5_ >= 0)
         {
            if(_loc2_.indexOf(_loc1_[_loc5_]) != -1)
            {
               _loc1_.splice(_loc5_,1);
            }
            _loc5_--;
         }
         this.rootNodeArr = _loc1_;
      }
      
      public function addScriptNodeInfo(param1:rumorPlot.model.info.ScriptNodeInfo) : void
      {
         if(!this.scriptNodeVect)
         {
            this.scriptNodeVect = new Vector.<ScriptNodeInfo>();
         }
         this.scriptNodeVect.push(param1);
      }
      
      public function removeScriptNodeInfo(param1:int) : void
      {
         var _loc4_:rumorPlot.model.info.ScriptNodeInfo = null;
         var _loc2_:int = this.scriptNodeVect?this.scriptNodeVect.length:0;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if(param1 === this.scriptNodeVect[_loc3_].nodeID)
            {
               this.scriptNodeVect.splice(_loc3_,1);
               break;
            }
            _loc3_--;
         }
         for each(_loc4_ in this.scriptNodeVect)
         {
            _loc4_.removeDelNodeID(param1);
            _loc4_.removeConditonGroupByNodeID(param1);
         }
      }
   }
}
