package newServerActivity.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class CloseNewServerActivityCommand extends NarutoCommand
   {
       
      public function CloseNewServerActivityCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NEW_SERVER_ACTIVITY;
      }
   }
}
