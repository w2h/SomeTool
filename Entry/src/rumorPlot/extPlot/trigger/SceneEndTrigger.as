package rumorPlot.extPlot.trigger
{
   import rumorPlot.plot.trigger.Trigger;
   import base.ApplicationData;
   import rumorPlot.events.PlotEvent;
   
   public class SceneEndTrigger extends Trigger
   {
       
      public function SceneEndTrigger()
      {
         super();
      }
      
      override public function activate() : void
      {
         ApplicationData.addNarutoEventListener(PlotEvent.SCENE_END,this.sceneEndHandler);
         super.activate();
      }
      
      override public function deactivate(param1:Boolean) : void
      {
         ApplicationData.removeNarutoEventListener(PlotEvent.SCENE_END,this.sceneEndHandler);
         super.deactivate(param1);
      }
      
      private function sceneEndHandler(param1:PlotEvent) : void
      {
         triggerOK();
      }
   }
}
