package guild.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class TestEscortCommand extends Command
   {
       
      public function TestEscortCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GUILD;
      }
   }
}
