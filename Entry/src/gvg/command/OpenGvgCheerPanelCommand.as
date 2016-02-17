package gvg.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenGvgCheerPanelCommand extends Command
   {
       
      public function OpenGvgCheerPanelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GVG;
      }
   }
}
