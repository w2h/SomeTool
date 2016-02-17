package gvg.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenGvgPanelXXXCommand extends Command
   {
       
      public var type:int;
      
      public var inWhiteList:Boolean;
      
      public function OpenGvgPanelXXXCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GVG;
      }
   }
}
