package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class GetHudBattlePowerValueCommand extends Command
   {
       
      public var value:uint;
      
      public function GetHudBattlePowerValueCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
