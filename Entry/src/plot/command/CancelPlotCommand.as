package plot.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class CancelPlotCommand extends Command
   {
       
      public function CancelPlotCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NARUTO_PLOT;
      }
   }
}
