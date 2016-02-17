package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class HideWipeoutIndicatorCommand extends Command
   {
       
      public function HideWipeoutIndicatorCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
