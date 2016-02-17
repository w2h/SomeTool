package activity.qqhallOnlineReward
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenQQHallOnlineRewardCommand extends Command
   {
       
      public function OpenQQHallOnlineRewardCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
