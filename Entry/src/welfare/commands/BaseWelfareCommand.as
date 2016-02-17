package welfare.commands
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseWelfareCommand extends Command
   {
       
      public function BaseWelfareCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WELFARE;
      }
   }
}
