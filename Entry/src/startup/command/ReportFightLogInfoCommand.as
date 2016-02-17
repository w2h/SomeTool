package startup.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ReportFightLogInfoCommand extends Command
   {
       
      public function ReportFightLogInfoCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.STARTUP;
      }
   }
}
