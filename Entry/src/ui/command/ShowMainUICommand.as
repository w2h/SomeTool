package ui.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ShowMainUICommand extends Command
   {
       
      public var show:Boolean;
      
      public function ShowMainUICommand(param1:Boolean = true)
      {
         super();
         this.show = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
