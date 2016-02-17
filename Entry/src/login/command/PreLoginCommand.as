package login.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class PreLoginCommand extends Command
   {
       
      public function PreLoginCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.LOGIN;
      }
   }
}
