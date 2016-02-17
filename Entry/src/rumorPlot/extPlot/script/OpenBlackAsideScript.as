package rumorPlot.extPlot.script
{
   import rumorPlot.plot.script.Script;
   import rumorPlot.command.RumorPlotBlackAsideCommand;
   
   public class OpenBlackAsideScript extends Script
   {
       
      public function OpenBlackAsideScript()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc6_:RumorPlotBlackAsideCommand = null;
         var _loc1_:String = String(scriptInfo.paramArg.paramArgVect[0].value);
         var _loc2_:int = int(scriptInfo.paramArg.paramArgVect[1].value) * 1000;
         var _loc3_:Number = Number(scriptInfo.paramArg.paramArgVect[2].value);
         var _loc4_:Number = Number(scriptInfo.paramArg.paramArgVect[3].value);
         var _loc5_:int = int(scriptInfo.paramArg.paramArgVect[4].value);
         _loc6_ = new RumorPlotBlackAsideCommand(_loc1_,_loc2_,_loc5_);
         _loc6_.shockTime = _loc3_;
         _loc6_.shockDelay = _loc4_;
         _loc6_.amplitude = 10;
         _loc6_.freq = 5;
         _loc6_.call();
         super.activate();
      }
      
      override public function deactivate(param1:Boolean = false) : void
      {
         super.deactivate(param1);
      }
   }
}
