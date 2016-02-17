package newestNinja.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenNewestNinjaCommand extends NarutoCommand
   {
       
      public var errorCode:int;
      
      public function OpenNewestNinjaCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NEWESTNINJA;
      }
   }
}
