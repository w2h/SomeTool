package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class StartPlayBattleCommand extends Command
   {
       
      public function StartPlayBattleCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
