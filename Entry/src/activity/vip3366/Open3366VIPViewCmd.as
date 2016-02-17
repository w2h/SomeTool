package activity.vip3366
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class Open3366VIPViewCmd extends NarutoCommand
   {
       
      public function Open3366VIPViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
