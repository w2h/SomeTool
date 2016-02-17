package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class HudIconFlashCommand extends Command
   {
       
      public var type:int;
      
      public var flashing:Boolean;
      
      public var isNewOpenIcon:Boolean;
      
      public var skinName:String;
      
      public function HudIconFlashCommand(param1:int, param2:Boolean, param3:Boolean = false, param4:String = "")
      {
         super();
         this.type = param1;
         this.flashing = param2;
         this.isNewOpenIcon = param3;
         this.skinName = param4;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
