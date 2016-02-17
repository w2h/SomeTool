package home.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseHomeCommand extends Command
   {
       
      public function BaseHomeCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HOME;
      }
   }
}
