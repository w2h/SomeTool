package activity.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class QueryOnlineAwardCmd extends NarutoCommand
   {
       
      public function QueryOnlineAwardCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
