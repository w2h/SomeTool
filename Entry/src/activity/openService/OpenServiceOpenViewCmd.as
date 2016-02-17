package activity.openService
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenServiceOpenViewCmd extends NarutoCommand
   {
       
      public function OpenServiceOpenViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
