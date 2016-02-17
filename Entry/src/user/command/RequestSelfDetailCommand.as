package user.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestSelfDetailCommand extends Command
   {
       
      public function RequestSelfDetailCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.USER;
      }
   }
}
