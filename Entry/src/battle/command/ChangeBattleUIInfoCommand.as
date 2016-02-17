package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ChangeBattleUIInfoCommand extends Command
   {
       
      public var status:String;
      
      public function ChangeBattleUIInfoCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
