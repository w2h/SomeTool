package rumorPlot.model.cfg
{
   import flash.utils.Dictionary;
   import rumorPlot.model.info.PlotInfo;
   
   public class PlotInfosConfig
   {
       
      public var plotIDDict:Dictionary;
      
      public function PlotInfosConfig()
      {
         this.plotIDDict = new Dictionary();
         super();
      }
      
      public function addPlotInfo(param1:XML) : PlotInfo
      {
         var _loc2_:PlotInfo = new PlotInfo();
         _loc2_.decode(param1);
         this.plotIDDict[_loc2_.plotID] = _loc2_;
         return _loc2_;
      }
      
      public function getPlotInfoByID(param1:uint) : PlotInfo
      {
         var _loc2_:PlotInfo = null;
         if(this.plotIDDict[param1])
         {
            _loc2_ = this.plotIDDict[param1];
         }
         return _loc2_;
      }
      
      public function havePlotID(param1:int) : Boolean
      {
         var _loc2_:Boolean = this.plotIDDict.hasOwnProperty(param1);
         return _loc2_;
      }
      
      public function encode() : XML
      {
         return null;
      }
      
      public function dispose() : void
      {
         this.plotIDDict = null;
      }
   }
}
