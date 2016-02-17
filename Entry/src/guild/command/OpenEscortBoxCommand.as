package guild.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenEscortBoxCommand extends Command
   {
       
      public function OpenEscortBoxCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GUILD;
      }
   }
}
