package startup.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class StartupCommand extends Command
   {
       
      public function StartupCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.STARTUP;
      }
   }
}
