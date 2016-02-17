package crew.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenUpgradeViewCommand extends Command
   {
       
      public function OpenUpgradeViewCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CREW;
      }
   }
}
