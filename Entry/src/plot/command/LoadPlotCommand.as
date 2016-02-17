package plot.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class LoadPlotCommand extends Command
   {
       
      public var id:int;
      
      public function LoadPlotCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NARUTO_PLOT;
      }
   }
}
