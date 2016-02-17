package crew.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseCrewCommand extends Command
   {
       
      public function BaseCrewCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CREW;
      }
   }
}
