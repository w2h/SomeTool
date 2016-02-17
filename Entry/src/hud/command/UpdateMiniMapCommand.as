package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class UpdateMiniMapCommand extends Command
   {
       
      public function UpdateMiniMapCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
