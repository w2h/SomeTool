package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ShowHudIconScaleEffect extends Command
   {
       
      public var skinId:int = 1;
      
      public function ShowHudIconScaleEffect(param1:int = 1)
      {
         this.skinId = param1;
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
