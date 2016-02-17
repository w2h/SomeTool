package world.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class DrawWorldSnapshotCommand extends NarutoCommand
   {
       
      public function DrawWorldSnapshotCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD;
      }
   }
}
