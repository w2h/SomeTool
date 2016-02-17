package startup.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class LoadBattleCommand extends Command
   {
       
      public function LoadBattleCommand(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.STARTUP;
      }
   }
}
