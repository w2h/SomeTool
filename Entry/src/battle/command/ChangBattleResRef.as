package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import flash.utils.Dictionary;
   import def.PluginDef;
   
   public class ChangBattleResRef extends Command
   {
       
      private var resRefMap:Dictionary;
      
      public function ChangBattleResRef(param1:Dictionary)
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
