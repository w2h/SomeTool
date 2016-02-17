package activity.tgp
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenTGPVIPViewCmd extends NarutoCommand
   {
       
      public function OpenTGPVIPViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
