package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class SaveSharedBattleCommond extends Command
   {
       
      public function SaveSharedBattleCommond()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
