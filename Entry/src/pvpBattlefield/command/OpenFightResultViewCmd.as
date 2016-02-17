package pvpBattlefield.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenFightResultViewCmd extends NarutoCommand
   {
       
      public var errorCode:int;
      
      public function OpenFightResultViewCmd(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PVPBATTLEFIELD;
      }
   }
}
