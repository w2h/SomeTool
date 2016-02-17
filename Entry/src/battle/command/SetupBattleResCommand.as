package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class SetupBattleResCommand extends Command
   {
       
      public function SetupBattleResCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
