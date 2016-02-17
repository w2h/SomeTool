package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenXinyueGiftPanelCommand extends Command
   {
       
      public function OpenXinyueGiftPanelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
