package pvpBattlefield.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class ClosePvpBattlefieldCivilViewCmd extends NarutoCommand
   {
       
      public function ClosePvpBattlefieldCivilViewCmd(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PVPBATTLEFIELD;
      }
   }
}
