package commandline.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class InitCommandlineCommand extends Command
   {
       
      public function InitCommandlineCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.COMMANDLINE;
      }
   }
}
