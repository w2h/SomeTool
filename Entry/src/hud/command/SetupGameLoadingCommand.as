package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class SetupGameLoadingCommand extends Command
   {
       
      public function SetupGameLoadingCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
