package activity.yeYouJie
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenYeYouJieCommand extends Command
   {
       
      public function OpenYeYouJieCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
