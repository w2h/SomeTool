package rumorPlot.events
{
   import flash.events.Event;
   
   public class PlotEvent extends Event
   {
      
      public static const PLOT_LOAD_OK:String = "plotLoadOK";
      
      public static const PLOT_LOAD_ERROR:String = "plotLoadError";
      
      public static const COMMON_SCRIPT_NOTIFY:String = "commonScriptNotify";
      
      public static const DIALOG_CLOSE:String = "dialogClose";
      
      public static const SELECT_OPTION:String = "selectOption";
      
      public static const DIALOG_SHOW:String = "dialogShow";
      
      public static const BG_DIALOG_CLOSE:String = "bgDialogClose";
      
      public static const BLACK_ASIDE_CLOSE:String = "blackAsideClose";
      
      public static const PLAY_MOVIE_END:String = "playMovieEnd";
      
      public static const BATTLE_WIN:String = "battleWin";
      
      public static const SCENE_END:String = "sceneEnd";
       
      public var data:Object;
      
      public var extraData:Object;
      
      public function PlotEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         var _loc1_:PlotEvent = new PlotEvent(this.type);
         _loc1_.data = this.data;
         _loc1_.extraData = this.extraData;
         return _loc1_;
      }
   }
}
