package worldBoss.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class AddBuffCommand extends NarutoCommand
   {
       
      public var type:int;
      
      public function AddBuffCommand(param1:int)
      {
         super();
         this.type = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD_BOSS;
      }
   }
}
