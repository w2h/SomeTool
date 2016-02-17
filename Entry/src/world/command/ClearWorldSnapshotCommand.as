package world.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class ClearWorldSnapshotCommand extends NarutoCommand
   {
       
      public function ClearWorldSnapshotCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD;
      }
   }
}
