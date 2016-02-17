package ui.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenNewFunctionCommand extends Command
   {
       
      public function OpenNewFunctionCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
