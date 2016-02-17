package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class UpdateHudBattlePowerLockCommand extends Command
   {
       
      public var lock:Boolean;
      
      public function UpdateHudBattlePowerLockCommand(param1:Boolean)
      {
         super();
         this.lock = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
