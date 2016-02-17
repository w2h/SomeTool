package rumorPlot.extPlot.trigger
{
   import rumorPlot.plot.trigger.Trigger;
   import rumorPlot.model.info.ParamArg;
   import base.ApplicationData;
   import rumorPlot.events.PlotEvent;
   
   public class DialogShowTrigger extends Trigger
   {
       
      private var _dialogID:int;
      
      private var _index:int;
      
      public function DialogShowTrigger()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:Vector.<ParamArg> = triggerInfo.paramArg.paramArgVect;
         this._dialogID = int(_loc1_[0].value);
         this._index = int(_loc1_[1].value);
         ApplicationData.addNarutoEventListener(PlotEvent.DIALOG_SHOW,this.dialogShowHandler);
         super.activate();
      }
      
      override public function deactivate(param1:Boolean) : void
      {
         ApplicationData.removeNarutoEventListener(PlotEvent.DIALOG_SHOW,this.dialogShowHandler);
         super.deactivate(param1);
      }
      
      private function dialogShowHandler(param1:PlotEvent) : void
      {
         if(this._dialogID == int(param1.data) && this._index == int(param1.extraData))
         {
            triggerOK();
         }
      }
   }
}
