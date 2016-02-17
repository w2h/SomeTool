package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ShowBattlePowerChangedEffect extends Command
   {
       
      public function ShowBattlePowerChangedEffect(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
