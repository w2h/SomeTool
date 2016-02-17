package rumorPlot.plot.base
{
   import rumorPlot.model.info.PlotInfo;
   import rumorPlot.model.cfg.PlotInfosConfig;
   import com.tencent.morefun.framework.net.LoadManager;
   import flash.utils.Dictionary;
   import rumorPlot.events.PlotEvent;
   import base.ApplicationData;
   import com.tencent.morefun.framework.log.logger;
   import rumorPlot.model.info.ScriptNodeInfo;
   import rumorPlot.model.RumorModel;
   
   public class Plot
   {
       
      private var _plotID:int;
      
      private var _plotInfo:PlotInfo;
      
      private var _plotInfosConfig:PlotInfosConfig;
      
      private var _xmlLoader:LoadManager;
      
      private var _nodeDict:Dictionary;
      
      private var _isActivate:Boolean;
      
      public function Plot(param1:int, param2:XML)
      {
         super();
         this._plotID = param1;
         this._plotInfosConfig = RumorModel.instance.plotInfosConfig;
         this._plotInfo = this._plotInfosConfig.plotIDDict[this._plotID]?this._plotInfosConfig.plotIDDict[this._plotID]:null;
         if(!this._plotInfo)
         {
            this._plotInfo = this._plotInfosConfig.addPlotInfo(param2);
         }
         this.init();
      }
      
      public function activate() : void
      {
         var _loc1_:PlotEvent = null;
         var _loc2_:* = 0;
         this._isActivate = true;
         if(this._plotInfo)
         {
            _loc1_ = new PlotEvent(PlotEvent.PLOT_LOAD_OK);
            _loc1_.data = this._plotID;
            ApplicationData.dispatchNarutoEvent(_loc1_);
            for each(_loc2_ in this._plotInfo.rootNodeArr)
            {
               this.activateNode(_loc2_);
            }
         }
      }
      
      public function deactivate() : void
      {
         var _loc1_:PlotNode = null;
         this._isActivate = false;
         for each(_loc1_ in this._nodeDict)
         {
            _loc1_ && _loc1_.deactivate(true);
         }
         this._plotInfo = null;
         this._plotInfosConfig = null;
         this._nodeDict = null;
      }
      
      public function activateNode(param1:int) : void
      {
         logger.output("正在执行剧情节点" + param1);
         var _loc2_:PlotNode = this._nodeDict[param1];
         _loc2_ && _loc2_.activate();
      }
      
      public function deactivateNode(param1:int) : void
      {
         var _loc2_:PlotNode = this._nodeDict[param1];
         _loc2_ && _loc2_.deactivate();
      }
      
      private function init() : void
      {
         var _loc1_:ScriptNodeInfo = null;
         this._nodeDict = new Dictionary();
         for each(_loc1_ in this._plotInfo.scriptNodeVect)
         {
            this._nodeDict[_loc1_.nodeID] = new PlotNode(_loc1_,this);
         }
      }
   }
}
