package activity.blueDiamond
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenBlueDiamondViewCmd extends NarutoCommand
   {
       
      public function OpenBlueDiamondViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
