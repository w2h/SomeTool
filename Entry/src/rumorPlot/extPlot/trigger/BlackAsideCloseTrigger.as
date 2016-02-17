package rumorPlot.extPlot.trigger
{
   import rumorPlot.plot.trigger.Trigger;
   import base.ApplicationData;
   import rumorPlot.events.PlotEvent;
   
   public class BlackAsideCloseTrigger extends Trigger
   {
       
      public function BlackAsideCloseTrigger()
      {
         super();
      }
      
      override public function activate() : void
      {
         ApplicationData.addNarutoEventListener(PlotEvent.BLACK_ASIDE_CLOSE,this.blackAsideCloseHandler);
         super.activate();
      }
      
      override public function deactivate(param1:Boolean) : void
      {
         ApplicationData.removeNarutoEventListener(PlotEvent.BLACK_ASIDE_CLOSE,this.blackAsideCloseHandler);
         super.deactivate(param1);
      }
      
      private function blackAsideCloseHandler(param1:PlotEvent) : void
      {
         triggerOK();
      }
   }
}
