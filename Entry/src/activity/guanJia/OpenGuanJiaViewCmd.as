package activity.guanJia
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenGuanJiaViewCmd extends NarutoCommand
   {
       
      public function OpenGuanJiaViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
