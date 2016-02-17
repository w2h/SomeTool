package rumorPlot.extPlot.trigger
{
   import rumorPlot.plot.trigger.Trigger;
   import base.ApplicationData;
   import rumorPlot.events.PlotEvent;
   
   public class PlayMovieTrigger extends Trigger
   {
       
      public function PlayMovieTrigger()
      {
         super();
      }
      
      override public function activate() : void
      {
         ApplicationData.addNarutoEventListener(PlotEvent.PLAY_MOVIE_END,this.playMovieHandler);
         super.activate();
      }
      
      override public function deactivate(param1:Boolean) : void
      {
         ApplicationData.removeNarutoEventListener(PlotEvent.PLAY_MOVIE_END,this.playMovieHandler);
         super.deactivate(param1);
      }
      
      private function playMovieHandler(param1:PlotEvent) : void
      {
         triggerOK();
      }
   }
}
