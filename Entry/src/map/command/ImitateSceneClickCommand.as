package map.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ImitateSceneClickCommand extends Command
   {
       
      public function ImitateSceneClickCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.MAP;
      }
   }
}
