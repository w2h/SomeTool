package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BattleCommand extends Command
   {
       
      public function BattleCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
