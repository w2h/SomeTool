package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class AddNewFunctionOpenCommand extends Command
   {
       
      public var protoHudType:int;
      
      public function AddNewFunctionOpenCommand(param1:int)
      {
         super();
         this.protoHudType = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
