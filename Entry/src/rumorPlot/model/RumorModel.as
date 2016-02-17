package rumorPlot.model
{
   import rumorPlot.model.cfg.ScriptInfosConfig;
   import rumorPlot.model.cfg.TriggerInfosConfig;
   import rumorPlot.model.cfg.ConditionInfosConfig;
   import rumorPlot.model.cfg.ResultInfosConfig;
   import rumorPlot.model.cfg.FavorInfosConfig;
   import rumorPlot.model.cfg.PlotInfosConfig;
   
   public class RumorModel
   {
      
      public static var instance:rumorPlot.model.RumorModel = new rumorPlot.model.RumorModel();
       
      public var scriptInfosConfig:ScriptInfosConfig;
      
      public var triggerInfosConfig:TriggerInfosConfig;
      
      public var conditionInfosConfig:ConditionInfosConfig;
      
      public var resultInfosConfig:ResultInfosConfig;
      
      public var favorInfosConfig:FavorInfosConfig;
      
      public var plotInfosConfig:PlotInfosConfig;
      
      public function RumorModel()
      {
         this.scriptInfosConfig = new ScriptInfosConfig();
         this.triggerInfosConfig = new TriggerInfosConfig();
         this.conditionInfosConfig = new ConditionInfosConfig();
         this.resultInfosConfig = new ResultInfosConfig();
         this.favorInfosConfig = new FavorInfosConfig();
         this.plotInfosConfig = new PlotInfosConfig();
         super();
      }
   }
}
