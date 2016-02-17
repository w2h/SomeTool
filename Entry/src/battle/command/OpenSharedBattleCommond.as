package battle.command
{
   import com.tencent.morefun.framework.base.Command;
   import flash.utils.ByteArray;
   import def.PluginDef;
   
   public class OpenSharedBattleCommond extends Command
   {
       
      public var recordData:ByteArray;
      
      public function OpenSharedBattleCommond()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
