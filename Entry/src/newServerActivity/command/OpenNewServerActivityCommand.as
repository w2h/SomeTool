package newServerActivity.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenNewServerActivityCommand extends NarutoCommand
   {
       
      public var activityID:int;
      
      public function OpenNewServerActivityCommand(param1:int = 0)
      {
         this.activityID = param1;
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NEW_SERVER_ACTIVITY;
      }
   }
}
