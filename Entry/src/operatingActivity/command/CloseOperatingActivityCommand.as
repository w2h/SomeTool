package operatingActivity.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class CloseOperatingActivityCommand extends Command
   {
       
      public function CloseOperatingActivityCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.OPERATING_ACTIVITY;
      }
   }
}
