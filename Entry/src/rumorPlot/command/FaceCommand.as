package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class FaceCommand extends NarutoCommand
   {
       
      public var id:String;
      
      public function FaceCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
