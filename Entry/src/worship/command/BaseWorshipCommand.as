package worship.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseWorshipCommand extends Command
   {
       
      public function BaseWorshipCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORSHIP;
      }
   }
}
