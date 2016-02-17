package map.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class HideMoveTargetUiCommand extends Command
   {
       
      public function HideMoveTargetUiCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.MAP;
      }
   }
}
