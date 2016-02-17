package pvpBattlefield.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenPvpBattlefieldCivilViewCmd extends NarutoCommand
   {
       
      public function OpenPvpBattlefieldCivilViewCmd(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PVPBATTLEFIELD;
      }
   }
}
