package rumorPlot.plot.base
{
   import rumorPlot.model.info.ScriptNodeInfo;
   import rumorPlot.plot.script.Script;
   import rumorPlot.model.info.ScriptInfo;
   import com.tencent.morefun.framework.log.logger;
   import rumorPlot.plot.PlotManager;
   
   public class PlotNode
   {
       
      private var _scriptNode:ScriptNodeInfo;
      
      private var _plot:rumorPlot.plot.base.Plot;
      
      private var _scriptArr:Array;
      
      private var _conditonArr:Array;
      
      public function PlotNode(param1:ScriptNodeInfo, param2:rumorPlot.plot.base.Plot)
      {
         var _loc4_:ScriptInfo = null;
         var _loc5_:Script = null;
         super();
         this._scriptNode = param1;
         this._plot = param2;
         this._scriptArr = [];
         var _loc3_:int = this._scriptNode.scriptInfoVect?this._scriptNode.scriptInfoVect.length:0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc4_ = this._scriptNode.scriptInfoVect[_loc6_];
            logger.output("脚本名称：" + _loc4_.className);
            _loc5_ = PlotManager.instance.getClsByName(_loc4_.className) as Script;
            _loc5_.init(_loc4_);
            _loc5_.curNode = this._scriptNode.nodeID;
            this._scriptArr.push(_loc5_);
            _loc6_++;
         }
         this._conditonArr = [];
         _loc3_ = this._scriptNode.conditionGroupVect?this._scriptNode.conditionGroupVect.length:0;
         _loc6_ = 0;
         while(_loc6_ < _loc3_)
         {
            this._conditonArr.push(new PlotNodeCondition(this._scriptNode.conditionGroupVect[_loc6_],this._plot));
            _loc6_++;
         }
      }
      
      public function activate() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:Script = null;
         var _loc5_:PlotNodeCondition = null;
         if(!this._scriptNode)
         {
            return;
         }
         for each(_loc1_ in this._scriptNode.delNodeIDArr)
         {
            this._plot.deactivateNode(_loc1_);
         }
         _loc2_ = this._scriptArr?this._scriptArr.length:0;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_ = this._scriptArr[_loc4_] as Script;
            _loc3_.activate();
            _loc4_++;
         }
         _loc2_ = this._conditonArr?this._conditonArr.length:0;
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            if(this._conditonArr && this._conditonArr.length > _loc4_)
            {
               _loc5_ = this._conditonArr[_loc4_] as PlotNodeCondition;
               _loc5_.activate();
            }
            _loc4_++;
         }
      }
      
      public function deactivate(param1:Boolean = false) : void
      {
         var _loc2_:PlotNodeCondition = null;
         var _loc3_:Script = null;
         for each(_loc2_ in this._conditonArr)
         {
            _loc2_.deactivate(param1);
         }
         for each(_loc3_ in this._scriptArr)
         {
            _loc3_.deactivate(param1);
         }
         if(param1)
         {
            this._scriptArr = null;
            this._conditonArr = null;
            this._scriptNode = null;
            this._plot = null;
         }
      }
   }
}
