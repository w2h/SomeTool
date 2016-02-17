package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import flash.utils.Dictionary;
   import def.PluginDef;
   
   public class ChangBattleResRefCommand extends Command
   {
       
      public var resRefMap:Dictionary;
      
      public function ChangBattleResRefCommand(param1:Dictionary)
      {
         this.resRefMap = new Dictionary();
         super();
         this.resRefMap = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
