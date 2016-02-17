package home.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestStopBathCommand extends Command
   {
       
      public function RequestStopBathCommand(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HOME;
      }
   }
}
