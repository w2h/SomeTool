package arena.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenArenaCommand extends NarutoCommand
   {
       
      public var errorCode:int;
      
      public var recommendNinja:int;
      
      public function OpenArenaCommand(param1:int = 0)
      {
         super();
         this.recommendNinja = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ARENA;
      }
   }
}
