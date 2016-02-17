package rumorPlot.extPlot.trigger
{
   import rumorPlot.plot.trigger.Trigger;
   import base.ApplicationData;
   import rumorPlot.events.PlotEvent;
   
   public class BgDialogCloseTrigger extends Trigger
   {
       
      public function BgDialogCloseTrigger()
      {
         super();
      }
      
      override public function activate() : void
      {
         ApplicationData.addNarutoEventListener(PlotEvent.BG_DIALOG_CLOSE,this.bgDialogCloseHandler);
         super.activate();
      }
      
      override public function deactivate(param1:Boolean) : void
      {
         ApplicationData.removeNarutoEventListener(PlotEvent.BG_DIALOG_CLOSE,this.bgDialogCloseHandler);
         super.deactivate(param1);
      }
      
      private function bgDialogCloseHandler(param1:PlotEvent) : void
      {
         triggerOK();
      }
   }
}
