package rumorPlot.extPlot.trigger
{
   import rumorPlot.plot.trigger.Trigger;
   import rumorPlot.model.info.ParamArg;
   import base.ApplicationData;
   import rumorPlot.events.PlotEvent;
   
   public class BattleWinTrigger extends Trigger
   {
       
      private var _battleID:int;
      
      public function BattleWinTrigger()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:Vector.<ParamArg> = triggerInfo.paramArg.paramArgVect;
         this._battleID = int(_loc1_[0].value);
         ApplicationData.addNarutoEventListener(PlotEvent.BATTLE_WIN,this.battleWinHandler);
         super.activate();
      }
      
      override public function deactivate(param1:Boolean) : void
      {
         ApplicationData.removeNarutoEventListener(PlotEvent.BATTLE_WIN,this.battleWinHandler);
         super.deactivate(param1);
      }
      
      private function battleWinHandler(param1:PlotEvent) : void
      {
         if(this._battleID == int(param1.data))
         {
            triggerOK();
         }
      }
   }
}
