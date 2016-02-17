package operatingActivity.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenOperatingActivityCommand extends Command
   {
       
      public var activityID:int;
      
      public function OpenOperatingActivityCommand(param1:int = 0)
      {
         this.activityID = param1;
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.OPERATING_ACTIVITY;
      }
   }
}
