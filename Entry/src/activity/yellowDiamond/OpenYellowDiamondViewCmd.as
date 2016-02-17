package activity.yellowDiamond
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenYellowDiamondViewCmd extends NarutoCommand
   {
       
      public function OpenYellowDiamondViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
