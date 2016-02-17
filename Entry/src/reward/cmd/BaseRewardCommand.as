package reward.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseRewardCommand extends Command
   {
       
      public function BaseRewardCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.REWARD;
      }
   }
}
