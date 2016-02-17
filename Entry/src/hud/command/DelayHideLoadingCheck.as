package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class DelayHideLoadingCheck extends Command
   {
       
      public function DelayHideLoadingCheck(param1:int = 2, param2:Boolean = true)
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
