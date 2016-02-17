package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ChangBattleRoundInfoCommand extends Command
   {
       
      public var roundInfos:Array;
      
      public function ChangBattleRoundInfoCommand(param1:Array)
      {
         super();
         this.roundInfos = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
