package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class RumorEnterSceneCommand extends NarutoCommand
   {
       
      public var sceneID:int;
      
      public function RumorEnterSceneCommand(param1:int)
      {
         super();
         this.sceneID = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
