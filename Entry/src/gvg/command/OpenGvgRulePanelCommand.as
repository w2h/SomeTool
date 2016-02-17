package gvg.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenGvgRulePanelCommand extends Command
   {
       
      public function OpenGvgRulePanelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GVG;
      }
   }
}
