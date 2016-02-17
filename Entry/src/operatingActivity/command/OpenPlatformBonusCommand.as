package operatingActivity.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenPlatformBonusCommand extends Command
   {
       
      public function OpenPlatformBonusCommand(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.OPERATING_ACTIVITY;
      }
   }
}
