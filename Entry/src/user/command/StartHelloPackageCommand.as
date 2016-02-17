package user.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class StartHelloPackageCommand extends Command
   {
       
      public function StartHelloPackageCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.USER;
      }
   }
}
