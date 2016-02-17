package user.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseUserCommand extends Command
   {
       
      public function BaseUserCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.USER;
      }
   }
}
