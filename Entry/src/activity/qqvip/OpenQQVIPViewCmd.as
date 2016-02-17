package activity.qqvip
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenQQVIPViewCmd extends NarutoCommand
   {
       
      public function OpenQQVIPViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
