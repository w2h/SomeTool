package plot.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class PlotEndCommand extends Command
   {
       
      public function PlotEndCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NARUTO_PLOT;
      }
   }
}
