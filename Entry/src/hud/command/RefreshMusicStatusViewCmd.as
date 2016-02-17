package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RefreshMusicStatusViewCmd extends Command
   {
       
      public function RefreshMusicStatusViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
