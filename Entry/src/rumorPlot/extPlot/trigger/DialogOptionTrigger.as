package rumorPlot.extPlot.trigger
{
   import rumorPlot.plot.trigger.Trigger;
   import rumorPlot.model.info.ParamArg;
   import base.ApplicationData;
   import rumorPlot.events.PlotEvent;
   import rumorPlot.command.RumorSendServerCommand;
   
   public class DialogOptionTrigger extends Trigger
   {
       
      private var _index:int;
      
      public function DialogOptionTrigger()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:Vector.<ParamArg> = triggerInfo.paramArg.paramArgVect;
         this._index = int(_loc1_[0].value);
         ApplicationData.addNarutoEventListener(PlotEvent.SELECT_OPTION,this.optionSelHandler);
         super.activate();
      }
      
      override public function deactivate(param1:Boolean) : void
      {
         ApplicationData.removeNarutoEventListener(PlotEvent.SELECT_OPTION,this.optionSelHandler);
         super.deactivate(param1);
      }
      
      private function optionSelHandler(param1:PlotEvent) : void
      {
         if(this._index == int(param1.data))
         {
            new RumorSendServerCommand(RumorSendServerCommand.TYPE_NODE,nextNode).call();
            triggerOK();
         }
      }
   }
}
