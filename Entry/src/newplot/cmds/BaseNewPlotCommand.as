package newplot.cmds
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseNewPlotCommand extends Command
   {
       
      public function BaseNewPlotCommand(param1:Boolean = true)
      {
         super(2,param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NEWPLOT;
      }
   }
}
