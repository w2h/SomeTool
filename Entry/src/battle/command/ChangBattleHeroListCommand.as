package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ChangBattleHeroListCommand extends Command
   {
       
      public var heroList:Array;
      
      public function ChangBattleHeroListCommand(param1:Array)
      {
         super();
         this.heroList = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
