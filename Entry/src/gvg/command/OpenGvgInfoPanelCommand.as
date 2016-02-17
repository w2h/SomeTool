package gvg.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenGvgInfoPanelCommand extends Command
   {
       
      public function OpenGvgInfoPanelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GVG;
      }
   }
}
