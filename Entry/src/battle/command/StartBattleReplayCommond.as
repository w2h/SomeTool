package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import flash.utils.ByteArray;
   import def.PluginDef;
   
   public class StartBattleReplayCommond extends Command
   {
       
      public var recordData:ByteArray;
      
      public function StartBattleReplayCommond()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
