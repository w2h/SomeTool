package activity.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenOnlineAwardViewCmd extends NarutoCommand
   {
       
      public function OpenOnlineAwardViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
