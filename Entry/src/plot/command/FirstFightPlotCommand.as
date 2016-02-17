package plot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class FirstFightPlotCommand extends NarutoCommand
   {
       
      public var plotid:int;
      
      public var showSkipBtn:Boolean;
      
      public function FirstFightPlotCommand(param1:int = 0, param2:Boolean = true)
      {
         super();
         this.plotid = param1;
         this.showSkipBtn = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NARUTO_PLOT;
      }
   }
}
