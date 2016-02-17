package register.commands
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RegisterCommand extends Command
   {
       
      public function RegisterCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.REGISTER;
      }
   }
}
