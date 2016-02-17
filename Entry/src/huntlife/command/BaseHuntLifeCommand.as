package huntlife.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseHuntLifeCommand extends Command
   {
       
      public function BaseHuntLifeCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUNT_LIFE;
      }
   }
}
