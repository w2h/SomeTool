package gvg.command
{
   import com.tencent.morefun.framework.base.Command;
   import gvg.data.GvgInfo;
   import def.PluginDef;
   
   public class RequestGvgInfoCommand extends Command
   {
       
      public var gvgInfo:GvgInfo;
      
      public function RequestGvgInfoCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GVG;
      }
   }
}
