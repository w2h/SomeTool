package activity.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseActivityCommand extends Command
   {
       
      public function BaseActivityCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
