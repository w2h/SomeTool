package rumorPlot.extPlot.trigger
{
   import rumorPlot.plot.trigger.Trigger;
   import rumorPlot.model.info.ParamArg;
   import base.ApplicationData;
   import rumorPlot.events.PlotEvent;
   
   public class DialogCloseTrigger extends Trigger
   {
       
      private var _dialogID:int;
      
      public function DialogCloseTrigger()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:Vector.<ParamArg> = triggerInfo.paramArg.paramArgVect;
         this._dialogID = int(_loc1_[0].value);
         ApplicationData.addNarutoEventListener(PlotEvent.DIALOG_CLOSE,this.dialogCloseHandler);
         super.activate();
      }
      
      override public function deactivate(param1:Boolean) : void
      {
         ApplicationData.removeNarutoEventListener(PlotEvent.DIALOG_CLOSE,this.dialogCloseHandler);
         super.deactivate(param1);
      }
      
      private function dialogCloseHandler(param1:PlotEvent) : void
      {
         if(this._dialogID == 0 || this._dialogID == int(param1.data))
         {
            triggerOK();
         }
      }
   }
}
