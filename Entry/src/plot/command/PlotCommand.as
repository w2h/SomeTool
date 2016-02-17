package plot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   import user.def.UserStateDef;
   
   public class PlotCommand extends NarutoCommand
   {
       
      public var plotid:int;
      
      public var showSkipBtn:Boolean;
      
      public var callback:Function;
      
      public function PlotCommand(param1:int = 0, param2:Boolean = true)
      {
         super();
         this.plotid = param1;
         this.showSkipBtn = param2;
         this.addBeginStateInfo(UserStateDef.BASE_PLOT_DIALOGUE,true);
         this.addEndStateInfo(UserStateDef.BASE_PLOT_DIALOGUE,false);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NARUTO_PLOT;
      }
   }
}
