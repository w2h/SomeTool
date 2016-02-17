package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class UpdateHudMoneyLockCommand extends Command
   {
       
      public var lock:Boolean;
      
      public var type:int;
      
      public function UpdateHudMoneyLockCommand(param1:Boolean, param2:int)
      {
         super();
         this.lock = param1;
         this.type = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
