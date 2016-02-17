package rumorPlot.plot
{
   import rumorPlot.model.cfg.PlotInfosConfig;
   import flash.utils.Dictionary;
   import rumorPlot.model.RumorModel;
   import com.tencent.morefun.framework.log.logger;
   import rumorPlot.plot.base.Plot;
   import flash.utils.getDefinitionByName;
   
   public class PlotManager implements IPlotManager
   {
      
      public static var instance:rumorPlot.plot.PlotManager = new rumorPlot.plot.PlotManager();
       
      private var _plotInfosConfig:PlotInfosConfig;
      
      private var _plotDict:Dictionary;
      
      public function PlotManager()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this._plotInfosConfig = RumorModel.instance.plotInfosConfig;
         this._plotDict = new Dictionary();
      }
      
      public function activePlot(param1:int, param2:XML = null) : void
      {
         this.deactivePlot(param1);
         logger.output("正在执行剧情" + param1);
         var _loc3_:Plot = new Plot(param1,param2);
         this._plotDict[param1] = _loc3_;
         _loc3_.activate();
      }
      
      public function deactivePlot(param1:int) : void
      {
         var _loc2_:Plot = this._plotDict[param1];
         if(_loc2_)
         {
            _loc2_.deactivate();
            _loc2_ = null;
            delete this._plotDict[param1];
         }
      }
      
      public function isActivePlot(param1:int) : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:Plot = this._plotDict[param1];
         if(_loc3_)
         {
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function getClsByName(param1:String) : Object
      {
         var _loc2_:Class = getDefinitionByName(param1) as Class;
         return new _loc2_();
      }
   }
}
