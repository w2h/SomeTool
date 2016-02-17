package gvg.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenGvgPanelCommand extends Command
   {
       
      public var type:int;
      
      public function OpenGvgPanelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GVG;
      }
   }
}
