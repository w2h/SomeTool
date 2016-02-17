package login.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class LoginCommand extends Command
   {
       
      public function LoginCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.LOGIN;
      }
   }
}
