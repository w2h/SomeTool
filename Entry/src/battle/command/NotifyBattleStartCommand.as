package battle.command
{
   import base.NarutoCommand;
   import flash.utils.ByteArray;
   import def.PluginDef;
   
   public class NotifyBattleStartCommand extends NarutoCommand
   {
       
      public var messageBytes:ByteArray;
      
      public function NotifyBattleStartCommand(param1:ByteArray)
      {
         super();
         this.messageBytes = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
