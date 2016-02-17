package activity.qqbrowser
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenQQBrowserActivityCommand extends Command
   {
       
      public function OpenQQBrowserActivityCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
