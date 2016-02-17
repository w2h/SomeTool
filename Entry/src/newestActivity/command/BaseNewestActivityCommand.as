package newestActivity.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseNewestActivityCommand extends Command
   {
       
      public function BaseNewestActivityCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NEWEST_ACTIVITY;
      }
   }
}
