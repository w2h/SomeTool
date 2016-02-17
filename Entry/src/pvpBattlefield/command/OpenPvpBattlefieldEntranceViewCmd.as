package pvpBattlefield.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenPvpBattlefieldEntranceViewCmd extends NarutoCommand
   {
       
      public var errorCode:int;
      
      public function OpenPvpBattlefieldEntranceViewCmd(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PVPBATTLEFIELD;
      }
   }
}
