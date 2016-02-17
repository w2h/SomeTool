package pvpBattlefield.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenCrossPvpBattlefieldCivilViewCmd extends NarutoCommand
   {
       
      public function OpenCrossPvpBattlefieldCivilViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PVPBATTLEFIELD;
      }
   }
}
